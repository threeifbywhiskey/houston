#include <stdio.h>
#include <gmp.h>

int main(void)
{
	mpz_t res, sq;
	mpz_init_set_ui(res, 1);
	mpz_init(sq);

	int i;
	for (i = 2; i <= 1000; ++i) {
		mpz_ui_pow_ui(sq, i, i);
		mpz_add(res, res, sq);
	}

	size_t len = mpz_sizeinbase(res, 10);
	char buf[len + 1];
	gmp_sprintf(buf, "%Zd", res);

	printf("%s\n", buf + len - 10);
	return 0;
}
