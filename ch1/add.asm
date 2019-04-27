*
* For more and better, see
* https://s3.amazonaws.com/s3data.computerhistory.org/atchm/documents/102723981-05-01-acc.pdf
*

LHS     EQU $80
RHS     EQU $81
RESULT  EQU $82

*
*       Main Program
*
        ORG $300
        LDA #2
        STA LHS
        STA RHS
        JSR ADD     ; answer is 4 
        HLT

*
*       Add Subroutine: add LHS and RHS, result stored in RESULT
*       6 cycles, so long as you keep all the above in the zero page!
*
ADD     LDA LHS
        ADC RHS         ; Add with carry
        STA RESULT
        RTS

