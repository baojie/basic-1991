INPUT n
DIM a(n)
FOR i = 1 TO n
          
INPUT a(i)

NEXT i

FOR i = n - 1 TO 0 STEP -1
FOR j = 1 TO i
IF a(j) > a(j + 1) THEN SWAP a(j), a(j + 1)
NEXT j
PRINT a(j)
NEXT i

