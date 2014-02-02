#include <stdio.h>

int collatz(long n)
{
	int len = 0;
	while (++len, n != 1)
		n = n % 2 ? n * 3 + 1 : n / 2;
	return len;
}
int main(void)
{
	int i, len, max, maxlen = 0;

	for (i = 1; i < 1e6; ++i) {
		len = collatz(i);
		if (len > maxlen)
			maxlen = len, max = i;
	}

	printf("%d\n", max);
	return 0;
}
