#include <stdio.h>
#include <string.h>
#include <gmp.h>

int palin(char *s)
{
	int i, len = strlen(s);
	for (i = 0; i < len / 2; ++i)
		if (s[i] != s[len - i - 1])
			return 0;
	return 1;
}

void reverse(char *s)
{
	int i, len = strlen(s);
	char tmp;

	for (i = 0; i < len / 2; ++i) {
		tmp = s[len - i - 1];
		s[len - i - 1] = s[i];
		s[i] = tmp;
	}
}

int lychrel(mpz_t n)
{
	int i;
	mpz_t tmp;
	mpz_init(tmp);

	for (i = 0; i < 50; ++i) {
		char buf[mpz_sizeinbase(n, 10) + 2];
		mpz_get_str(buf, 10, n);

		reverse(buf);
		mpz_set_str(tmp, buf, 10);
		mpz_add(n, n, tmp);

		char ns[mpz_sizeinbase(n, 10) + 2];
		mpz_get_str(ns, 10, n);

		if (palin(ns))
			return 0;
	}

	return 1;
}

int main(void)
{
	int i, total = 0;
	mpz_t n;
	mpz_init(n);

	for (i = 1; i < 10000; ++i) {
		mpz_set_ui(n, i);
		if (lychrel(n))
			total++;
	}

	printf("%d\n", total);
	return 0;
}
