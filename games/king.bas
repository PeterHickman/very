10 PRINT "KING"
20 PRINT "CREATIVE COMPUTING MORRISTOWN, NEW JERSEY"
30 PRINT
40 PRINT
50 PRINT
60 LET N5 = 8
70 PRINT "CONGRATULATIONS! YOU'VE JUST BEEN ELECTED PREMIER OF SETATS"
80 PRINT "DETINU, A SMALL COMMUNIST ISLAND 30 BY 70 MILES LONG. YOUR"
90 PRINT "JOB IS TO DECIDE UPON THE CONTRY'S BUDGET AND DISTRIBUTE"
100 PRINT "MONEY TO YOUR COUNTRYMEN FROM THE COMMUNAL TREASURY."
110 PRINT "THE MONEY SYSTEM IS RALLODS, AND EACH PERSON NEEDS 100"
120 PRINT "RALLODS PER YEAR TO SURVIVE. YOUR COUNTRY'S INCOME COMES"
130 PRINT "FROM FARM PRODUCE AND TOURISTS VISITING YOUR MAGNIFICENT"
140 PRINT "FORESTS, HUNTING, FISHING, ETC. HALF YOUR LAND IS FARM LAND"
150 PRINT "WHICH ALSO HAS AN EXCELLENT MINERAL CONTENT AND MAY BE SOLD"
160 PRINT "TO FOREIGN INDUSTRY (STRIP MINING) WHO IMPORT AND SUPPORT"
170 PRINT "THEIR OWN WORKERS. CROPS COST BETWEEN 10 AND 15 RALLODS PER"
180 PRINT "SQUARE MILE TO PLANT."
190 PRINT "YOUR GOAL IS TO COMPLETE YOUR" N5 "YEAR TERM OF OFFICE."
200 PRINT "GOOD LUCK!"
210 PRINT
220 LET A = 60000 + RND(1000) - RND(1000)
230 LET B = 500 + RND(10) - RND(10)
240 LET D = 2000
250 LET W = RND(10) + 95
260 PRINT
270 PRINT "YOU NOW HAVE" A "RALLODS IN THE TREASURY."
280 PRINT B "COUNTRYMEN, " ;
290 LET V9 = INT(((RND(1) / 2) * 10 + 10))
300 IF C = 0 THEN 320
310 PRINT C "FOREIGN WORKERS, " ;
320 PRINT "AND" D "SQ. MILES OF LAND."
330 PRINT "THIS YEAR INDUSTRY WILL BUY LAND FOR" W
340 PRINT "RALLODS PER SQUARE MILE."
350 PRINT "LAND CURRENTLY COSTS" V9 "RALLODS PER SQUARE MILE TO PLANT."
360 PRINT
370 INPUT "HOW MANY SQUARE MILES DO YOU WISH TO SELL TO INDUSTRY" H
380 IF H < 0 THEN 370
390 LET TEMP = D - 1000
400 IF H <= TEMP THEN 490
410 PRINT "*** THINK AGAIN. YOU ONLY HAVE" TEMP "SQUARE MILES OF FARM LAND."
420 IF X <> 0 THEN 370
430 PRINT
440 PRINT "(FOREIGN INDUSTRY WILL ONLY BUY FARM LAND BECAUSE"
450 PRINT "FOREST LAND IS UNECONOMICAL TO STRIP MINE DUE TO TREES,"
460 PRINT "THICKER TOP SOIL, ETC.)"
470 LET X = 1
480 GOTO 370
490 LET D = INT(D - H)
500 LET A = INT(A + (H * W))
510 INPUT "HOW MANY RALLODS WILL YOU DISTRIBUTE AMONG YOUR COUNTRYMEN" I
520 IF I < 0 THEN 510
530 IF I < A THEN 610
540 IF I = A THEN 570
550 PRINT " THINK AGAIN. YOU'VE ONLY" A " RALLODS IN THE TREASURY"
560 GOTO 510
570 LET J = 0
580 LET K = 0
590 LET A = 0
600 GOTO 960
610 LET A = INT(A - I)
620 INPUT "HOW MANY SQUARE MILES DO YOU WISH TO PLANT" J
630 IF J < 0 THEN 620
640 LET TEMP = B * 2
650 IF J <= TEMP THEN 680
660 PRINT " SORRY, BUT EACH COUNTRYMAN CAN ONLY PLANT 2 SQ. MILES."
670 GOTO 620
680 LET TEMP = D - 1000
690 IF J <= TEMP THEN 720
700 PRINT " SORRY, BUT YOU'VE ONLY" TEMP "SQ. MILES OF FARM LAND."
710 GOTO 620
720 LET U1 = INT(J * V9)
730 IF U1 < A THEN 800
740 IF U1 = A THEN 770
750 PRINT " THINK AGAIN. YOU'VE ONLY" A " RALLODS LEFT IN THE TREASURY."
760 GOTO 620
770 LET K = 0
780 LET A = 0
790 GOTO 960
800 LET A = A - U1
810 INPUT "HOW MANY RALLODS DO YOU WISH TO SPEND ON POLLUTION CONTROL" K
820 IF K < 0 THEN 810
830 IF K <= A THEN 960
840 PRINT " THINK AGAIN. YOU ONLY HAVE " A " RALLODS REMAINING."
850 GOTO 810
860 IF H <> 0 THEN 970
870 IF I <> 0 THEN 970
880 IF J <> 0 THEN 970
890 IF K <> 0 THEN 970
900 PRINT
910 PRINT "GOODBYE."
920 PRINT "(IF YOU WISH TO CONTINUE THIS GAME AT A LATER DATE, ANSWER"
930 PRINT "'AGAIN' WHEN ASKED IF YOU WANT INSTRUCTIONS AT THE START"
940 PRINT "OF THE GAME)."
950 END
960 GOTO 860
970 PRINT
980 PRINT
990 LET A = INT(A - K)
1000 LET A4 = A
1010 LET TEMP = INT(I / 100 - B)
1020 IF TEMP >= 0 THEN 1070
1030 LET TEMP = I / 100
1040 IF TEMP < 50 THEN 2270
1050 LET TEMP = INT(B - (I / 100))
1060 PRINT TEMP "COUNTRYMEN DIED OF STARVATION"
1070 LET F1 = INT(RND(1) * (2000 - D))
1080 IF K < 25 THEN 1100
1090 LET F1 = INT(F1 / (K / 25))
1100 IF F1 <= 0 THEN 1120
1110 PRINT F1 "COUNTRYMEN DIED OF CARBON-MONOXIDE AND DUST INHALATION"
1120 LET TEMP = INT((I / 100) - B)
1130 IF TEMP < 0 THEN 1160
1140 IF F1 > 0 THEN 1210
1150 GOTO 1300
1160 LET TEMP = INT((F1 + (B - (I / 100))) * 9)
1170 PRINT " YOU WERE FORCED TO SPEND" TEMP "RALLODS ON FUNERAL EXPENSES"
1180 LET B5 = INT(F1 + (B - (I / 100)))
1190 LET A = INT(A - ((F1 + (B - (I / 100))) * 9))
1200 GOTO 1250
1210 LET TEMP = INT(F1 * 9)
1220 PRINT " YOU WERE FORCED TO SPEND " TEMP "RALLODS ON FUNERAL EXPENSES."
1230 LET B5 = F1
1240 LET A = INT(A - (F1 * 9))
1250 IF A >= 0 THEN 1290
1260 PRINT " INSUFFICIENT RESERVES TO COVER COST - LAND WAS SOLD"
1270 LET D = INT(D + (A / W))
1280 LET A = 0
1290 LET B = INT(B - B5)
1300 IF H = 0 THEN 1350
1310 LET C1 = INT(H + RND(10) - RND(20))
1320 IF C > 0 THEN 1340
1330 LET C1 = C1 + 20
1340 PRINT C1 "WORKERS CAME TO THE COUNTRY AND";
1350 LET P1 = INT(((I / 100 - B) / 10) + (K / 25) - ((2000 - D) / 50) - (F1 / 2))
1360 LET TEMP = ABS(P1)
1370 PRINT TEMP "COUNTRYMEN ";
1380 IF P1 < 0 THEN 1410
1390 PRINT "CAME TO";
1400 GOTO 1420
1410 PRINT "LEFT";
1420 PRINT " THE ISLAND."
1430 LET B = INT(B + P1)
1440 LET C = INT(C + C1)
1450 LET U2 = INT(((2000 - D) * ((RND(1) + 1.5) / 2)))
1460 IF C = 0 THEN 1490
1470 LET TEMP = INT(J)
1480 PRINT "OF " TEMP "SQ. MILES PLANTED,";
1490 IF J > U2 THEN 1510
1500 LET U2 = J
1510 LET TEMP = INT(J - U2)
1520 PRINT " YOU HARVESTED " TEMP "SQ. MILES OF CROPS."
1530 IF U2 = 0 THEN 1590
1540 IF T1 >= 2 THEN 1590
1550 PRINT " (DUE TO ";
1560 IF T1 = 0 THEN 1580
1570 PRINT "INCREASED ";
1580 PRINT "AIR AND WATER POLLUTION FROM FOREIGN INDUSTRY.)"
1590 LET Q = INT((J - U2) * (W / 2))
1600 LET TEMP = INT(Q)
1610 PRINT "MAKING" TEMP "RALLODS."
1620 LET A = INT(A + Q)
1630 LET V1 = INT(((B - P1) * 22) + RND(500))
1640 LET V2 = INT((2000 - D) * 15)
1650 LET TEMP = ABS(INT(V1 - V2))
1660 PRINT " YOU MADE" TEMP "RALLODS FROM TOURIST TRADE."
1670 IF V2 = 0 THEN 1770
1680 LET TEMP = V1 - V2
1690 IF TEMP >= V3 THEN 1770
1700 PRINT " DECREASE BECAUSE ";
1710 LET G1 = RND(10)
1720 IF G1 <= 2 THEN 1800
1730 IF G1 <= 4 THEN 1820
1740 IF G1 <= 6 THEN 1840
1750 IF G1 <= 8 THEN 1860
1760 IF G1 <= 10 THEN 1880
1770 LET V3 = INT(A + V3)
1780 LET A = INT(A + V3)
1790 GOTO 1900
1800 PRINT "FISH POPULATION HAS DWINDLED DUE TO WATER POLLUTION."
1810 GOTO 1770
1820 PRINT "AIR POLLUTION IS KILLING GAME BIRD POPULATION."
1830 GOTO 1770
1840 PRINT "MINERAL BATHS ARE BEING RUINED BY WATER POLLUTION."
1850 GOTO 1770
1860 PRINT "UNPLEASANT SMOG IS DISCOURAGING SUN BATHERS."
1870 GOTO 1770
1880 PRINT "HOTELS ARE LOOKING SHABBY DUE TO SMOG GRIT."
1890 GOTO 1770
1900 IF B5 > 200 THEN 2120
1910 IF B < 343 THEN 2270
1920 LET TEMP = A4 / 100
1930 IF TEMP > 5 THEN 2330
1940 IF C > B THEN 1980
1950 LET TEMP = N5 - 1
1960 IF TEMP = X5 THEN 2440
1970 GOTO 2710
1980 PRINT
1990 PRINT
2000 PRINT "THE NUMBER OF FOREIGN WORKERS HAS EXCEEDED THE NUMBER"
2010 PRINT "OF COUNTRYMEN. AS A MINORITY, THEY HAVE REVOLTED AND"
2020 PRINT "TAKEN OVER THE COUNTRY."
2030 LET TEMP = RND(2)
2040 IF TEMP = 1 THEN 2080
2050 PRINT "YOU HAVE BEEN THROWN OUT OF OFFICE AND ARE NOW"
2060 PRINT "RESIDING IN PRISON."
2070 GOTO 2090
2080 PRINT "YOU HAVE BEEN ASSASSINATED."
2090 PRINT
2100 PRINT
2110 END
2120 PRINT
2130 PRINT
2140 PRINT B5 "COUNTRYMEN DIED IN ONE YEAR!!!!!"
2150 PRINT "DUE TO THIS EXTREME MISMANAGEMENT, YOU HAVE NOT ONLY"
2160 PRINT "BEEN IMPEACHED AND THROWN OUT OF OFFICE, BUT YOU"
2170 LET M6 = RND(10)
2180 IF M6 <= 3 THEN 2210
2190 IF M6 <= 6 THEN 2230
2200 IF M6 <= 10 THEN 2250
2210 PRINT "ALSO HAD YOUR LEFT EYE GOUGED OUT!"
2220 GOTO 2090
2230 PRINT "HAVE ALSO GAINED A VERY BAD REPUTATION."
2240 GOTO 2090
2250 PRINT "HAVE ALSO BEEN DECLARED NATIONAL FINK."
2260 GOTO 2090
2270 PRINT
2280 PRINT
2290 PRINT "OVER ONE THIRD OF THE POPULTATION HAS DIED SINCE YOU"
2300 PRINT "WERE ELECTED TO OFFICE. THE PEOPLE (REMAINING)"
2310 PRINT "HATE YOUR GUTS."
2320 GOTO 2030
2330 LET TEMP = B5 - F1
2340 IF TEMP < 2 THEN 1940
2350 PRINT
2360 PRINT "MONEY WAS LEFT OVER IN THE TREASURY WHICH YOU DID"
2370 PRINT "NOT SPEND. AS A RESULT, SOME OF YOUR COUNTRYMEN DIED"
2380 PRINT "OF STARVATION. THE PUBLIC IS ENRAGED AND YOU HAVE"
2390 PRINT "BEEN FORCED TO EITHER RESIGN OR COMMIT SUICIDE."
2400 PRINT "THE CHOICE IS YOURS."
2410 PRINT "IF YOU CHOOSE THE LATTER, PLEASE TURN OFF YOUR COMPUTER"
2420 PRINT "BEFORE PROCEEDING."
2430 GOTO 2090
2440 PRINT
2450 PRINT
2460 PRINT "CONGRATULATIONS!!!!!!!!!!!!!!!!!!"
2470 PRINT "YOU HAVE SUCCESFULLY COMPLETED YOUR" N5 "YEAR TERM"
2480 PRINT "OF OFFICE. YOU WERE, OF COURSE, EXTREMELY LUCKY, BUT"
2490 PRINT "NEVERTHELESS, IT'S QUITE AN ACHIEVEMENT. GOODBYE AND GOOD"
2500 PRINT "LUCK - YOU'LL PROBABLY NEED IT IF YOU'RE THE TYPE THAT"
2510 PRINT "PLAYS THIS GAME."
2520 GOTO 2090
2530 INPUT "HOW MANY YEARS HAD YOU BEEN IN OFFICE WHEN INTERRUPTED" X5
2540 IF X5 < 0 THEN 2090
2550 IF X5 < 8 THEN 2580
2560 PRINT " COME ON, YOUR TERM IN OFFICE IS ONLY" N5 "YEARS."
2570 GOTO 2530
2580 INPUT "HOW MUCH DID YOU HAVE IN THE TREASURY" A
2590 IF A < 0 THEN 2090
2600 INPUT "HOW MANY COUNTRYMEN" B
2610 IF B < 0 THEN 2090
2620 INPUT "HOW MANY WORKERS" C
2630 IF C < 0 THEN 2090
2640 INPUT "HOW MANY SQUARE MILES OF LAND" C
2650 IF D < 0 THEN 2090
2660 IF D > 2000 THEN 2680
2670 IF D > 1000 THEN 250
2680 PRINT " COME ON, YOU STARTED WITH 1000 SQ. MILES OF FARM LAND"
2690 PRINT " AND 10,000 SQ. MILES OF FOREST LAND."
2700 GOTO 2640
2710 LET X5 = X5 + 1
2720 LET B5 = 0
2730 GOTO 250
2740 END