10 REM Copied from http://www.vintage-basic.net/games.html
20 PRINT "STARS"
30 PRINT "CREATIVE COMPUTING MORRISTOWN, NEW JERSEY"
40 PRINT
50 PRINT
60 PRINT
70 REM *** STARS - PEOPLE'S COMPUTER CENTER, MENLO PARK, CA
80 REM *** A IS LIMIT ON NUMBER, M IS NUMBER OF GUESSES
90 LET A = 100
100 LET M = 7
110 REM *** INSTRUCTIONS ON HOW TO PLAY
120 PRINT "I AM THINKING OF A WHOLE NUMBER FROM 1 TO " A
130 PRINT "TRY TO GUESS MY NUMBER. AFTER YOU GUESS, I"
140 PRINT "WILL TYPE ONE OR MORE STARS (*). THE MORE"
150 PRINT "STARS I TYPE, THE CLOSER YOU ARE TO MY NUMBER."
160 PRINT "ONE STAR (*) MEANS FAR AWAY, SEVEN STARS (*******)"
170 PRINT "MEANS REALLY CLOSE! YOU GET " M " GUESSES."
180 REM *** COMPUTER THINKS OF A NUMBER
190 PRINT
200 PRINT
210 LET X = RND(A)
220 PRINT "OK, I AM THINKING OF A NUMBER, START GUESSING."
230 REM *** GUESSING BEGINS, HUMAN GETS M GUESSES
240 LET K = 1
250 PRINT
260 INPUT "YOUR GUESS " G
280 IF G = X GOTO 500
290 LET D = ABS(G - X)
300 IF D >= 64 GOTO 420
310 IF D >= 32 GOTO 410
320 IF D >= 16 GOTO 400
330 IF D >= 8 GOTO 390
340 IF D >= 4 GOTO 380
350 IF D >= 2 GOTO 370
360 PRINT "*" ;
370 PRINT "*" ;
380 PRINT "*" ;
390 PRINT "*" ;
400 PRINT "*" ;
410 PRINT "*" ;
420 PRINT "*" ;
430 PRINT
440 LET K = K + 1
441 IF K < M GOTO 250
450 REM *** DID NOT GUESS IN M GUESSES
460 PRINT
470 PRINT "SORRY, THAT'S " M " GUESSES. THE NUMBER WAS " X
480 GOTO 540
490 REM *** WE HAVE A WINNER
500 PRINT
510 PRINT "*******************************************************************************"
520 PRINT
530 PRINT "YOU GOT IT IN " K " GUESSES!!! LET'S PLAY AGAIN..."
540 GOTO 190
550 END