10 '------------------------Musical Organ Simkulation---------------------------
20 SCREEN 0, 0
30 '
40 KEY OFF: CLS : LOCATE , 25
50 DEFINT A-Z
60 PRINT CHR$(14); " MUSICAL ORGAN SIMKULATION "; CHR$(14)
70 PRINT
80 '
90 '------------------------put up video display--------------------------------
100 '
250 H$ = STRING$(3, 205): T$ = CHR$(196)
260 X$ = CHR$(179): F$ = STRING$(3, 196)
270 LOCATE 11, 32: PRINT "KEY ASSIGNMENTS";
280 LOCATE 12, 13: PRINT CHR$(201);
290 FOR I = 1 TO 12: PRINT H$; CHR$(209); : NEXT
300 PRINT H$; CHR$(187);
310 LOCATE 13, 13: PRINT CHR$(186);
320 PRINT TAB(65); CHR$(186);
330 LOCATE 14, 13: PRINT CHR$(204);
340 FOR I = 1 TO 12: PRINT H$; CHR$(216); : NEXT
350 PRINT H$; CHR$(185)
360 LOCATE 15, 13: PRINT CHR$(186);
370 PRINT TAB(65); CHR$(186);
380 LOCATE 16, 13: PRINT CHR$(199);
390 FOR I = 1 TO 12: PRINT F$; CHR$(197); : NEXT
400 PRINT F$; CHR$(182);
410 LOCATE 17, 13: PRINT CHR$(186);
420 PRINT TAB(65); CHR$(186);
430 LOCATE 18, 13: PRINT CHR$(200);
440 FOR I = 1 TO 12: PRINT H$; CHR$(207); : NEXT
450 PRINT H$; CHR$(188);
460 LOCATE 13, 15
470 PRINT "C"; TAB(19); "C#"; TAB(23); "D"; TAB(27); "D#";
480 PRINT TAB(31); "E"; TAB(35); "F"; TAB(39); "F#";
490 PRINT TAB(43); "G"; TAB(47); "G#"; TAB(51); "A";
500 PRINT TAB(55); "A#"; TAB(59); "B"; TAB(63); "C";
510 LOCATE 15, 14: PRINT "Esc";
520 FOR I = 1 TO 9: PRINT TAB(4 * I + 15); CHR$(I + 48); : NEXT
530 PRINT TAB(55); "0"; TAB(59); "-"; TAB(63); "=";
540 LOCATE 17, 14
550 PRINT "Tab"; TAB(19); "Q"; TAB(23); "W"; TAB(27); "E";
560 PRINT TAB(31); "R"; TAB(35); "T"; TAB(39); "Y";
570 PRINT TAB(43); "U"; TAB(47); "I"; TAB(51); "O";
580 PRINT TAB(55); "P"; TAB(59); "["; TAB(64); "]";
590 FOR I = 17 TO 61 STEP 4: LOCATE 13, I: PRINT X$; : NEXT
600 FOR I = 17 TO 61 STEP 4: LOCATE 15, I: PRINT X$; : NEXT
610 FOR I = 17 TO 61 STEP 4: LOCATE 17, I: PRINT X$; : NEXT
620 LOCATE 20, 1: PRINT CHR$(218); STRING$(5, 196); CHR$(191);
630 PRINT TAB(72); CHR$(218); STRING$(7, 196); CHR$(191);
640 LOCATE 21, 1: PRINT X$; "shift"; X$; TAB(72); X$; "tremolo"; X$;
650 LOCATE 22, 1: PRINT CHR$(192); STRING$(5, 196); CHR$(217);
660 PRINT TAB(72); CHR$(192); STRING$(7, 196); CHR$(217);
670 LOCATE 20, 30
680 FOR I = 1 TO 9: PRINT TAB(2 * I + 28); CHR$(48 + I); : NEXT
690 PRINT TAB(48); "10";
700 LOCATE 20, 38: COLOR 31, 0: PRINT "5"; : COLOR 7, 0
710 LOCATE 21, 30: PRINT CHR$(212);
720 FOR I = 1 TO 8: PRINT CHR$(205); CHR$(207); : NEXT
730 PRINT CHR$(205); CHR$(205); CHR$(190)
740 LOCATE 22, 32: PRINT CHR$(27); " Noto Duration "; CHR$(26);
745 LOCATE 5, 18: PRINT "'.' increase noto duration and ',' decrease it"
746 LOCATE 6, 27: PRINT "<Enter> to toggle tremolo"
747 LOCATE 7, 24: PRINT "<Space> to toggle octave shift"
750 LOCATE 24, 23: PRINT "*When You Finshed,press B to Quit*";
770 '
780 '--------------------------------INITIALIZE---------------------------------
790 '
800 TREMOLO = 1
810 SHIFT = 1
820 B = 5: D = 9
830 PLAY "MB"
840 '
850 '-----------------------------LOOP TO READ KEYBOAD--------------------------
860 '
870 V$ = INPUT$(1)
880 IF V$ = CHR$(27) THEN F = 523: GOSUB 1240: GOTO 870            'ESC
890 IF V$ = "1" THEN F = 554: GOSUB 1240: GOTO 870
900 IF V$ = "2" THEN F = 587: GOSUB 1240: GOTO 870
910 IF V$ = "3" THEN F = 662: GOSUB 1240: GOTO 870
920 IF V$ = "4" THEN F = 659: GOSUB 1240: GOTO 870
930 IF V$ = "5" THEN F = 698: GOSUB 1240: GOTO 870
940 IF V$ = "6" THEN F = 740: GOSUB 1240: GOTO 870
950 IF V$ = "7" THEN F = 784: GOSUB 1240: GOTO 870
960 IF V$ = "8" THEN F = 831: GOSUB 1240: GOTO 870
970 IF V$ = "9" THEN F = 880: GOSUB 1240: GOTO 870
980 IF V$ = "0" THEN F = 932: GOSUB 1240: GOTO 870
990 IF V$ = "-" THEN F = 988: GOSUB 1240: GOTO 870
1000 IF V$ = "=" THEN F = 1047: GOSUB 1240: GOTO 870
1010 IF V$ = CHR$(9) THEN F = 262: GOSUB 1250: GOTO 870          'TAB
1020 IF V$ = "q" OR V$ = "Q" THEN F = 277: GOSUB 1240: GOTO 870
1030 IF V$ = "w" OR V$ = "W" THEN F = 294: GOSUB 1240: GOTO 870
1040 IF V$ = "e" OR V$ = "E" THEN F = 311: GOSUB 1240: GOTO 870
1050 IF V$ = "r" OR V$ = "R" THEN F = 330: GOSUB 1240: GOTO 870
1060 IF V$ = "t" OR V$ = "T" THEN F = 349: GOSUB 1240: GOTO 870
1070 IF V$ = "y" OR V$ = "Y" THEN F = 370: GOSUB 1240: GOTO 870
1080 IF V$ = "u" OR V$ = "U" THEN F = 392: GOSUB 1240: GOTO 870
1090 IF V$ = "i" OR V$ = "I" THEN F = 415: GOSUB 1240: GOTO 870
1100 IF V$ = "o" OR V$ = "O" THEN F = 440: GOSUB 1240: GOTO 870
1110 IF V$ = "p" OR V$ = "P" THEN F = 466: GOSUB 1240: GOTO 870
1120 IF V$ = "{" OR V$ = "[" THEN F = 494: GOSUB 1240: GOTO 870
1130 IF V$ = "}" OR V$ = "]" THEN F = 523: GOSUB 1240: GOTO 870
1140 IF V$ = CHR$(32) THEN GOSUB 1360: GOTO 870
1150 '
1160 IF V$ = CHR$(44) OR V$ = CHR$(46) THEN GOSUB 1430: GOTO 870
1170 IF V$ = CHR$(13) THEN GOSUB 1550: GOTO 870
1180 IF V$ = "b" OR V$ = "B" THEN STOP
1190 GOTO 870
1200 END
1210 '
1220 '---------------------Subroutine to sound a noto---------------------------
1230 '
1240 SOUND 100, 0: F = F * SHIFT
1250 IF TREMOLO = 1 THEN SOUND F, D: RETURN
1260 N = .33 * D: IF N < 1 THEN N = 1
1270 DELTA = .012 * F: F1 = F + DELTA: F2 = F - DELTA
1280 '--------------------------tremolo loop------------------------------------
1290 FOR I = 1 TO N
1300 SOUND F1, 1: SOUND F, 1: SOUND F2, 1
1310 NEXT I
1320 RETURN
1330 '
1340 '--------------------Subroutine to set octave-shift flag-------------------
1350 '
1360 SHIFT = INT(I + (1 / SHIFT))
1370 IF SHIFT = 1 THEN COLOR 7, 0 ELSE COLOR 0, 7
1380 LOCATE 21, 2: PRINT "shift": COLOR 7, 0
1390 RETURN
1400 '
1410 '-----------------------subroutine to set noto duration--------------------
1420 '
1430 C = B: IF V$ = CHR$(46) THEN B = B + 1 ELSE B = B - 1
1440 IF B > 10 THEN B = 10
1450 IF B < 1 THEN B = 1
1460 LOCATE 20, (2 * C + 28)
1470 IF C < 10 THEN PRINT CHR$(C + 48) ELSE PRINT "10"
1480 COLOR 31, 0: LOCATE 20, (2 * B + 28)
1490 IF B < 10 THEN PRINT CHR$(B + 48) ELSE PRINT "10"
1500 COLOR 7, 0: D = B * 1.8
1510 RETURN
1520 '
1530 '---------------------subroutine to set tremolo flag----------------------
1540 '
1550 TREMOLO = -TREMOLO
1560 IF TREMOLO = 1 THEN COLOR 7, 0 ELSE COLOR 0, 7
1570 LOCATE 21, 73: PRINT "tremolo": COLOR 7, 0
1580 RETURN

