#!/usr/bin/env python
# -*- encoding UTF-8 -*-
"""
@package morunner
This module contains the base classes which are used to assign useful (hidden) id values
to their instances.
"""

# Standard Library Imports
import uuid
import typing


class Identified(object):
    """
    Identified is a base class for other identity classes in this module.  You
    can directly use it to define other identity classes if you like, but try
    not to rely on its internal mechanics, as these are far from final.

    The goal of this  is to prevent the user from even needing to consider
    the means by which the identity is assigned, the member variable to which
    it is assigned, or anything about it.  Please do not attempt to even access
    the identity value.  Just use the hash function if you truly need a unique
    id number for your object, as the identity implementation could (in theory)
    change in incompatible ways.
    """

    def __init__(self,
                 identity_function: typing.Callable[[], typing.Hashable]
                ) -> None:
        """
        Invoke identity_function to construct the identity of this instance.

        @param identity_function a nullary function used to assign an identity
        to this instance.
        """
        self.__identity = hash(identity_function())

    def __hash__(self) -> int:
        """
        Return a hash which is *only* a function of the identity assigned at
        __init__.

        @return <int> The hash of the value returned by identity_function() at init.
        """
        return self.__identity

    def __eq__(self, rhs: 'Identified') -> bool:
        """
        Equivalence check between two Identified objects.

        @return <bool> The equivalence of self and rhs.
        """
        return isinstance(rhs, Identified) and (hash(self) == hash(rhs))



class Unique(Identified):
    """
    Assigns a (globally) unique id tag to every instance in __init__.
    """

    def __init__(self) -> None:
        """
        Passes a function (currently uuid.uuid4) to the Identified.__init__
        call.  This has the effect of giving every instance of unique a
        different hash value.
        """
        super(Unique, self).__init__(uuid.uuid4)
