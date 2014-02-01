#include <stdio.h>

int ascending(int n)
{
	int last = n % 10;
	while (n /= 10) {
		if (n % 10 > last)
			return 0;
		last = n % 10;
	}
	return 1;
}

int descending(int n)
{
	int last = n % 10;
	while (n /= 10) {
		if (n % 10 < last)
			return 0;
		last = n % 10;
	}
	return 1;
}

int bouncy(int n)
{
	return !ascending(n) && !descending(n);
}

int main(void)
{
	int b = 0, n = 0;

	while (b / (double) n != 0.99)
		b += bouncy(++n);

	printf("%d\n", n);
	return 0;
}
