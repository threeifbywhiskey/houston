#include <stdio.h>
#include <stdlib.h>

int pf(int n)
{
	int i, f = 0, p;

	if (n % 2 == 0) {
		++f;
		while (n % 2 == 0)
			n /= 2;
	}

	p = 3;

	while (n > 1) {
		if (n % p == 0) {
			++f;
			while (n % p == 0)
				n /= p;
		}
		p += 2;
	}

	return f;
}

int main(void)
{
	int i = 3;

	while (i += 4)
		if (pf(i) == 4 && pf(i + 1) == 4 && pf(i + 2) == 4 && pf(i + 3) == 4)
			break;

	printf("%d\n", i);
	return 0;
}
