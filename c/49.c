#include <stdio.h>
#include <math.h>

int prime(int n)
{
	int i;

	if (n % 2 == 0)
		return 0;

	for (i = 3; i < sqrt(n); i += 2)
		if (n % i == 0)
			return 0;

	return 1;
}

int samedig(int a, int b)
{
	int i;
	char as[10] = {0}, bs[10] = {0};

	do ++as[a % 10]; while (a /= 10);
	do ++bs[b % 10]; while (b /= 10);

	for (i = 0; i < 10; ++i)
		if (as[i] != bs[i])
			return 0;

	return 1;
}

int main(void)
{
	int i = 1487, j, k;

	while (++i, j = i + 3330, k = i + 6660)
		if (prime(i) && prime(j) && prime(k) && samedig(i, j) && samedig(j, k))
			break;

	printf("%d%d%d\n", i, j, k);
	return 0;
}
