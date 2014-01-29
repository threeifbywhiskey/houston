#include <stdio.h>
#include <string.h>
#include <math.h>

int value(const char *word)
{
	int i, val = 0;
	for (i = 0; i < strlen(word); ++i)
		val += word[i] - 64;
	return val;
}

int tri(int value)
{
	return !fmod(sqrt(value * 8 + 1), 1);
}

int main(void)
{
	int i, total = 0;
	char word[15];
	FILE *input = fopen("../input/42", "r");

	fseek(input, 1, SEEK_SET);

	while (fscanf(input, "%[^\"]", word) == 1) {
		if (tri(value(word)))
			++total;
		fseek(input, 3, SEEK_CUR);
	}

	printf("%d\n", total);
	fclose(input);
	return 0;
}
