#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int value(const char *name)
{
	int i, val = 0;
	for (i = 0; i < strlen(name); ++i)
		val += name[i] - 64;
	return val;
}

int main(void)
{
	int i, num = -1, total = 0;
	char names[5200][12];
	FILE *input = fopen("../input/22", "r");

	fseek(input, 1, SEEK_SET);
	while (fscanf(input, "%[^\"]", names[++num]) == 1)
		fseek(input, 3, SEEK_CUR);

	qsort(names, num, 12, (__compar_fn_t) strcmp);
	for (i = 0; i < num; ++i)
		total += value(names[i]) * (i + 1);

	printf("%d\n", total);
	fclose(input);
	return 0;
}
