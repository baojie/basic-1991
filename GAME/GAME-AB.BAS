10    CLS
20     SCREEN 1
30       LOCATE 22, 1: INPUT ; "Please input your letter:", name$
40    CLS
50       LOCATE 22, 1: INPUT "N=", n
60         IF n <= 0 OR n >= 99 THEN GOTO 50
70    CLS
80       LOCATE 22, 1: INPUT "M=", m
90         IF n <= 0 OR m >= 99 OR m = n THEN GOTO 80
100   CLS
110          a = LEN(name$)
120            DIM b(a * 8, 8)
130   CLS
140          PRINT name$;
150         FOR i = 0 TO a * 8
160                 FOR r = 0 TO 8
170                     IF POINT(i, r) = 3 THEN b(i, r) = 1 ELSE b(i, r) = 0
180                 NEXT
190         NEXT
200   CLS
210           SS = SS + 1
220             IF SS = 4 THEN SS = 1
230           FOR i = 0 TO a * 80 STEP m
240                 FOR r = 0 TO 80 STEP m
250                         IF b(i / 10, r / 10) = 1 THEN PSET (i / n, r / n), SS: LINE (319, 199)-(i / n, r / n), SS: LINE (319, 199)-(i / n, r / n), 0: PSET (i / n, r / n), SS
260                 NEXT
270           NEXT
280      GOTO 210
290         ERASE b
300   GOTO 30

