HAI 1.3

HOW IZ I collatz_length YR num
    I HAS A length ITZ 1

    IM IN YR loop UPPIN YR nop TIL BOTH SAEM num AN 1
        length R SUM OF length AN 1
        MOD OF num AN 2, O RLY?
            YA RLY, num R SUM OF 1 AN PRODUKT OF num AN 3
            NO WAI, num R QUOSHUNT OF num AN 2
        OIC
    IM OUTTA YR loop

    FOUND YR length
IF U SAY SO

I HAS A max ITZ 0
I HAS A maxlength ITZ 0

IM IN YR loop UPPIN YR i TIL BOTH SAEM i AN 50000
    I HAS A i ITZ SUM OF i AN 800000
    I HAS A length ITZ I IZ collatz_length YR i MKAY
    BOTH SAEM length AN BIGGR OF length AN maxlength, O RLY?
        YA RLY, maxlength R length, max R i
    OIC
IM OUTTA YR loop

VISIBLE max
KTHXBYE
