2 PRINT "* * * * * 国家服装号型标准算法 * * * * *"
3 PRINT "             (GB1335-91)"
5 FOR I=1 TO 3:READ R$(I):NEXT I
10 DATA 男士,女士,儿童
20 INPUT "身高,胸围,腰围 (CM)=";H,X,Y
30 INPUT "(1)男士;(2)女士;(3)儿童(请选1或2或3)";R
40 IF R=3 THEN XI$="":GOTO 70
50 GOSUB 200
60 PRINT "========实际号型========"
70 PRINT "*";R$(R);":"
80 GOSUB 300
100 PRINT "-------购买时选用系例-------"
110 H=INT((H+2)/5)*5
120 X=INT((X+2)/4)*4
130 Y=INT((Y+1)/2)*2
140 GOSUB 300
150 IF R=3 THEN PRINT "或";:H=H+5:GOSUB 300
160 END
200 LC=X-Y:IF R=2 THEN LC=LC-2
210 IF LC>22 THEN XI$="极瘦":GOTO 270
220 IF LC>16 THEN XI$="Y":GOTO 270
230 IF LC>11 THEN XI$="A":GOTO 270
240 IF LC>6 THEN XI$="B":GOTO 270
250 IF LC>1 THEN XI$="C":GOTO 270
260 XI$="极胖"
270 RETURN
280 PRINT TAB(6);"上衣":"H;"/";X:XI$
300 PRINT TAB(6);"上衣";"H;""/";X;XI$
310 PRINT TAB(6);"裤子:";H;"/";Y;XI$
320 RETURN
330 END
