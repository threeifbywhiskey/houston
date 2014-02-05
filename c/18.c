#include <stdio.h>

int main(void)
{
	int i, j, n, sum, max = 0;
	int nums[15][15] = {};
	FILE *input = fopen("../input/18", "r");

	for (i = 0; i < 15; ++i)
		for (j = 0; j < i + 1; ++j)
			fscanf(input, "%d", nums[i] + j);

	for (i = 0; i < 16384; ++i) {
		n = 0;
		sum = nums[0][0];
		for (j = 0; j < 14; ++j)
			sum += nums[j + 1][n += i >> j & 1];
		if (sum > max)
			max = sum;
	}

	printf("%d\n", max);
	return 0;
}
