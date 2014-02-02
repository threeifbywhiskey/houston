#include <stdio.h>

int samedig(int a, int b)
{
	int i;
	char as[10] = {0}, bs[10] = {0};

	do ++as[a % 10]; while (a /= 10);
	do ++bs[b % 10]; while (b /= 10);

	for (i = 0; i < 10; ++i)
		if (as[i] != bs[i])
			return 0;

	return 1;
}

int main(void)
{
	int i = 100000, j, found;

	while (++i) {
		found = 1;
		for (j = 2; j <= 6; ++j)
			found *= samedig(i, i * j);
		if (found)
			break;
	}

	printf("%d\n", i);
	return 0;
}
