/*!
 *  @file   theTest.cpp
 *  @brief  Doing my test
 *
 *  Some more detailed description
 *
 *  @author  Daniel Noland (DN), mehner.fritz@fh-swf.de
 *
 *  @internal
 *       Created:  02/02/2015
 *       Version:  -1
 *      Revision:  none
 *      Compiler:  g++
 *  Organization:  University of Colorado at Boulder
 *     Copyright:  Copyleft (ɔ) 2015, Daniel Noland
 *
 * LICENSE: full text available at http://bit.ly/1kwO2IJ
 *
 * THE WORK IS PROVIDED UNDER THE TERMS OF THIS CREATIVE COMMONS PUBLIC LICENSE
 * ("CCPL" OR "LICENSE"). THE WORK IS PROTECTED BY COPYRIGHT AND/OR OTHER
 * APPLICABLE LAW. ANY USE OF THE WORK OTHER THAN AS AUTHORIZED UNDER THIS
 * LICENSE OR COPYRIGHT LAW IS PROHIBITED.
 *
 * BY EXERCISING ANY RIGHTS TO THE WORK PROVIDED HERE, YOU ACCEPT AND AGREE TO
 * BE BOUND BY THE TERMS OF THIS LICENSE. TO THE EXTENT THIS LICENSE MAY BE
 * CONSIDERED TO BE A CONTRACT, THE LICENSOR GRANTS YOU THE RIGHTS CONTAINED
 * HERE IN CONSIDERATION OF YOUR ACCEPTANCE OF SUCH TERMS AND CONDITIONS.
 *
 */

#include <cstdlib>
#include <cstddef>
#include <fcntl.h>
#include <fstream>
#include <iostream>
#include <map>
#include <stdint.h>
#include <stdio.h>
#include <string>
#include <sys/stat.h>
#include <unistd.h>
#include <vector>

/* #include "valgrind/valgrind.h" */
/* #include <boost/python.hpp> */

struct SomeStruct {
   int a;
   int b;
   int c;
};

class SomeClass {

   public:

      int a;
      int b;
      double c;

   public:

      int* d;
      float e;

   public:

      SomeClass() {
         /* std::cout << "SomeClass ctor called" << std::endl; */
         a = 1;
         b = 2;
         c = 3.14;
         d = new int[5];
         e = 2.17;
      }

      ~SomeClass() {
         /* std::cout << "SomeClass dtor called" << std::endl; */
         delete[] d;
      }

      int get_a() {
         return a;
      }
      int get_b() {
         return b;
      }
      double get_c() {
         return c;
      }
      void set_c(double _c) {
         c = _c;
      }
};

class SomeChildClass : public SomeClass {

   public:

      int* x;
      int y;

   public:

      double z;

   public:

      SomeChildClass() {
         /* std::cout << "SomeChildClass ctor called" << std::endl; */
         x = new int[8];
         y = 2;
         z = 7.23;
      }

      ~SomeChildClass() {
         /* std::cout << "SomeChildClass dtor called" << std::endl; */
         delete[] x;
      }

};

int do_something(int a) {
   int b = 4;
   return a + b;
}

int do_something_else(const int* const ary, const int LEN) {
   int sum = 0;
   for(int i = 0; i < LEN; ++i) {
      sum += ary[i];
   }
   return sum;
}

int* dynamic_copy(const int* const ary, const int LEN) {
   /* std::cout << "in dynamic_copy" << std::endl; */
   int* cpy = new int[LEN];
   for (int i = 0; i < LEN; ++i) {
      cpy[i] = ary[i];
   }
   return cpy;
}

int waste_time() {
   int a = 4;
   int b = 2;
   int c = a + b;
   float d = c / a;
   d += 2.17;
   a = 2;
   d /= a;
   return (int) d;
}

int waste_more_time() {
   try {
      waste_time();
      throw std::exception();
   } catch (std::exception e) {
      std::cout << e.what() << std::endl;
   }
   return waste_time();
}

/* bool is_running_on_valgrind(void) { */
/*    return static_cast<bool>(RUNNING_ON_VALGRIND); */
/* } */

/* void monitor_fds(void) { */
/*    int notRec = VALGRIND_MONITOR_COMMAND("v.info open_fds"); */
/*    if (notRec) { */
/*       std::cout << "command not recognised" << std::endl; */
/*    } else { */
/*       std::cout << "command RECOGNISED" << std::endl; */
/*    } */
/* } */

unsigned long fact(const unsigned long n) {
   return n ? n * fact(n - 1) : 1;
}

/* BOOST_PYTHON_MODULE(hello_ext) { */
/*    using namespace boost::python; */
/*    def("cfact", fact); */
/* } */

unsigned long fib(const unsigned long n) {
   if (n <= 1) {
      return 0;
   }
   if (n == 2) {
      return 1;
   }
   unsigned long x = fib(n - 1) + fib(n - 2);
   return x;
}

void stupid_waste(const unsigned long n) {
   int* a = new int[n];
}

void really_stupid_waste() {
   for (int i = 0; i < (1 << 5); ++i) {
      stupid_waste(i);
   }
}

int main(int argc, char *argv[]) {
   uint8_t x = 2;
   std::cout << "current val for x: " << x << std::endl;
   std::cout << "enter new val for x: ";
   /* std::cin >> x; */
   std::cout << std::endl;
   SomeClass y;
   try {
      throw 4;
   } catch (int e) {
      std::cout << "I got a " << e << std::endl;
   }
   /* monitor_fds(); */
   y.set_c(2.17);
   const uint64_t SIZE = sizeof(SomeClass);
   /* std::cout << "Running on " << is_running_on_valgrind() << " layers of valgrind emulation" << std::endl; */
   volatile int a = 5;
   {
      volatile int a = 14;
      const int SOME_FAKE_VAL = 302;
      int* apple = new int[a];
      apple = new int[a];
      SomeClass* x = new SomeClass[5];
      SomeClass* z = static_cast<SomeClass*>(malloc(5*sizeof(SomeClass)));
   }
   std::fstream f;
   f.open("y.bin", std::ios::binary | std::ios::out | std::ios::trunc);
   char* yBin = (char*) &y;
   f.write(yBin, SIZE);
   f.close();
   yBin = new char[SIZE];
   f.open("y.bin", std::ios::binary | std::ios::in);
   f.read(yBin, SIZE);
   SomeClass* yy = (SomeClass*) yBin;
   std::cout << "yy->get_c() = " << yy->get_c() << std::endl;

   const int COUNT = 12;
   const int INT_ARRAY = 20;
   SomeStruct* structArray = new SomeStruct[COUNT];
   int* array = new int[INT_ARRAY];
   int* array2 = new int[INT_ARRAY];
   int* array4 = new int;
   std::string catParty = "hello world!";
   std::vector<int> myVector;// = { 6, 2, 3, 7, 5, 4, 1 };
   int quantity = 32;
   for (int i = 0; i < quantity; ++i) {
      myVector.push_back(i);
   }
   for (int i = 0; i < quantity; ++i) {
      really_stupid_waste();
   }
   for(int i = 0; i < COUNT; ++i) {
      structArray[i].a = 2;
      structArray[i].b = 4;
      structArray[i].c = 13;
   }
   for(int i = 0; i < INT_ARRAY; ++i) {
      array[i] = 14;
      array2[i] = 14;
   }
   int* array3 = new int[INT_ARRAY];
   for (int i = 0; i < INT_ARRAY; ++i) {
      array3[i] = i;
   }
   int q = do_something(array[0]);
   int total = do_something_else(array, INT_ARRAY);
   delete array4;
   array4 = dynamic_copy(array, INT_ARRAY);
   unsigned long someFact = fact(6);
   unsigned long someFib = fib(8);
   while( ! myVector.empty() ) {
      myVector.pop_back();
   }
   std::cout << catParty << std::endl;

   waste_more_time();
   SomeChildClass qqq = SomeChildClass();
   SomeChildClass* other = new SomeChildClass[200];

   SomeClass* oldLoc = other;
   std::cout << "sizeof SomeClass is " << sizeof(SomeClass) << std::endl;
   std::cout << "sizeof SomeChildClass is " << sizeof(SomeChildClass) << std::endl;
   std::cout << "offset of a " << offsetof(SomeClass, a) << " " << offsetof(SomeChildClass, a) << std::endl;
   std::cout << "offset of b " << offsetof(SomeClass, b) << " " << offsetof(SomeChildClass, b) << std::endl;
   std::cout << "offset of c " << offsetof(SomeClass, c) << " " << offsetof(SomeChildClass, c) << std::endl;
   std::cout << "offset of d " << offsetof(SomeClass, d) << " " << offsetof(SomeChildClass, d) << std::endl;
   std::cout << "offset of e " << offsetof(SomeClass, e) << " " << offsetof(SomeChildClass, e) << std::endl;
   std::cout << "offset of e " << offsetof(SomeClass, e) << " " << offsetof(SomeChildClass, x) << std::endl;
   std::cout << "offset of e " << offsetof(SomeClass, e) << " " << offsetof(SomeChildClass, y) << std::endl;
   std::cout << "offset of e " << offsetof(SomeClass, e) << " " << offsetof(SomeChildClass, z) << std::endl;
   std::size_t delta = 0;
   for (int i = 0; i < 20; ++i) {
      std::cout << "&other[" << i << "]  = " << &(other[i]) << std::endl;
      delta = ((std::size_t)&(other[i])) - ((std::size_t)oldLoc);
      oldLoc = &(other[i]);
      std::cout << "delta = " << delta << std::endl;
   }

   /* std::string filename = "fifo.tmp"; */

   /* int fifoError = mkfifo(filename.c_str(), S_IRWXU); */
   /* if (fifoError) { */
   /*    std::cerr << "FIFO Error: " << fifoError << std::endl; */
   /*    return EXIT_FAILURE; */
   /* } */

   /* std::ofstream out; */
   /* out.open(filename.c_str(), std::ios::binary | std::ios::app); */
   /* out.write(reinterpret_cast<char*>(myVector.data()), myVector.size()*sizeof(int)); */

   std::cout << "made it " << std::endl;
   return 0;
}

