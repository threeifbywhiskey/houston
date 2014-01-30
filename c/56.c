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
	int a, b, sum, max = 0;

	mpz_init(res);
	for (a = 90; a < 100; ++a) {
		for (b = 90; b < 100; ++b) {
			mpz_ui_pow_ui(res, a, b);
			sum = mpz_digitsum(res);
			if (sum > max)
				max = sum;
		}
	}

	printf("%d\n", max);
	return 0;
}
