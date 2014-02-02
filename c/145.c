#include <stdio.h>

int reversible(long n)
{
	long orig = n, reverse = 0, sum;

	if (n % 10 == 0)
		return 0;

	while (n) {
		reverse = reverse * 10 + n % 10;
		n /= 10;
	}

	sum = orig + reverse;

	do {
		if ((sum % 10) % 2 == 0)
			return 0;
	} while (sum /= 10);

	return 1;
}

int main(void)
{
	int i, rev = 0;

	for (i = 0; i < 1e9; ++i)
		rev += reversible(i);

	printf("%d\n", rev);
	return 0;
}
