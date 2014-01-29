#include <stdio.h>

int palin(int n)
{
	return n / 100000 == n % 10 &&
		n % 100000 / 10000 == n % 100 / 10 &&
		n % 10000 / 1000 == n % 1000 / 100;
}

int main(void)
{
	int m, n, prod, max = 0;

	for (m = 900; m < 1000; ++m)
		for (n = 900; n < 1000; prod = m * ++n)
			if (prod > max && palin(prod))
				max = prod;

	printf("%d\n", max);
	return 0;
}
