#include <stdio.h>

int main(void)
{
	int a, b, c = 0;

	for (a = 5; a < 1000; a += 5)
		for (b = 5; b < 1000 - a; c = 1000 - a - (b += 5))
			if (a * a + b * b == c * c)
				return printf("%d\n", a * b * c);

	return 0;
}
