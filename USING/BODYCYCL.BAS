
10 SCREEN 2, 0
20 PRINT "欢迎使用本程序"
30 INPUT "请输入你的出身年,月,日,男(1)或女(0)"; Y1, M1, D1, X
40 INPUT "请输入今天的年,月,日"; Y2, M2, D2
50 INPUT "请输入你的姓名"; A$
60 DIM M(12), Q(4)
70 FOR I = 1 TO 12
80 READ M(I)
90 NEXT I
100 DATA 31,28,31,30,31,30,31,31,30,31,30,31
110 A = 0
120 FOR I = Y1 TO Y2
130 IF I / 100 = INT(I / 100) THEN 160
140 IF I / 4 = INT(I / 4) THEN 170
150 M(2) = 28: A = A + 365: GOTO 180
160 IF I / 400 = INT(I / 400) THEN 150
170 M(2) = 29: A = A + 366
180 IF I <> Y1 THEN 240
190 B = 0
200 FOR J = 1 TO M1 - 1
210 B = B + M(J)
220 NEXT J
230 A = A - B - D1 + 1
240 IF I <> Y2 THEN 300
250 B = 0
260 FOR J = M2 TO 12
270 B = B + M(J)
280 NEXT J
290 A = A - B + D2
300 NEXT I
310 B = 0
320 FOR J = 1 TO M2 - 1
330 B = B + M(J)
340 NEXT J
350 B = B + D2
360 S = Y2 - 1 + (Y2 - 1) / 4 - (Y2 - 1) / 100 + (Y2 - 1) / 400 + B
370 T = INT(S) MOD 7
380 PRINT "&&&&"; A$; "&&&&"
390 PRINT "你的年龄总天数="; A;
400 PRINT "("; Y1; ","; M1; ","; D1; "--"; Y2; ","; M2; ","; D2; ")"
410 IF (M2 = M1) AND (D2 = D1) THEN PRINT "生日快乐!"
420 IF A <= 4380 THEN P = 1
430 IF A < 9125 AND A > 4380 THEN P = 2
440 IF A <= 14600 AND A > 9125 THEN P = 3
450 IF A >= 21900 AND A > 14600 THEN P = 4
460 IF A >= 21900 THEN PRINT P = 5
470 PRINT "你的生物节律曲线如下(33天):";
480 PRINT "(W=体力  G=情绪  S=智力)"
490 FOR I = 1 TO 37
500 PRINT "#&";
510 NEXT I
520 PRINT
530 E = 0: F = 0
540 PRINT "低潮期  临潮期  高潮期  日期  平均趋向"
550 FOR J = 1 TO 38: PRINT "--"; : NEXT J
560 FOR I = 1 TO 33
570 W = INT(SIN(.273138 * (A MOD 23)) * 20) + 21
580 G = INT(SIN(.224399 * (A MOD 28)) * 20) + 21
590 S = INT(SIN(.190399 * (A MOD 33)) * 20) + 21
600 V = INT(W + G + S) / 6 + 52
610 IF V > 63 THEN E = E + V ELSE F = F + V
620 Q(0) = 0: Q(1) = 21: Q(2) = W
630 Q(3) = G: Q(4) = S
640 FOR J = 1 TO 3
650 FOR K = J + 1 TO 4
660 IF Q(J) <= Q(K) THEN 680
670 R = Q(J): Q(J) = Q(K): Q(K) = R
680 NEXT K
690 NEXT J
700 FOR J = 1 TO 4
710 IF Q(J) = Q(J - 1) THEN 760
720 IF Q(J) = W THEN PRINT TAB(W); "W"; : GOTO 760
730 IF Q(J) = G THEN PRINT TAB(G); "G"; : GOTO 760
740 IF Q(J) = S THEN PRINT TAB(S); "S"; : GOTO 760
750 IF Q(J) = 21 THEN PRINT TAB(21); ".";
760 NEXT J
770 PRINT TAB(44); M2; "."; D2;
780 IF V < 62 THEN 820
790 IF V = 62 THEN 810
800 PRINT TAB(62); "!";
810 PRINT TAB(V); "@": GOTO 840
820 PRINT TAB(V); "@";
830 PRINT TAB(62); "!"
840 A = A + 1
850 D2 = D2 + 1
860 IF D2 > M(M2) THEN 880
870 GOTO 940
880 D2 = 1
890 M2 = M2 + 1
900 IF M2 > 12 THEN 920
910 GOTO 940
920 Y2 = Y2 + 1: M2 = 1
930 IF Y2 / 4 = INT(Y2 / 4) THEN M(2) = 29 ELSE M(2) = 28
940 NEXT I: PRINT : PRINT
950 INPUT "按回车键居续"; XX$
960 PRINT "综合分析(33天):"
970 IF E > F THEN 1020
980 PRINT "平均趋向低潮,希望你不要紧张."
990 PRINT "适当锻练,加强营养,劳逸结合;"
1000 PRINT "有条不紊地(工作,学习,生活),保你一切顺利!"
1010 GOTO 1110
1020 PRINT "平均趋向高潮,发挥优势"
1030 IF P = 5 THEN 1090
1040 PRINT "努力学习,";
1050 IF P = 1 THEN 1080
1060 PRINT "勤奋工作,多作贡献;"
1070 PRINT "但不要盲目乐观,麻癖大意!!": GOTO 1110
1080 PRINT "注意卫生,加强锻炼;": GOTO 1070
1090 PRINT "保持乐观,适当运动,注意生活有规律,安独晚年!"
1100 GOTO 1070
1110 PRINT "再见!"
1120 END

