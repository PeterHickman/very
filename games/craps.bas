1 REM Copied from http://www.vintage-basic.net/games.html
10 PRINT " CRAPS"
20 PRINT " CREATIVE COMPUTING MORRISTOWN, NEW JERSEY"
30 PRINT
50 PRINT
60 LET R = 0
70 PRINT "2,3,12 ARE LOSERS; 4,5,6,8,9,10 ARE POINTS; 7,11 ARE NATURAL WINNERS."
80 LET T = 1
90 INPUT "PICK A NUMBER AND INPUT TO ROLL DICE " Z
110 LET X = RND(0)
120 LET T = T + 1
130 IF T <= Z GOTO 110
140 INPUT "INPUT THE AMOUNT OF YOUR WAGER " F
160 PRINT "I WILL NOW THROW THE DICE"
170 LET E = RND(6)
180 LET S = RND(6)
190 LET X = E + S
200 IF X = 7 GOTO 340
210 IF X = 11 GOTO 340
220 IF X = 1 GOTO 170
230 IF X = 2 GOTO 370
240 IF X = 0 GOTO 170
250 IF X = 2 GOTO 410
260 IF X = 3 GOTO 410
270 IF X = 12 GOTO 410
280 IF X = 5 GOTO 460
290 IF X = 6 GOTO 460
300 IF X = 8 GOTO 460
310 IF X = 9 GOTO 460
320 IF X = 10 GOTO 460
330 IF X = 4 GOTO 460
340 PRINT X "- NATURAL....A WINNER!!!!"
350 PRINT X "PAYS EVEN MONEY, YOU WIN " F " DOLLARS"
360 GOTO 440
370 PRINT X "- SNAKE EYES....YOU LOSE."
380 PRINT "YOU LOSE " F " DOLLARS."
390 LET F = 0 - F
400 GOTO 440
410 PRINT X " - CRAPS...YOU LOSE."
420 PRINT "YOU LOSE " F " DOLLARS."
430 LET F = 0 - F
440 LET R = R + F
450 GOTO 640
460 PRINT X " IS THE POINT. I WILL ROLL AGAIN"
470 LET H = RND(6)
480 LET Q = RND(6)
490 LET O = H + Q
500 IF O = 1 GOTO 470
510 IF O = 7 GOTO 560
520 IF O = 0 GOTO 470
530 IF O = X GOTO 600
540 PRINT O " - NO POINT. I WILL ROLL AGAIN"
550 GOTO 470
560 PRINT O " - CRAPS. YOU LOSE."
570 PRINT "YOU LOSE $" F
580 LET F = 0 - F
590 GOTO 440
600 PRINT X " - A WINNER.........CONGRATS!!!!!!!!"
610 LET F = 2 * F
620 PRINT X " AT 2 TO 1 ODDS PAYS YOU...LET ME SEE... " F " DOLLARS"
630 GOTO 440
640 INPUT " IF YOU WANT TO PLAY AGAIN INPUT 5 IF NOT INPUT 2: " M
660 IF R < 0 GOTO 690
670 IF R > 0 GOTO 710
680 IF R = 0 GOTO 730
690 PRINT "YOU ARE NOW UNDER $" R
700 GOTO 740
710 PRINT "YOU ARE NOW AHEAD $" R
720 GOTO 740
730 PRINT "YOU ARE NOW EVEN AT 0"
740 IF M = 5 GOTO 140
750 IF R < 0 GOTO 780
760 IF R > 0 GOTO 800
770 IF R = 0 GOTO 820
780 PRINT "TOO BAD, YOU ARE IN THE HOLE. COME AGAIN."
790 GOTO 830
800 PRINT "CONGRATULATIONS---YOU CAME OUT A WINNER. COME AGAIN!"
810 GOTO 830
820 PRINT "CONGRATULATIONS---YOU CAME OUT EVEN, NOT BAD FOR AN AMATEUR"
830 END