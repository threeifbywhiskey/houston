#include <stdio.h>
#include <string.h>

char *nums[] =
	{"M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"};
int vals[] =
	{1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};

#define NUM_VALS (sizeof(vals) / sizeof(*vals))

int from_roman(char *s)
{
	int i, j, len, val = 0;

	for (i = 0; i < strlen(s); ++i) {
		for (j = 0; j < NUM_VALS; ++j) {
			len = strlen(nums[j]);
			if (!strncmp(s + i, nums[j], len)) {
				val += vals[j];
				i += len - 1;
				break;
			}
		}
	}

	return val;
}

void to_roman(int n, char *buf)
{
	int i, j = 0, len;

	while (n) {
		for (i = 0; i < NUM_VALS; ++i) {
			if (vals[i] <= n) {
				len = strlen(nums[i]);
				strcpy(buf + j, nums[i]);
				j += len;
				n -= vals[i];
				break;
			}
		}
	}
}

int main(void)
{
	int i, saved = 0;
	char roman[20], tmp[20];
	FILE *input = fopen("../input/89", "r");

	for (i = 0; i < 1000; ++i) {
		fscanf(input, "%s", roman);
		to_roman(from_roman(roman), tmp);
		saved += strlen(roman) - strlen(tmp);
	}

	printf("%d\n", saved);
	return 0;
}
