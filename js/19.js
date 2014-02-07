day = 0, sundays = 0;

while (++day) {
    date = new Date(1901, 0, day);
    if (date.getYear() > 100)
        break;
    if (date.getDate() == 1 && date.getDay() == 6)
        ++sundays;
}

console.log(sundays);
