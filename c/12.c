#include <stdio.h>
#include <stdlib.h>

int divisors(int n)
{
	int i, f = 0, *factors = malloc(0);

	if (n % 2 == 0) {
		while (n % 2 == 0) {
			factors = realloc(factors, ++f * sizeof(int));
			factors[f - 1] = 2;
			n /= 2;
		}
	}

	int p = 3;
	while (n > 1) {
		if (n % p == 0) {
			while (n % p == 0) {
			factors = realloc(factors, ++f * sizeof(int));
			factors[f - 1] = p;
			n /= p;
			}
		}
		p += 2;
	}

	int ct = 1, divs = 1, prev = *factors;
	for (i = 1; i < f; ++i) {
		if (factors[i] == prev)
			++ct;
		else {
			divs *= ++ct;
			ct = 1;
		}
		prev = factors[i];
	}

	return divs * ++ct;
}

int main(void)
{
	int n = 1, p = 1;
	while (divisors(n += p += 1) < 500);

	printf("%d\n", n);
	return 0;
}
