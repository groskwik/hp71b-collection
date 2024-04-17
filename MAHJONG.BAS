10 DESTROY ALL 
20 DELAY .5
40 INPUT "As tu des Kongs ? ","Y";K$
50 IF K$="Y" THEN GOTO 60 ELSE GOTO 135
60 DISP "Kong dans la main..."
65 INPUT "Vents joueur/partie: ","0";K0
70 INPUT "Dragons: ","0";K1
80 INPUT "Vents,1,9: ","0";K2
90 INPUT "2,3,4..8: ","0";K3
100 DISP "Kong Exposes"
105 INPUT "Vents joueur/partie: ","0";K9
110 INPUT "Dragrons: ","0";K4
120 INPUT "Vents,1,9: ","0";K5
130 INPUT "2,3,4..8: ","0";K6
135 INPUT "As tu des pongs ? ","Y";K$
137 IF K$="Y" THEN GOTO 140 ELSE GOTO 220
140 DISP "Pong dans la main"
145 INPUT "Vents joueur/partie: ","0";P0
150 INPUT "Dragrons: ","0";P1
160 INPUT "Vents,1,9: ","0";P2
170 INPUT "2,3,4..8: ","0";P3
180 DISP "Pong Exposes"
185 INPUT "Vents joueur/partie: ","0";P9
190 INPUT "Dragrons: ","0";P4
200 INPUT "Vents,1,9: ","0";P5
210 INPUT "2,3,4..8: ","0";P6
220 INPUT "Paire de dragons: ","0";D1
230 INPUT "Vent joueur/partie: ","0";D2
240 INPUT "Tes Fleurs: ","0";F1 @ IF F1>2 THEN GOTO 240
250 INPUT "Autres Fleurs: ","0";F2 @ IF F1+F2>8 THEN GOTO 360
260 IF F1+F2=8 THEN B1=1 ELSE B1=0
270 INPUT "Main pure ? ","Y";S$ @ IF S$="Y" THEN S1=1 ELSE S1=0
280 INPUT "Mahjong ? ","Y";Z$ @ IF Z$="Y" THEN M1=20 ELSE M1=0 @ GOTO 305
290 INPUT "Mahjong en tirant ? ","Y";Z1$ @ IF Z1$="Y" THEN M2=2 ELSE M2=0
300 INPUT "Vent d'Est ? ","Y";E1$ @ IF E1$="Y" THEN E2=1 ELSE E2=0
305 H1=K0+K1+K2+K3+K4+K5+K6+K9+P0+P1+P2+P3+P4+P5+P6+P9
310 IF H1>4 THEN GOTO 350
315 IF H1=4 THEN H2=1
317 IF H1=0 AND M1=20 THEN M1=M+10
320 IF D1+D2>1 THEN GOTO 360
325 X=2^(K0+K1+K4+K9+P0+P1+P4+P9+F1+S1+B1+H2+E2)
330 V=32*(K0+K1+K2)+16*(K3+K4+K5+K9)+8*(K6+P0+P1+P2)+4*(P3+P4+P5+P9+F1+F2)+2*(P6+D1+D2)+M1+M2
332 M=V*X
340 DISP "Ton score est: ";M @ END 
350 DISP "Tu ne peux pas avoir plus de 8 fleurs" @ END 
360 DISP "Tu ne peux pas avoir plus de 1 paire" @ END 
