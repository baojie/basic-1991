'Bao Jie July 17,1997
'A simple program of drawing a floor to teach my Dad

5 PRINT "Bao Jie July 17,1997"
6 PRINT "A simple program of drawing a floor "
7 INPUT "Press <ENTER> to begin.", anyinput$

10 CLS
20 SCREEN 2
30 LINE (420, 210)-(1, 1)
40 FOR I = 0 TO 7
50 X = 60 * I: Y = 30 * I
60 LINE (X, Y)-(X + 60, Y)
70 LINE (X + 60, Y)-(X + 60, Y + 30)
80 NEXT
90 LOCATE 24, 1: INPUT "Press <ENTER> to return to DOS", anyinput$

