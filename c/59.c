#include <stdio.h>

int main(void)
{
	int i, j, k, l, tmp;
	int len = -1, cur, max = 0, sum;
	FILE *input = fopen("../input/59", "r");

	while (++len, fscanf(input, "%d", &i) == 1)
		fgetc(input);

	rewind(input);

	char msg[len + 1];
	char key[3];

	for (i = 0; i < len; ++i) {
		fscanf(input, "%d", &tmp);
		msg[i] = tmp;
		fgetc(input);
	}

	for (i = 97; i <= 122; ++i) {
		for (j = 97; j <= 122; ++j) {
			for (k = 97; k <= 122; ++k) {
				key[0] = i;
				key[1] = j;
				key[2] = k;

				cur = 0;
				for (l = 0; l < len; ++l)
					cur += (msg[l] ^= key[l % 3]) == 32;

				if (cur > max) {
					max = cur;
					sum = 0;
					for (l = 0; l < len; ++l)
						sum += msg[l];
				}

				for (l = 0; l < len; ++l)
					msg[l] ^= key[l % 3];
			}
		}
	}

	fclose(input);
	printf("%d\n", sum);
	return 0;
}
