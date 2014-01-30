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
