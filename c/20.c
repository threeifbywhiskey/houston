#include <stdio.h>
#include <gmp.h>

size_t mpz_digitsum(mpz_t op)
{
	size_t i, len, sum = 0;
	FILE *null = fopen("/dev/null", "w");

	len = mpz_out_str(null, 10, op);
	char buf[len + 1];
	gmp_sprintf(buf, "%Zd", op);

	for (i = 0; i < len; ++i)
		sum += buf[i] - '0';

	fclose(null);
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
