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
	int n = 20;
	mpz_t a, b;
	mpz_init(a);
	mpz_init(b);

	fact(a, n * 2);
	fact(b, n);
	mpz_pow_ui(b, b, 2);
	mpz_fdiv_q(a, a, b);

	mpz_out_str(stdout, 10, a);
	puts("");
	return 0;
}
