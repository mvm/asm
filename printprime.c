#include <stdio.h>
extern void primes(unsigned int n, unsigned int *buf);

unsigned int buffer[500];

int main()
{
  primes(500, buffer);

  for(int i = 0; i < 500; i += 8) {
    for(int j = 0; j < 8 && (i + j) < 500; j++) {
      printf("%5d ", buffer[i + j]);
    }
    printf("\n");
  }
  return 0;
}
