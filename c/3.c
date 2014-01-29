#include <stdio.h>

int main(void)
{
	long n = 600851475143;
	int  m = 1;

	while (n > 1)
		if (n % (m += 2) == 0)
			n /= m;

	printf("%d\n", m);
	return 0;
}
