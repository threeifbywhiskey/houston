#include <stdio.h>
#include <string.h>
#include <gmp.h>

size_t mpz_digitsum(mpz_t op)
{
	size_t i, sum = 0;
	char buf[mpz_sizeinbase(op, 10) + 2];

	mpz_get_str(buf, 10, op);

	for (i = 0; i < strlen(buf); ++i)
		sum += buf[i] - '0';

	return sum;
}

int main(void)
{
	int i;
	mpz_t res;

	mpz_init_set_ui(res, 100);

	for (i = 2; i < 100; ++i)
		mpz_mul_ui(res, res, i);

	printf("%zd\n", mpz_digitsum(res));
	return 0;
}
