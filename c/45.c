#include <stdio.h>
#include <math.h>

int pentagonal(long n)
{
	return fmod((sqrt(24 * n + 1) + 1) / 6, 1) == 0;
}

int main(void)
{
	int i = 143, n;
	while (++i)
		if (pentagonal(n = i * (2 * i - 1)))
			break;

	printf("%d\n", n);
	return 0;
}
