#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int pandigital(int n, int m, int p)
{
	int i;
	char buf[16], digs[10] = {0};

	sprintf(buf, "%d%d%d", n, m, p);

	for (i = 0; i < strlen(buf); ++i) {
		if (buf[i] == '0')
			return 0;
		++digs[buf[i] - '0'];
	}

	for (i = 1; i < 10; ++i)
		if (digs[i] != 1)
			return 0;

	return 1;
}

int intcmp(const void *a, const void *b)
{
	return *(int *) a - *(int *) b;
}

int main(void)
{
	int i, j;
	int prev, sum;
	int ps = 0, *prods = malloc(0);

	for (i = 1; i < 10; ++i) {
		for (j = 1234; j < 9876; ++j) {
			if (pandigital(i, j, i * j)) {
				prods = realloc(prods, ++ps * sizeof(int));
				prods[ps - 1] = i * j;
			}
		}
	}

	for (i = 12; i < 98; ++i) {
		for (j = 123; j < 987; ++j) {
			if (pandigital(i, j, i * j)) {
				prods = realloc(prods, ++ps * sizeof(int));
				prods[ps - 1] = i * j;
			}
		}
	}

	qsort(prods, ps, sizeof(int), intcmp);
	prev = sum = *prods;

	for (i = 1; i < ps; ++i) {
		if (prods[i] != prev)
			sum += prods[i];
		prev = prods[i];
	}

	printf("%d\n", sum);
	return 0;
}
