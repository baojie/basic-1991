10 'pc3-51
20 CLS
30 SCREEN 2: KEY OFF: CLS
40 PI = 3.1415927#
50 INPUT "n="; N
60 TH = PI * (.5 - 1 / N): A = TAN(TH): PRINT A
70 INPUT "b,c,l(b>l*a)"; B, C, L
80 IF B < L * A THEN PRINT "cant": GOTO 70
90 M = A ^ 2 / (4 * (B - L * A))
100 FOR AA = 0 TO 2 * PI * (N - 1) / N + .2 STEP 2 * PI / N
110 FOR LL = -L TO L + 4.9999 STEP 5
120 MX1 = SQR((C - B) / M) + LL: MX2 = -SQR((C - B) / M) + LL
130 FOR X = MX2 TO MX1 STEP (MX1 - MX2) / 20
140 Y = M * (X) ^ 2: GOSUB 210
150 IF X = MX2 THEN PSET (EX, EY): BX = X + (MX1 - MX2): BY = Y
160 LINE -(EX, EY)
170 NEXT X: X = BX: Y = BY: GOSUB 210
180 LINE -(EX, EY): NEXT LL
190 NEXT AA
200 END
210 PX = X * COS(PI / 2) - Y * SIN(PI / 2) + LL
220 PY = X * SIN(PI / 2) + Y * COS(PI / 2) + B
230 GOSUB 250
240 RETURN
250 EX = PX * COS(AA) - PY * SIN(AA) + 320
260 EY = PX * SIN(AA) + PY * COS(AA) + 200: EY = EY / 2
270 RETURN

