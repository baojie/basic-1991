'This  Quick BASIC program simulate Si_bo_qi
'Bao Jie ,July 12 1997

'x and y is the input of Si_bo_qi,they are function of time
'There ,x  are defined as sin(t)
DECLARE FUNCTION x! (t!)
DECLARE FUNCTION y! (t!)
SCREEN 2
VIEW SCREEN (100, 20)-(600, 150)
'Show Lisharu picture

PRINT "Show lisharu picture."
INPUT "X peroid multiplyer ? to ?", beginx, endx
INPUT "Y peroid multiplyer ? to ?", beginy, endy



pi = 3.14159265#
startx = 200
starty = 85
scale = 4


CLS 0
FOR fx = beginx TO endx
 FOR fy = beginy TO endy
     FOR phase = 0 TO 360 STEP 30
           px = 0
           py = 0
           LOCATE 1, 1
           PRINT "Li_sa_ru  picture----------Bao Jie ,July 12 1997"
           LOCATE 20, 1
           PRINT "X direction period:"; fx
           LOCATE 21, 1
           PRINT "Y direction period:"; fy
           LOCATE 22, 1
           PRINT "Phase differance"; phase
           LOCATE 22, 30
           PRINT "Q or q to quit"
          
           CLS
           FOR t = 0 TO (fx + fy) * pi STEP .05
              px = px + x(fx * t)
              py = py + y(fy * t + phase / 360 * pi)
              PSET (scale * px * fx + startx, scale * py * fy / 2 + (starty - 30 * COS(phase / 360 * pi)))
           NEXT t

           ANSWER$ = INKEY$
           IF ANSWER$ = "Q" OR ANSWER$ = "q" THEN SYSTEM



     NEXT phase
  NEXT fy
NEXT fx

END

FUNCTION x (t)
x = SIN(t)

END FUNCTION

FUNCTION y (t)
  y = SIN(t)

END FUNCTION

