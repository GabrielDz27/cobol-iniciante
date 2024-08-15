      *----------------------------------------------------------------*
      *ATHOR:          GABRIEL FERREIRA                                *
      *DATE:           15/08/2024                                      *
      *NAME PROGRAM:   ARRAY 01                                        *
      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
       PROGRAM-ID. AP010.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DD-SEMANA.
          03 FILLER       PIC X(9) VALUE '01DOMINGO'.
          03 FILLER       PIC X(9) VALUE '02SEGUNDA'.
          03 FILLER       PIC X(9) VALUE '03TECA'.
          03 FILLER       PIC X(9) VALUE '04QUARTA'.
          03 FILLER       PIC X(9) VALUE '05QUINTA'.
          03 FILLER       PIC X(9) VALUE '06SEXTA'.
          03 FILLER       PIC X(9) VALUE '07SABADO'. 
       01 FILLER REDEFINES WS-DD-SEMANA OCCURS 7 TIMES.
          03 WS-N-DD      PIC 99.
          03 WS-NM-DD     PIC X(07).
        
       01 WS-IND          PIC 99.

       PROCEDURE DIVISION.
       
           DISPLAY "********* PROGRAMA DE ARRY **********"
           
           MOVE ZEROS                TO WS-IND
           
           DISPLAY "NUMERO:     NOME:     "
           PERFORM VARYING WS-IND FROM 1 BY 1 UNTIL WS-IND EQUAL 8
           
           DISPLAY " " WS-N-DD(WS-IND) "         " WS-NM-DD(WS-IND)

           END-PERFORM.

           STOP RUN.
       END PROGRAM AP010.


