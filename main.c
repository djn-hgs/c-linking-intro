#include <stdio.h>

float simpleDiv(float a, float b) {
  return a / b;
}

float simpleMult(float a, float b) {
  return a * b;
}

int main(void) {

  float a = 2;
  float b = 7;

  float c = simpleDiv(a, b);
  float d = simpleMult(a, b);

  printf("%f divided by %f is %f\n", a, b , c);
  printf("%f multiplied by %f is %f\n", a, b , d);

  return 0;
}
