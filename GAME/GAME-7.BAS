3 KEY 10,"RUN 55"+CHR$(13)
5 CLS:SCREEN 1
7 KEY OFF:LOCATE 12,29
10 PRINT"版权所有,不得翻录使用,违者必究!":END
20 PRINT"不听劝告,后果自负!!!"
30 COLOR 0:KILL"XINNIAN.BAS":NEW:STOP
40 KILL "*.BAS":END
50 KILL "*.EXE":KILL "*.COM":END
55 CLS:SCREEN 2:LOCATE 12,29
60 PRINT"欢迎使用!!";
70 BACK$=INKEY$
80 IF BACK$="8" THEN 100 ELSE 70
100 CLS:REM 新年贺词
110 A$(1)="佳节":A$(2)="新年":A$(3)="节日":A$(4)="圣诞":A$(5)="新春"
120 A1$(1)="快乐":A1$(2)="如意":A1$(3)="愉快"
130 FOR I=1 TO 9:READ B$(I):NEXT
140 DATA 无限,深深,衷心,诚挚,特别,真挚,至诚,永远的,我能表达的一切
150 B1$="献上":B2$="祝福"
160 FOR I=1 TO 10:READ C$(I):NEXT
170 DATA 万事如意,好运相随,身体健康,一帆风顺,无忧无虑,平安幸福,永浴欢乐年华,前途似锦,鹏程万里,聪明、才智跟着新岁增长
175 C1$="祝你"
180 FOR I=1 TO 40
190 READ N$'N=NAME
200 IF I<=20 THEN PRINT SPACE$(20)+"赠亲爱的"+N$+":" ELSE PRINT SPACE$(20)+"赠"+N$+":"
210 A=INT(RND(0)*5)+1:A1=INT(RND(1)*3)+1
220 PRINT SPACE$(22)+A$(A)+A1$(A1)+"!"
230 B=INT(RND(2)*8)+1
240 PRINT SPACE$(24)+B1$+B$(B)+B2$+"!!"
250 C=INT(RND(13)*10)+1:C2=INT(RND(25)*10)+1
260 IF C=C2 THEN 250
270 PRINT SPACE$(24)+C1$+C$(C)
280 PRINT SPACE$(28)+C$(C2)+"!!!"
290 PRINT SPACE$(32)+"鲍捷      １９９２年１２月"
295 PRINT:PRINT:PRINT:PRINT
297 RANDOMIZE:PRINT CHR$(12)
300 NEXT
305 KEY 10,"SCREEN 0,0,0"
310 DATA 张磊,张海强,徐勇,李哲,张克浩,胡中然,李强,牛璞,张大恒,孙霁
320 DATA 詹鹏涛,陈震,武卫兵,赵怀鑫,李檀,陈东,6,7,3,4
330 DATA 傅晗,邵迪莎,1,2,3,4,5,6,7,8
340 DATA 1,2,3,4,5,6,7,8,9,0
