#include <stdio.h>

int main(void)
{
	int i, sum = 0;

	for (i = 3; i < 1000; ++i)
		sum += i % 3 * i % 5 ? 0 : i;

	printf("%d\n", sum);
	return 0;
}
