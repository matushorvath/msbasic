; Inspired by https://github.com/beneater/msbasic

LOAD:
                rts

SAVE:
                rts


; On return, carry flag indicates whether a key was pressed
; If a key was pressed, the key value will be in the A register
;
; Modifies: flags, A
MONRDKEY:
CHRIN:
                lda     $FFF0
                sec
                rts


; Output a character (from the A register)
;
; Modifies: flags
MONCOUT:
CHROUT:
                sta     $FFF0
                rts

.segment "SYSVEC"
                .word   $0000           ; NMI vector
                .word   COLD_START      ; RESET vector
                .word   $0000           ; IRQ vector

