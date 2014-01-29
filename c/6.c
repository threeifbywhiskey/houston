#include <stdio.h>

int main(void)
{
	int i, sumsq = 0, sqsum = 50 * 50 * 101 * 101;

	for (i = 1; i <= 100; ++i)
		sumsq += i * i;

	printf("%d\n", sqsum - sumsq);
	return 0;
}
