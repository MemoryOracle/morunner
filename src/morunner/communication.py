#!/usr/bin/env python
# -*- encoding UTF-8 -*-
"""
@package morunner

Defines the message passing format between *internal* portions of the runner,
as well as the message broker.

Keep in mind, gdb is NOT thread safe.  Thus we can only safely run gdb.*
functions in one thread/process.  Nevertheless, there is quite a bit of
processing to do in some cases, and some events run long (e.g.
extracting/dispatching large sections of memory).  We don't want to "stop the
world" every time we find a large object, so we *do* use multiple processes
(and even threads, but only in one very specific case).

The overall motivation for the message passing architecture is simple:
I have experimented with multiple ways of extracting information
from the inferior process, and this is the only one which meets my design
goals.

1. The runner (and all other portions of MO) should be as modular as possible.
I don't think I need to defend this goal.

2. The runner (and most other portions of MO) should be extensible.  You are
likely more creative than I am... so go have good ideas and make them reality.
I will be happy if MO is helpful in that regard.

3. The runner should be as simple as possible.  Again, this is fairly obvious.

4. The runner should be fast, but this is normally a secondary goal to code
clarity / maintainability and rapidly expanding functionality.

TODO: Say about this later.
"""

#-------------------------
# Standard Library Imports
#-------------------------
import multiprocessing
import multiprocessing.connection
import queue
import threading
import typing # needed for type checking

#-------------------------
# External Library Imports
#-------------------------

#--------------
# Local Imports
#--------------
import identity
import message


class _Transmitter(identity.Unique):

    def __init__(self) -> None:
        super().__init__()
        self._connection = None

    def connect(self,
                connection: multiprocessing.connection.Connection
               ) -> None:
        self._connection = connection

    @property
    def connection(self):
        return self._connection


class Publisher(_Transmitter):

    def produce(self, message: message.BaseMessage) -> None:
        """
        Produce a message for the broadcaster.
        """
        if self.connection is not None:
            self.connection.send(message)


class Subscriber(_Transmitter):

    def listen(self) -> None:
        """
        Listen for messages from the broadcaster.
        """
        while self.connection:
            for ready_connection in multiprocessing.connection.wait([self.connection]):
                message = ready_connection.recv()
                # TODO: Deal with message
                # print("got a ", x)

    @classmethod
    def is_interested(cls, message: message.BaseMessage) -> bool:
        """
        Override this method to make your subscriber only collect the messages
        it cares about.
        """
        raise NotImplementedError("Subscriber must be subclassed!")


class Broadcaster(identity.Unique):

    def __init__(self) -> None:
        super().__init__()
        self._publishers = dict() # type: Dict[Publisher, multiprocessing.connection.Connection]
        self._subscribers = dict() # type: Dict[Subscriber, multiprocessing.connection.Connection]
        # queue of messages which have been accepted but not yet transmitted
        self._holding = queue.Queue()

        # self._listener is responsible for collecting (and placing in
        # self._holding) all the publisher messages
        self._listener = threading.Thread(target=Broadcaster.collect, args=(self,))

        # self._announcer is responsible for distributing all messasges from
        # self._holding to the *interested* subscribers
        self._announcer = threading.Thread(target=Broadcaster.broadcast, args=(self,))

    def add_publisher(self, publisher: Publisher) -> multiprocessing.connection.Connection:
        """
        Add a Publisher to send messages to this Broadcaster.
        """
        if publisher in self._publishers:
            raise ValueError("Already have that publisher")
        recv, send = multiprocessing.Pipe(duplex=False)
        self._publishers[publisher] = recv
        return send

    def add_subscriber(self, subscriber: Subscriber) -> multiprocessing.connection.Connection:
        """
        Add a Subscriber to recieve messages from this Broadcaster.
        """
        if subscriber in self._subscribers:
            raise ValueError("Already have that subscriber")
        recv, send = multiprocessing.Pipe(duplex=False)
        self._subscribers[subscriber] = send
        return recv

    def collect(self):
        while True:
            inbound = list(self._publishers.values())
            for p in multiprocessing.connection.wait(inbound):
                try:
                    msg = p.recv_bytes()
                    self._holding.put(msg)
                except EOFError:
                    inbound.remove(p)

    def broadcast(self):
        while True:
            msg = self._holding.get()
            outbound = list(self._subscribers.values())
            for s in outbound:
                s.send_bytes(msg)
            self._holding.task_done()

    def run(self) -> None:
        self._listener.start()
        self._announcer.start()


# generated = 0
# initial = time.clock()
# quantity = 50000

# def generate(pub):
#     global generated
#     global initial
#     global quantity
#     global test_size
#     for i in range(quantity):
#         pub.produce(message=None)
#         generated += 1
#         if (generated % 1000) == 0:
#             print("Rate: ", test_size * generated / (time.clock() - initial))
#     return "All done generating"

# def consume(sub):
#     global quantity
#     for i in range(quantity):
#         sub.recieve()
#     return "All done consuming"

# def publisher_factory(broadcaster):
#     pub = Publisher()
#     pub_con = broadcaster.add_publisher(pub)
#     pub.connect(pub_con)
#     return pub

# def subscriber_factory(broadcaster):
#     sub = Subscriber()
#     sub_con = broadcaster.add_subscriber(sub)
#     sub.connect(sub_con)
#     return sub

# def done(whatever):
#     print("All done")

# def main():

#     broadcaster = Broadcaster()
#     publishers = [publisher_factory(broadcaster) for i in range(2)]
#     subscribers = [subscriber_factory(broadcaster) for i in range(3)]
#     with multiprocessing.Pool() as pool:
#         # async_results = []
#         gasy = pool.map_async(generate, publishers, callback=done)
#         casy = pool.map_async(consume, subscribers, callback=done)
#         broadcaster.run()
#         pool.close()
#         pool.join()
#     print("over")


# if __name__ == "__main__":
#     main()
