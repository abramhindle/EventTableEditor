sr=44100
kr=32
ksmps=1378.125
nchnls=1   

gaout init 0

instr 100
it1 = p4
it2 = p5
kwg	oscil	1,.25,it2   
kwg = 20 + exp(abs(kwg)*8.69951474821019205286)
aincite	oscil	   22000,kwg,it1
;aout reverb2 aincite,.3
;out aout
out aincite
;gaout = gaout + aincite
endin

;;;;;;;;;;;;;;;;;
;; Setter
;;;;;;;;;;;;;;;;;
instr 6666
p3 = 1/44100
itable = p4	; table
iindex = p5	; index
tableiw     p6   , iindex, itable, 0, 0, 0 
endin
;;;;;;;;;;;;;;;;;
;; VOLUME
;;;;;;;;;;;;;;;;;
instr 6669
gaout reverb2 gaout,.5,.5
aincite	oscil	   14000,6000,6669
aout balance gaout, aincite
aout1 mirror aout,-32000,32000
out aout1
gaout = 0
endin
