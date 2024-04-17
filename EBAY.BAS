5 DELAY .7
10 R=.129 @ F=.3 @ T=.087
20 I=.0165 @ DIM Q$
30 INPUT "Buying price: ";P
40 INPUT "Shipping: ";S
50 B=(P+S)*(1+T)
60 PRINT "Total:";B
70 INPUT "Selling: ";X
75 INPUT "Shipping (local): ";Z
77 INPUT "Shipping (int.): ";W
78 INPUT "Real Shipping (int.): ";G
80 INPUT "International: ","Y";Q$
90 IF UPRC$(Q$)="Y" THEN V=(X+Z)*I ELSE V=0
100 Y=(X+Z)*R+F+V
110 PRINT "Fees:";Y
120 M=X-Y-B
125 D=X-M
130 PRINT "Margin:";M
140 PRINT "Min. price:";D
