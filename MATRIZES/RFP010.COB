      *----------------------------------------------------------------*
      *ATHOR:          GABRIEL FERREIRA                                *
      *DATE:           15/08/2024                                      *
      *NAME PROGRAM:   ARRAY 02                                        *
      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RFP010.
      *--------------------REGISTRO FINANCEIRO-------------------------*
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WS-CONTRATO.
          03 WS-REG-FIN.
             05 WS-NUM-CONTRATO              PIC 9(05).
             05 WS-NUM-PRESTACAO             PIC 9(03).
             05 WS-PRESTACAO OCCURS 1 TO 420 TIMES
                             DEPENDING  ON 
                             WS-NUM-PRESTACAO PIC 9(3)V99.

       77 WS-IND                            PIC 9(03).
       77 WS-VRL-AUX                        PIC 9(3)V99.   
      
       PROCEDURE DIVISION.
       
           DISPLAY "********* PROGRAMA DE ARRY **********"
           
           DISPLAY "INFORME  O NUMERO DE PRESTACOES: "
           ACCEPT WS-NUM-PRESTACAO

           DISPLAY "INFORME O VALOR DA PRESTACAO: "
           ACCEPT WS-VRL-AUX


      ***************ALIMENTADOR DO ARRY********************************
           IF WS-NUM-PRESTACAO > 420 THEN 
      */   Poderia usar GREATER THAN em vez de usar o convencional '>'.|
               DISPLAY 'NUMERO INVALIDO'
           ELSE 
               PERFORM VARYING WS-IND FROM 1 BY 1 UNTIL
                WS-IND < WS-NUM-PRESTACAO

                MOVE WS-VRL-AUX  TO WS-PRESTACAO(WS-IND)
                END-PERFORM
                                           
           END-IF
           
           

      ***************LEITOR DO ARRY********************************
           MOVE ZEROS TO WS-IND    
           DISPLAY "SUA TABELA---------------"
           PERFORM VARYING WS-IND FROM 1 BY 1 UNTIL
                                            WS-IND < WS-NUM-PRESTACAO
    
           DISPLAY "PRESTACAO: " WS-IND' VALOR: ' WS-PRESTACAO(WS-IND)
    
           END-PERFORM
         

      */    MOVE ZEROS                TO WS-IND                        |
                                                
      */   DISPLAY "NUMERO:     NOME:     "                            |
      */   PERFORM VARYING WS-IND FROM 1 BY 1 UNTIL WS-IND EQUAL 8     |
           
      */  DISPLAY " " WS-N-DD(WS-IND) "         " WS-NM-DD(WS-IND)     |

      */   END-PERFORM.                                                |

           STOP RUN.
       END PROGRAM RFP010.
