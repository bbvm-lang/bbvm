#define BBVM_HEADER
#define BBVM_STD
#define BBVM_VM

#include <iostream>
#include <cmath>
#include <cstdlib>
#include <cctype>
#include <ctime>



#ifndef BBVM_COMPILER
#define BBVM_COMPILER
#define BBVM_START
namespace bbvm{}
#define BBVM_END
#endif
