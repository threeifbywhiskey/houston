#include <stdio.h>


int ones[] = {0, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 7, 7, 9, 8, 8};
int tens[] = {0, 3, 6, 6, 5, 5, 5, 7, 6, 6};

int letters(int n)
{
	if (n < 20)
		return ones[n];
	if (n % 10 == 0 && n < 100)
		return tens[n / 10];
	if (n < 100)
		return tens[n / 10] + ones[n % 10];
	return ones[n / 100] + (n % 100 ? 10 : 7) + letters(n % 100);
}

int main(void)
{
	int i, sum = 0;

	for (i = 1; i <= 1000; ++i)
		sum += letters(i);

	/* Add 1 instead of special-casing "one thousand". */
	printf("%d\n", ++sum);
	return 0;
}
