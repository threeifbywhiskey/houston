#include <stdio.h>
#include <math.h>

int prime(int n)
{
	int i;

	if (n % 2 == 0)
		return 0;

	for (i = 3; i <= sqrt(n); i += 2)
		if (n % i == 0)
			return 0;

	return 1;
}

int pandigital(int n)
{
	int i;
	char cts[10] = {0};

	do ++cts[n % 10]; while (n /= 10);

	for (i = 1; i < 8; ++i)
		if (!cts[i])
			return 0;

	return 1;
}

int main(void)
{
	int i = 10000000;

	while (--i)
		if (prime(i) && pandigital(i))
			break;

	printf("%d\n", i);
	return 0;
}
