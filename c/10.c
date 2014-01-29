#include <stdio.h>
#include <math.h>

int prime(int n)
{
	int i;

	if (n % 2 == 0)
		return 0;

	for (i = 3; i <= sqrt(n); ++i)
		if (n % i == 0)
			return 0;

	return 1;
}

int main(void)
{
	int i;
	long sum = 0;

	for (i = 3; i < 2000000; i += 2)
		if (prime(i))
			sum += i;

	printf("%ld\n", sum + 2);
	return 0;
}
