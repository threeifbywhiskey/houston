#include <stdio.h>

int sos(int n)
{
	int sum = 0;
	do sum += (n % 10) * (n % 10); while (n /= 10);
	return sum;
}

int arrive89(int n)
{
	while (n != 1 && n != 89)
		n = sos(n);
	return n == 89;
}

int main(void)
{
	int i = 0, ns = 0;
	while (++i < 1e5)
		ns += arrive89(i);

	printf("%d\n", ns);
	return 0;
}
