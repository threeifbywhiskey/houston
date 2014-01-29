#include <stdio.h>

int divsum(int n)
{
	int i, sum = 0;
	for (i = 1; i <= n / 2; ++i)
		sum += n % i ? 0 : i;
	return sum;
}

int main(void)
{
	int i, ds, sum = 0;

	for (i = 2; i < 10000; ++i) {
		ds = divsum(i);
		if (i == divsum(ds) && i != ds)
			sum += i;
	}

	printf("%d\n", sum);
	return 0;
}
