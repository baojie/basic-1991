10 DIM M$(8):CLS
20 PRINT "------ba mao nu-----"
30 M$(1)="o3e4d4d8o2a8 b8a8b4b4"
40 M$(2)="o3d4c4o2b8a8 a8e8g4g4"
50 M$(3)="b4b8o3d8o2a8g8 g8d8e4e4"
60 M$(4)="e4a4p8a8 f8a8d4d4"
70 M$(5)="o3e4d4d8o2a8 b8a8b4b4"
80 M$(6)="o3d4c4o2b8a8 a8e8g4g4"
90 M$(7)="a4g4a4 b8a16o3d16o2b8a8"
100 M$(8)="e8e4g8 f8e8d4"
110 PLAY "mb t90 l4"
120 FOR I=1 TO 80
130 PLAY"x"+VARPTR $ (M$(I))
140 NEXT I
150 END
