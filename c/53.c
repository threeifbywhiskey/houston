#include <stdio.h>
#include <gmp.h>

void fact(mpz_t res, int n)
{
	int i;
	mpz_set_ui(res, n);

	for (i = 2; i < n; ++i)
		mpz_mul_ui(res, res, i);

	if (n < 2)
		mpz_set_ui(res, 1);
}

int main(void)
{
	int n, r, total = 0;
	mpz_t fn, fr, fnr;
	mpz_init(fn);
	mpz_init(fr);
	mpz_init(fnr);

	for (n = 1; n <= 100; ++n) {
		for (r = 1; r <= n; ++r) {
			fact(fn, n);
			fact(fr, r);
			fact(fnr, n - r);
			mpz_mul(fr, fr, fnr);
			mpz_fdiv_q(fn, fn, fr);
			if (mpz_cmp_ui(fn, 1000000) > 0)
				total++;
		}
	}

	printf("%d\n", total);
	return 0;
}
