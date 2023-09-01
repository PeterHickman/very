10 PRINT "ROCKET"
20 PRINT "CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
30 PRINT
32 PRINT
70 PRINT "LUNAR LANDING SIMULATION"
80 PRINT "----- ------- ----------"
90 PRINT
200 PRINT "YOU ARE LANDING ON THE MOON AND AND HAVE TAKEN OVER MANUAL"
210 PRINT "CONTROL 1000 FEET ABOVE A GOOD LANDING SPOT. YOU HAVE A DOWN-"
220 PRINT "WARD VELOCITY OF 50 FEET/SEC. 150 UNITS OF FUEL REMAIN."
225 PRINT
230 PRINT "HERE ARE THE RULES THAT GOVERN YOUR APOLLO SPACE-CRAFT:"
231 PRINT
240 PRINT "(1) AFTER EACH SECOND THE HEIGHT, VELOCITY, AND REMAINING FUEL"
250 PRINT "    WILL BE REPORTED VIA DIGBY YOUR ON-BOARD COMPUTER."
260 PRINT "(2) AFTER THE REPORT A '?' WILL APPEAR. ENTER THE NUMBER"
270 PRINT "    OF UNITS OF FUEL YOU WISH TO BURN DURING THE NEXT"
280 PRINT "    SECOND. EACH UNIT OF FUEL WILL SLOW YOUR DESCENT BY"
290 PRINT "    1 FOOT/SEC."
310 PRINT "(3) THE MAXIMUM THRUST OF YOUR ENGINE IS 30 FEET/SEC/SEC"
320 PRINT "    OR 30 UNITS OF FUEL PER SECOND."
330 PRINT "(4) WHEN YOU CONTACT THE LUNAR SURFACE. YOUR DESCENT ENGINE"
340 PRINT "    WILL AUTOMATICALLY SHUT DOWN AND YOU WILL BE GIVEN A"
350 PRINT "    REPORT OF YOUR LANDING SPEED AND REMAINING FUEL."
360 PRINT "(5) IF YOU RUN OUT OF FUEL THE '?' WILL NO LONGER APPEAR"
370 PRINT "    BUT YOUR SECOND BY SECOND REPORT WILL CONTINUE UNTIL"
380 PRINT "    YOU CONTACT THE LUNAR SURFACE."
381 PRINT
390 PRINT "BEGINNING LANDING PROCEDURE.........."
391 PRINT
400 PRINT "G O O D  L U C K ! ! !"
420 PRINT
455 LET T = 0
456 LET H = 1000
457 LET V = 50
458 LET F = 150
490 PRINT "SEC=" T " FEET=" H " SPEED=" V " FUEL=" F
500 INPUT "? " B
510 IF B < 0 GOTO 650
520 IF B <= 30 GOTO 530
521 LET B = 30
530 IF B <= F GOTO 540
531 LET B = F
540 LET VV = V - B + 5
560 LET F = F - B
570 LET H = H - 0.5 * (V + VV)
580 IF H <= 0 GOTO 670
590 LET T = T + 1
600 LET V = VV
610 IF F > 0 GOTO 490
615 IF B = 0 GOTO 640
620 PRINT "**** OUT OF FUEL ****"
640 PRINT T " " H " " V " " F " I * "
650 LET B = 0
660 GOTO 540
670 PRINT "***** CONTACT *****"
680 LET H = H + 0.5 * (VV + V)
690 IF B = 5 GOTO 720
700 LET D = (-V + SQR(V * V + H * (8 * B))) / (5 - B)
710 GOTO 730
720 LET D = H / V
730 LET VV = V + (5 - B) * D
740 LET TD = t + D
760 PRINT "TOUCHDOWN AT " TD " SECONDS."
770 PRINT "LANDING VELOCITY=" VV " FEET/SEC."
780 PRINT F " UNITS OF FUEL REMAINING."
790 IF VV <> 0 GOTO 810
800 PRINT "CONGRATULATIONS! A PERFECT LANDING!!"
805 PRINT "YOUR LICENSE WILL BE RENEWED.......LATER."
810 IF ABS(VV) < 2 GOTO 840
820 PRINT "***** SORRY, BUT YOU BLEW IT!!!!"
830 PRINT "APPROPRIATE CONDOLENCES WILL BE SENT TO YOUR NEXT OF KIN."
840 PRINT
871 PRINT "CONTROL OUT."
872 PRINT
999 END
