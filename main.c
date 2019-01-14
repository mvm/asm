#include <stdio.h>
extern void primes(unsigned int n, unsigned int *buf);

unsigned int buffer[500];

int main()
{
  primes(500, buffer);

  for(int i = 0; i < 500; i++) {
    printf("%d ", buffer[i]);
  }
  printf("\n");
  return 0;
}
