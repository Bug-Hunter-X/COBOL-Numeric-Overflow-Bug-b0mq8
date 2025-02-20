01  WS-AREA. 
    05  WS-VAR1 PIC 9(5) VALUE 0. 
    05  WS-VAR2 PIC 9(9) VALUE 0. 

* Improved COBOL code to handle potential overflow 

ADD 1 TO WS-VAR1. 
IF WS-VAR1 > 99999 THEN
    DISPLAY "WARNING: WS-VAR1 exceeds maximum value. Resetting..." 
    MOVE 0 TO WS-VAR1
END-IF
ADD WS-VAR1 TO WS-VAR2. 
DISPLAY "WS-VAR1: " WS-VAR1. 
DISPLAY "WS-VAR2: " WS-VAR2.