10 CLS
100 REM cheng ji tong ji
110 DATA a,100,75,76
120 DATA b,85,66,90
130 DATA c,66,75,60
140 DATA d,81,73,78
150 DATA e,95,96,99
160 DATA F,58,65,50
170 DATA G,100,100,100
180 DATA H,100,92,98
190 DATA I,88,82,85
200 DATA J,76,77,85
230 DATA AAA,-1,-1,-1
240 G$ = "--------------------------------------------------------------------"
250 PRINT "     CHENG           JI          TONG            JI            BIAO"
260 PRINT
270 PRINT G$
280 PRINT "NAME"; "         CHINESE"; "      MATHS"; "          ENGLISH"; "         PINGJUN"
290 PRINT G$
300 ES = 0: SS = 0: JS = 0
310 C9 = 0: C8 = 0: C7 = 0: C6 = 0: C5 = 0
320 N = 0
330 READ M$, E, S, J
340 IF M$ = "AAA" THEN 460
350 N = N + 1
360 P = (E + S + J) / 3
370 ES = ES + E: SS = SS + S: JS = JS + J
380 PRINT M$, E, S, J, P
390 IF P >= 90 THEN C9 = C9 + 1: GOTO 440
400 IF P >= 80 THEN C8 = C8 + 1: GOTO 440
410 IF P >= 70 THEN C7 = C7 + 1: GOTO 440
420 IF P > 60 THEN C6 = C6 + 1: GOTO 440
430 C5 = C5 + 1
440 IF N MOD 5 = 0 THEN PRINT
450 GOTO 330
460 PRINT G$
470 EP = ES / N: SP = SS / N: JP = JS / N
480 PP = (EP + SP + JP) / 3
490 PRINT "PING JUN", EP, SP, JP, PP
500 PRINT
510 PRINT "YOU--------"; C9
520 PRINT "LIANG------"; C8
530 PRINT "ZHONG------"; C7
540 PRINT "JIGE ------"; C6
550 PRINT "BU JI GE---"; C5
560 END
