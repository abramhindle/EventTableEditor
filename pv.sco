f 1  0 128 7 0 128
f 2  0 128 7 0 128
f 3  0 128 7 0 128
f 4  0 128 7 0 128
f 5  0 128 7 0 128
f 6  0 128 7 0 128
f 7  0 128 7 0 128
f 8  0 128 7 0 128
f 9  0 128 7 0 128
f 10 0 128 7 0 128
f 11  0 128 7 0 128
f 12  0 128 7 0 128
f 13  0 128 7 0 128
f 14  0 128 7 0 128
f 15  0 128 7 0 128
f 16  0 128 7 0 128
f 17  0 128 7 0 128
f 18  0 128 7 0 128
f 19  0 128 7 0 128
f 20  0 128 7 0 128
f 21  0 128 7 0 128
f 22  0 128 7 0 128
f 23  0 128 7 0 128
f 24  0 128 7 0 128
f 25  0 128 7 0 128
f 26  0 128 7 0 128
f 27  0 128 7 0 128
f 28  0 128 7 0 128
f 29  0 128 7 0 128
f 29  0 128 7 0 128
f 98  0 256 7 0 256
f 99  0 256 7 0 256
; schedule instrument 99 using table 99 0.15 duration, instrument 1 uses tables 1 2 3
i 9999 0 3600 99 99 0.05 1
; schedule instrument 99 using table 98 0.15 duration, instrument 1 uses tables 4 5 6
i 9999 0 3600 98 99 0.05 4

;r3600 REPSMACRO
;i 1    0.0 0.15 
;i 1    0.1 0.15
;i 1    0.2 0.15  
;i 1    0.3 0.15  
;i 1    0.4 0.15  
;i 1    0.5 0.15  
;i 1    0.6 0.15  
;i 1    0.7 0.15  
;i 1    0.9 0.15  
;s
