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
	mpz_t res;

	mpz_init(res);
	mpz_ui_pow_ui(res, 2, 1000);

	printf("%zd\n", mpz_digitsum(res));
	return 0;
}
