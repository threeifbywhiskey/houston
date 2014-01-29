#include <stdio.h>
#include <gmp.h>

int main(void)
{
	int i;
	mpz_t a, b;

	mpz_init_set_ui(a, 1);
	mpz_init_set_ui(b, 1);

	for (i = 2; mpz_sizeinbase(a, 10) < 1000; i += 2) {
		mpz_add(a, a, b);
		mpz_add(b, b, a);
	}

	printf("%d\n", i);
	return 0;
}
