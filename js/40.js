var x = 0, dec = '', prod = 1

while (dec.length < 1e6)
    dec += x += 1;

for (i = 1; i < 1e7; i *= 10)
    prod *= dec[i - 1];

console.log(prod);
