INPUT n
DIM a(n)
FOR i = 1 TO n
INPUT a(i)
NEXT i

FOR i = 1 TO n
max = a(i): k = i
FOR j = i + 1 TO n
IF a(j) > max THEN max = a(j): k = j
NEXT j
IF k <> i THEN SWAP a(i), a(k)
PRINT a(i)
NEXT i

