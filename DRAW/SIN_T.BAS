'This  Quick BASIC program simulate Si_bo_qi
'Bao Jie ,July 12 1997

'x and y is the input of Si_bo_qi,they are function of time
'There ,y  are defined as sin(t)
'x is                              ^ x  .   .   .
'                                  |  .'| .'| .'|
'                                  |.'  |'  |'  |
'                                --------------------->t
'                                  |    period


DECLARE FUNCTION y! (t!)
DECLARE FUNCTION x! (t!, period)

SCREEN 2
VIEW SCREEN (20, 20)-(600, 150)

pi = 3.14159265#
startx = 200
starty = 80
tstep = .2
scale = 60 * tstep

CLS 0
     FOR t = 0 TO 800 STEP tstep
           px = 0
           py = 0
           LOCATE 1, 1
           PRINT "SIN(t)----------Bao Jie ,July 12 1997",
           PRINT "Q or q to quit"
           LOCATE 23, 60
           PRINT "t="; t
           CLS
           FOR phase = t TO 8 * pi STEP tstep
             
              py = py + y(phase)
              px = px + x(phase, .25 * pi)
              PSET (2 * px + startx, scale * py / 2 + starty - 20 * COS(t / pi))
           NEXT phase

           ANSWER$ = INKEY$
           IF ANSWER$ = "Q" OR ANSWER$ = "q" THEN SYSTEM
      NEXT t

END


FUNCTION x (t, period)
   x = t - INT(t / period) * period
END FUNCTION

FUNCTION y (t)
y = SIN(t)

END FUNCTION

