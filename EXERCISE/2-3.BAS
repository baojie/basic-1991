10 FOR A=1 TO 3
20   FOR B=1 TO 3:IF A=B THEN 50
30     C=6-A-B
40     IF (A<>1)+(C<>3)+(C<>2)+(B<>2)=-4 THEN PRINT A"-A",B"-B",C"-c"
50   NEXT B
60 NEXT A
70 END
