#include <stdio.h>
#include <string.h>
#include <gmp.h>

int main(void)
{
	int a, b, ns = 0;
	char buf[25];

	mpz_t n;
	mpz_init(n);

	for (a = 1; a < 10; ++a) {
		for (b = 1; b < 25; ++b) {
			mpz_ui_pow_ui(n, a, b);
			gmp_sprintf(buf, "%Zd", n);
			ns += strlen(buf) == b;
		}
	}

	printf("%d\n", ns);
	return 0;
}
