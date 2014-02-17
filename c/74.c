#include <stdio.h>
#include <stdlib.h>

int fact(int n)
{
	return n < 2 ? 1 : n * fact(n - 1);
}

int facsum(int n)
{
	int sum = 0;
	do sum += fact(n % 10); while (n /= 10);
	return sum;
}

int include(int *ns, int n, int len)
{
	int i;
	for (i = 0; i < len; ++i)
		if (ns[i] == n)
			return 1;
	return 0;
}

int chain_length(int n)
{
	int ns = 1, *nums = malloc(sizeof(int));
	nums[0] = n;

	while (n = facsum(n)) {
		if (include(nums, n, ns))
			break;
		nums = realloc(nums, ++ns * sizeof(int));
		nums[ns - 1] = n;
	}

	return ns;
}

int main(void)
{
	int i, total = 0;

	for (i = 1; i < 1e6; ++i)
		total += chain_length(i) == 60;

	printf("%d\n", total);
	return 0;
}
