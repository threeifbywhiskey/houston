#include <stdio.h>
#include <math.h>

int solution(int n)
{
	int orig = n, sum = 0;
	do sum += pow(n % 10, 5); while (n /= 10);
	return sum == orig;
}

int main(void)
{
	int i, sum = 0;

	for (i = 2; i < 200000; ++i)
		sum += solution(i) ? i : 0;

	printf("%d\n", sum);
	return 0;
}
