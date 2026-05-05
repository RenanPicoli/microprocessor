#ifndef STDINT_H
    #define STDINT_H
#endif

typedef unsigned int  uint32_t;
typedef signed int    int32_t;

//useful when you need to treat a float as integer (based on its encoding)
typedef union {
  int i;
  float f;
 } word;
