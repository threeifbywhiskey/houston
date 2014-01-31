#include <stdio.h>
#include <math.h>

int main(void)
{
	int i, a, b, line;
	double max = 0, prod;
	FILE *input = fopen("houston/input/99", "r");

	for (i = 0; i < 1000; ++i) {
		fscanf(input, "%d", &a);
		fseek(input, 1, SEEK_CUR);
		fscanf(input, "%d", &b);
		fseek(input, 1, SEEK_CUR);

		prod = log(a) * b;
		if (prod > max)
			max = prod, line = i;
	}

	printf("%d\n", ++line);
	return 0;
}
