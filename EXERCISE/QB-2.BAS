
INPUT n
PRINT "( 1 ):";
INPUT "", a
LET m1 = a
FOR i = 2 TO n
 PRINT "("; i; "):";
 INPUT "", a
 IF a > m1 THEN m2 = m1: m1 = a
 IF a > m2 AND a < m1 THEN m2 = a
NEXT i
PRINT "The maxnum is"; m1
PRINT "The second maxnum is"; m2
END


