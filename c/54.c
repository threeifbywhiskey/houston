#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define RANK(c) (c >> 2)
#define SUIT(c) (c  & 3)

const char ranks[] = "23456789TJQKA";
const char suits[] = "SHCD";

int cardcmp(const void *a, const void *b)
{
	return *(char *) b - *(char *) a;
}

char *strnchr(char *s, int c, size_t n)
{
	const char *e = s + n;
	do if (*s == c) return s; while (++s < e);
	return NULL;
}

char evaluate(char hand[5], char val[6])
{
	int i, str = 1, fls = 1;
	char *trip, *pair, group[13] = "";

	qsort(hand, 5, 1, cardcmp);
	memset(val, 0, 6);

	for (i = 1; i < 5; ++i) {
		if (RANK(hand[i - 1]) - RANK(hand[i]) != 1)
			str = 0;
		if (SUIT(hand[i]) != SUIT(*hand))
			fls = 0;
	}

	if (str | fls)
		return *val = str & fls ? 9 : 5 + fls;

	for (i = 0; i < 5; ++i)
		++group[RANK(hand[i])];

	if ((trip = strnchr(group, 3, 13)))
		return *val = strnchr(group, 2, 13) ? 7 : 4;

	if ((pair = strnchr(group, 2, 13))) {
		val[0] = strnchr(pair + 1, 2, 13) ? 3 : 2;
		return val[1] = pair - group;
	}

	strncpy(val + 1, hand, 5);
	return *val = 1;
}

int main(void)
{
	int i, j, wins = 0;
	char rank, suit;
	char card[3], hands[2][5], v0[6], v1[6];
	FILE *input = fopen("../input/54", "r");

	for (i = 0; i < 1000; ++i) {
		for (j = 0; j < 10; ++j) {
			fscanf(input, "%s", card);
			rank = strchr(ranks, card[0]) - ranks;
			suit = strchr(suits, card[1]) - suits;
			hands[j / 5][j % 5] = (rank << 2) | suit;
		}

		evaluate(hands[0], v0);
		evaluate(hands[1], v1);
		wins += strcmp(v0, v1) > 0;
	}

	printf("%d\n", wins);
	return 0;
}
