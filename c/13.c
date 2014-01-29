#include <stdio.h>
#include <gmp.h>

int main(void)
{
	int i;
	char buf[11];
	FILE *nums = fopen("../input/13", "r");

	mpz_t sum, tmp;
	mpz_init(sum);
	mpz_init(tmp);

	gmp_fscanf(nums, "%Zd", sum);
	for (i = 0; i < 99; ++i) {
		gmp_fscanf(nums, "%Zd", tmp);
		mpz_add(sum, sum, tmp);
	}

	gmp_snprintf(buf, 11, "%Zd", sum);
	printf("%s\n", buf);

	fclose(nums);
	return 0;
}
