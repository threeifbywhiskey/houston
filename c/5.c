#include <stdio.h>

int main(void)
{
	long m = 5040;

	while (m % 11 || m % 13 || m % 14 || m % 17 || m % 19 || m % 20)
		m += 5040;

	printf("%ld\n", m);
	return 0;
}
