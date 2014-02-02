#include <stdio.h>

int main(void)
{
	int i, j, t = 1, c = 1, a = 2;

	for (i = 0; i < 500; ++i, a += 2)
		for (j = 0; j < 4; ++j)
			t += c += a;

	printf("%d\n", t);
	return 0;
}
