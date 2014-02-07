main = print $ head [a * b * c |
    a <- [5,10..1000],
    b <- [5,10..1000 - a],
    c <- [1000 - a - b],
    a * a + b * b == c * c]
