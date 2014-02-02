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

int main(void)
{
	int i = 1, p = 1;

	while (i += 2) {
		p += prime(i);
		if (p == 10001)
			break;
	}

	printf("%d\n", i);
	return 0;
}
