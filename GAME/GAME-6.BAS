10 MONEY=2000
20 PRINT TAB(25);"猜骰子数游戏!"
30 PRINT TAB(4);"规则:你现有本金2000元,每次由你输入所押的骰子点数和钱数,如果对了,那你就得到了和你下注数量相等的钱了!"
35 RANDOMIZE TINER:HAPPEN=INT(RND(1)*5+1)
40 INPUT "你押几点(1-6)";PUINT
50 INPUT "下注多少(不得少于200元)";MONEYA
60 IF MONEYA<200 THEN PRINT"下注不得少于200元!!!":GOTO 50
70 ON HAPPEN GOSUB 1000,2000,3000,4000,5000,6000
75 PRINT
80 IF PUINT=HAPPEN THEN PRINT"呵,你手气不错,赢了!" ELSE PRINT"哦,你输了!"
90 IF PUINT=HAPPEN THEN MONEY=MONEY+MONEYA ELSE MONEY=MONEY-MONEYA
100 IF MONEY<200 THEN 140
105 IF MONEY>20000 THEN 150
110 PRINT "你现在有";MONEY;"元,你还继续玩吗(Y/N)";:INPUT A$
120 IF A$="Y" OR A$="y" THEN PRINT "哈!这就对了再玩一次。":GOTO 35
130 IF A$="N" OR A$="n" THEN END
140 PRINT "你的钱已经不够再下一次注的了,滚吧,穷鬼!":END
150 PRINT "你赢的钱已经够多了,见好就收吧!":GOTO 110
160 END
1000 PRINT "                                             ";:COLOR 0,7:PRINT "        ";:COLOR 7,0
1100 PRINT "                                             ";:COLOR 0,7:PRINT "   ●   ";:COLOR 7,0
1200 PRINT "                                             ";:COLOR 0,7:PRINT "        ";:COLOR 7,0
1300 RETURN
2000 PRINT "                                             ";:COLOR 0,7:PRINT "        ";:COLOR 7,0
2100 PRINT "                                             ";:COLOR 0,7:PRINT " ●  ● ";:COLOR 7,0
2200 PRINT "                                             ";:COLOR 0,7:PRINT "        ";:COLOR 7,0
2300 RETURN
3000 PRINT "                                             ";:COLOR 0,7:PRINT "   ●   ";:COLOR 7,0
3100 PRINT "                                             ";:COLOR 0,7:PRINT "        ";:COLOR 7,0
3200 PRINT "                                             ";:COLOR 0,7:PRINT " ●  ● ";:COLOR 7,0
3300 RETURN
4000 PRINT "                                             ";:COLOR 0,7:PRINT " ●  ● ";:COLOR 7,0
4100 PRINT "                                             ";:COLOR 0,7:PRINT "        ";:COLOR 7,0
4200 PRINT "                                             ";:COLOR 0,7:PRINT " ●  ● ";:COLOR 7,0
4300 RETURN
5000 PRINT "                                             ";:COLOR 0,7:PRINT " ●  ● ";:COLOR 7,0
5100 PRINT "                                             ";:COLOR 0,7:PRINT "   ●   ";:COLOR 7,0
5200 PRINT "                                             ";:COLOR 0,7:PRINT " ●  ● ";:COLOR 7,0
5300 RETURN
6000 PRINT "                                             ";:COLOR 0,7:PRINT " ●  ● ";:COLOR 7,0
6100 PRINT "                                             ";:COLOR 0,7:PRINT " ●  ● ";:COLOR 7,0
6200 PRINT "                                             ";:COLOR 0,7:PRINT " ●  ● ";:COLOR 7,0
6250 RETURN
6300 END
