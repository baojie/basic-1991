10 SCREEN 1,0:KEY OFF:COLOR 0,1:CLS
15 PLAY"mbmlt100":GOSUB 100
20 DEF SEG=&HB800
30 BLOAD"face.pic",0
40 DEF SEG
50 K$=INKEY$:IF K$="" THEN 50
60 CLS:END
100 PLAY"o4l8ed#ed#eo3bo4dco3l4a.l8ceal4b.l8eg#bol4c.o3l8"
110 PLAY"eeo4d#ed#eo3bo4dco3l4a.l8ceal4b.l8eo4co3bl2aocl8"
120 RETURN
130 END
