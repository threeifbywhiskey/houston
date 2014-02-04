#include <stdio.h>
#include <math.h>

int prime(int n)
{
	int i;

	if (n < 3)
		return n - 1;

	if (n % 2 == 0)
		return 0;

	for (i = 3; i <= sqrt(n); i += 2)
		if (n % i == 0)
			return 0;

	return 1;
}

int truncatable(int n)
{
	int dup = n, mag = 10;

	if (!prime(n))
		return 0;

	while (dup /= 10)
		if (!prime(dup))
			return 0;

	dup = n;
	while (dup /= 10) mag *= 10;

	while (n) {
		mag /= 10;
		if (!prime(n))
			return 0;
		n -= n / mag * mag;
	}

	return 1;
}

int main(void)
{
	int i, sum = 0;

	for (i = 11; i < 750000; ++i)
		sum += truncatable(i) ? i : 0;

	printf("%d\n", sum);
	return 0;
}
