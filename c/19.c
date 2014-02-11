#include <stdio.h>
#include <time.h>

int main(void)
{
	struct tm tm;
	int year, day, sundays = 0;
	char buf[8];

	for (year = 1901; year < 2001; ++year) {
		for (day = 1; day <= 366 - (year % 4 || year % 400); ++day) {
			sprintf(buf, "%d%03d", year, day);
			strptime(buf, "%Y%j", &tm);
			if (tm.tm_mday == 1 && tm.tm_wday == 0)
				++sundays;
		}
	}

	printf("%d\n", sundays);
	return 0;
}
