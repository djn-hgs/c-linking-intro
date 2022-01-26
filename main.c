#include <stdio.h>
#include "div.c"
#include "mult.c"

int main(void) {

  float a = 2;
  float b = 7;

  float c = simpleDiv(a, b);
  float d = simpleMult(a, b);

  printf("%f divided by %f is %f\n", a, b , c);
  printf("%f multiplied by %f is %f\n", a, b , d);

  return 0;
}
