#include <stdio.h>
#include <math.h>

int prime(int n)
{
	int i;
	n = n < 0 ? -n : n;

	if (n % 2 == 0)
		return 0;

	for (i = 3; i <= sqrt(n); ++i)
		if (n % i == 0)
			return 0;

	return 1;
}

int main(void)
{
	int a, b, n, max = 0, maxprod;

	for (a = -999; a <= 999; ++a) {
		for (b = -999; b <= 999; ++b) {
			n = 0;
			while (prime(n * n + a * n + b))
				++n;
			if (n > max)
				max = n, maxprod = a * b;
		}
	}

	printf("%d\n", maxprod);

	return 0;
}
