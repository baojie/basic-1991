INPUT n
DIM a(n)
FOR i = 1 TO n
INPUT a(i)
NEXT i

FOR i = 1 TO n
FOR j = i + 1 TO n
IF a(i) < a(j) THEN SWAP a(i), a(j)
NEXT j
PRINT a(i)

NEXT

