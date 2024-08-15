      *----------------------------------------------------------------
      *                          CAIXA ELETRONICA                  
      *----------------------------------------------------------------
       IDENTIFICATION DIVISION.
      *_______________________________________________________________
      *
       PROGRAM-ID. CEP010.
       AUTHOR. "Gabriel Dziecinny"
       DATE-WRITTEN. 14/08/2024.
       
      *----------------------------------------------------------------*
      *SISTEMA:     CE - CAIXA ELETRONICA 
      *JOB:         01 - OPERACOES    
      *PROGRAMA:     0 - COMECO DE TUDO
      *
      *
      *----------------------------------------------------------------*
        
      *----------------------------------------------------------------*
       DATA DIVISION.

           WORKING-STORAGE SECTION.
           77 WS-OPCAO PIC X(2).
           77 WS-SALDO PIC 9(10)V99 VALUE ZERO.
           77 WS-DEPOSITO PIC 9(10)V99 VALUE ZERO.
           77 WS-SAQUE PIC 9(10)V99 VALUE ZERO.
       PROCEDURE DIVISION.
           P001-MENU1.
               DISPLAY "+----------------+".
               DISPLAY "| BANCO CODE MEU |".
               DISPLAY "+----------------+".
               DISPLAY "1 - DEPOSITO".
               DISPLAY "2 - SAQUE".
               DISPLAY "3 - CONSULTAR O SALDO".
               DISPLAY "4 - SAIR".
               ACCEPT WS-OPCAO.

           EVALUATE WS-OPCAO   
               WHEN '1'
                   DISPLAY "+----------------+"
                   DISPLAY "| BANCO CODE MEU |"
                   DISPLAY "+----------------+"
                   DISPLAY "DIGITE O VALOR  DO DEPOSITO: "
                   ACCEPT WS-DEPOSITO
                   COMPUTE WS-SALDO = WS-SALDO +WS-DEPOSITO
                   DISPLAY "DEPOSITO EFETIVADO"
                   PERFORM P001-MENU1
               WHEN '2'
                   DISPLAY "+----------------+"
                   DISPLAY "| BANCO CODE MEU |"
                   DISPLAY "+----------------+"
                   DISPLAY "DIGITE O VALOR DO SAQUE"
                   ACCEPT WS-SAQUE
                   IF WS-SAQUE > WS-SALDO
                   THEN
                       DISPLAY "SALDO INSIFICIENTE PARA OPERAÇÃO"
                   ELSE 
                       COMPUTE WS-SALDO = WS-SALDO - WS-SAQUE
                       DISPLAY "SAQUE EFETIVADO"
                   END-IF
                   PERFORM P001-MENU1
               WHEN '3'
                   DISPLAY "+----------------+"
                   DISPLAY "| BANCO CODE MEU |"
                   DISPLAY "+----------------+"
                   DISPLAY "O SEU SALDO É DE: " WS-SALDO
                   PERFORM P001-MENU1
               WHEN '4'
                   DISPLAY "OBRIGADO POR UTILIZAR O NOSSO SISTEMA" 
                   CONTINUE 
               WHEN OTHER 
                   PERFORM P001-MENU1
           END-EVALUATE.
           STOP RUN.
           END PROGRAM CEP010.