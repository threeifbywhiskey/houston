#include <stdio.h>

int main(void)
{
	int i, j, k, max = 0, nums[400], prod;
	FILE *input = fopen("../input/11", "r");

	for (i = 0; i < 400; ++i)
		fscanf(input, "%d", nums + i);

	for (i = 0; i < 400; ++i) {
		for (j = 19; j < 22; ++j) {
			prod = 1;
			for (k = 0; k <= j * 3; k += j)
				prod *= i + k >= 400 ? 1 : nums[i + k];
			if (prod > max)
				max = prod;
		}
	}

	printf("%d\n", max);
	return 0;
}
