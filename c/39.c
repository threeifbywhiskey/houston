#include <stdio.h>
#include <math.h>

int rights(int p)
{
	int a, sols = 0;
	for (a = 1; a <= 1000; ++a)
		sols += fmod((p * p - 2 * p * a) / (float) (2 * p - 2 * a), 1) == 0;
	return sols;
}

int main(void)
{
	int i, max, maxsols = 0, sols;

	for (i = 120; i < 1000; ++i) {
		sols = rights(i);
		if (sols > maxsols)
			maxsols = sols, max = i;
	}

	printf("%d\n", max);
	return 0;
}
