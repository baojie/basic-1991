FOR i = 2 TO 5 STEP 3
FOR r = 3 TO 9 STEP 3
FOR j = 4 TO 13 STEP 3
a = r - i: b = j - r
IF a = 1 OR a = 4 THEN 60 ELSE 70
60 IF b = 1 OR b = 4 THEN PRINT 1; i; r; j; 16,  ELSE 70
70 NEXT j, r, i
END


