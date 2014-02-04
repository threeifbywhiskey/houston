#include <stdio.h>
#include <stdlib.h>
#include <gmp.h>

int main(void)
{
	int i, a, b, ns = 0, uniq = 0;
	mpz_t n, nums[9801];

	for (a = 2; a <= 100; ++a) {
		for (b = 2; b <= 100; ++b) {
			mpz_ui_pow_ui(n, a, b);
			mpz_init_set(nums[ns++], n);
		}
	}

	qsort(nums, 9801, sizeof(*nums), (__compar_fn_t) mpz_cmp);

	for (i = 0; i < 9801; ++i)
		if (mpz_cmp(nums[i], nums[i - 1]))
			++uniq;

	printf("%d\n", uniq);
	return 0;
}
