#include <stdio.h>
#include <string.h>

char *basestr(int n, int base)
{
	int i, orig = n, sz = 0;
	do ++sz; while (n /= base);

	char buf[sz + 1];
	buf[sz] = 0;

	for (i = --sz; i >= 0; --i, orig /= base)
		buf[i] = orig % base + '0';

	return strdup(buf);
}

int palin(char *s)
{
	int i, len = strlen(s);
	for (i = 0; i < len / 2; ++i)
		if (s[i] != s[len - i - 1])
			return 0;
	return 1;
}

int main(void)
{
	int i, sum = 0;

	for (i = 1; i < 1e6; ++i)
		sum += palin(basestr(i, 10)) && palin(basestr(i, 2)) ? i : 0;

	printf("%d\n", sum);
	return 0;
}
