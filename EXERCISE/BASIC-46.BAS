INPUT "m="; m
INPUT "n="; n
10 DIM A(m)
30 FOR I = 1 TO m
40 A(I) = 1
50 NEXT I
60 S = 0: P = 0
70 FOR I = 1 TO m
80 S = S + A(I)
90 IF S = n THEN GOSUB 120
100 NEXT I
110 GOTO 70
120 A(I) = 0: P = P + 1
130 PRINT I,
140 IF P = m THEN END
150 S = 0
160 RETURN

