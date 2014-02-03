from datetime import date

start = date(1901, 1, 1).toordinal()
end = date(2000, 12, 31).toordinal()

sundays = 0

for i in xrange(start, end):
    date = date.fromordinal(i)
    if date.weekday() == 6 and date.day == 1:
        sundays += 1

print sundays
