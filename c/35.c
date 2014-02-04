#include <stdio.h>
#include <math.h>

int prime(int n)
{
	int i;

	if (n == 2)
		return 1;

	if (n % 2 == 0)
		return 0;

	for (i = 3; i <= sqrt(n); i += 2)
		if (n % i == 0)
			return 0;

	return 1;
}

int circular(int n)
{
	int i, digs = 0, dup = n, mag = 1;

	if (!prime(n))
		return 0;

	while (++digs, dup /= 10)
		mag *= 10;

	for (i = 0; i < digs - 1; ++i) {
		n = (n % 10) * mag + (n / 10);
		if (!prime(n))
			return 0;
	}

	return 1;
}

int main(void)
{
	int i, total = 0;

	for (i = 2; i < 1e6; ++i)
		if (circular(i))
			++total;

	printf("%d\n", total);
	return 0;
}
