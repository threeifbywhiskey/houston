#include <stdio.h>

int main(void)
{
	int a = 1, b = 1, sum = 0;

	while (b < 4000000) {
		a += b;
		sum += a % 2 ? 0 : a;
		b += a;
		sum += b % 2 ? 0 : b;
	}

	printf("%d\n", sum);
	return 0;
}
