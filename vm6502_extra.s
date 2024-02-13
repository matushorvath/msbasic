; Inspired by https://github.com/beneater/msbasic

; TODO implement

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
                .byte $22
                clc
                rts


; Output a character (from the A register)
;
; Modifies: flags
MONCOUT:
CHROUT:
                .byte $42
                rts

; TODO set up reset vector

;.segment "RESETVEC"
;                .word   $0F00           ; NMI vector
;                .word   RESET           ; RESET vector
;                .word   $0000           ; IRQ vector

