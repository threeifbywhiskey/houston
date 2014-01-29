#include <stdio.h>

int factorial(int n)
{
	int i, fac = 1;

	if (n < 2)
		return fac;

	for (i = 2; i <= n; ++i)
		fac *= i;

	return fac;
}

int facsum(int n)
{
	int sum = 0;

	do sum += factorial(n % 10); while (n /= 10);

	return sum;
}

int main(void)
{
	int i, sum = 0;

	for (i = 3; i < 42000; ++i)
		if (i == facsum(i))
			sum += i;

	printf("%d\n", sum);
	return 0;
}
