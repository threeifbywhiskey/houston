#include <stdio.h>

int main(void)
{
	int i = 0, n = 1, off = 0;
	char buf[1000010];

	while (off < 1e6)
		off += sprintf(buf + off, "%d", ++i);

	for (i = 1; i <= 1e6; i *= 10)
		n *= buf[i - 1] - '0';

	printf("%d\n", n);
	return 0;
}
