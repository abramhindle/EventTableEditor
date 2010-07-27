;sr=22050
sr=44100
kr=441
ksmps=100
;ksmps=689.0625
nchnls=1   

gaout init 0

;instr 1 ; Scheduler
;	it1 = p4
;	instrnum = p5
;kincite	oscil	   1,.25,it1
;kincite = abs(kincite)
;;;schedkwhen kincite, 0, 30, instrnum, 0.001, 0.001, 1, kincite
;schedkwhen kincite, 0, 30, instrnum, 0.001, 0.001, kincite
;endin

instr 1

kincite7001 oscil 1,.25,1
kincite7001 = abs(kincite7001)

kincite7002 oscil 1,.25,2
kincite7002 = abs(kincite7002)

kincite7003 oscil 1,.25,3
kincite7003 = abs(kincite7003)

kincite7004 oscil 1,.25,4
kincite7004 = abs(kincite7004)

kincite7005 oscil 1,.25,5
kincite7005 = abs(kincite7005)

kincite7006 oscil 1,.25,6
kincite7006 = abs(kincite7006)

kincite7007 oscil 1,.25,7
kincite7007 = abs(kincite7007)

kincite7008 oscil 1,.25,8
kincite7008 = abs(kincite7008)

kincite7009 oscil 1,.25,9
kincite7009 = abs(kincite7009)

kincite7010 oscil 1,.25,10
kincite7010 = abs(kincite7010)

kincite7011 oscil 1,.25,11
kincite7011 = abs(kincite7011)

kincite7012 oscil 1,.25,12
kincite7012 = abs(kincite7012)

kincite7013 oscil 1,.25,13
kincite7013 = abs(kincite7013)

kincite7014 oscil 1,.25,14
kincite7014 = abs(kincite7014)

kincite7015 oscil 1,.25,15
kincite7015 = abs(kincite7015)

kincite7016 oscil 1,.25,16
kincite7016 = abs(kincite7016)

kincite7017 oscil 1,.25,17
kincite7017 = abs(kincite7017)

kincite7018 oscil 1,.25,18
kincite7018 = abs(kincite7018)

kincite7019 oscil 1,.25,19
kincite7019 = abs(kincite7019)

kincite7020 oscil 1,.25,20
kincite7020 = abs(kincite7020)

kincite7021 oscil 1,.25,21
kincite7021 = abs(kincite7021)

kincite7022 oscil 1,.25,22
kincite7022 = abs(kincite7022)

kincite7023 oscil 1,.25,23
kincite7023 = abs(kincite7023)

kincite7024 oscil 1,.25,24
kincite7024 = abs(kincite7024)

kincite7025 oscil 1,.25,25
kincite7025 = abs(kincite7025)

kincite7026 oscil 1,.25,26
kincite7026 = abs(kincite7026)

kincite7027 oscil 1,.25,27
kincite7027 = abs(kincite7027)

kincite7028 oscil 1,.25,28
kincite7028 = abs(kincite7028)

kincite7029 oscil 1,.25,29
kincite7029 = abs(kincite7029)


;schedkwhen kincite7001, 0, 30, 7001, 0.001, 0.001, .75*kincite7001+.25
schedkwhen kincite7001, 0.01, 10, 7001, 0.001, 0.001, .75*kincite7001+.25

;schedkwhen kincite7002, 0, 30, 7002, 0.001, 0.001, .75*kincite7002+.25
schedkwhen kincite7002, 0.01, 10, 7002, 0.001, 0.001, .75*kincite7002+.25

;schedkwhen kincite7003, 0, 30, 7003, 0.001, 0.001, .75*kincite7003+.25
schedkwhen kincite7003, 0.01, 10, 7003, 0.001, 0.001, .75*kincite7003+.25

;schedkwhen kincite7004, 0, 30, 7004, 0.001, 0.001, .75*kincite7004+.25
schedkwhen kincite7004, 0.01, 10, 7004, 0.001, 0.001, .75*kincite7004+.25

;schedkwhen kincite7005, 0, 30, 7005, 0.001, 0.001, .75*kincite7005+.25
schedkwhen kincite7005, 0.01, 10, 7005, 0.001, 0.001, .75*kincite7005+.25

;schedkwhen kincite7006, 0, 30, 7006, 0.001, 0.001, .75*kincite7006+.25
schedkwhen kincite7006, 0.01, 10, 7006, 0.001, 0.001, .75*kincite7006+.25

;schedkwhen kincite7007, 0, 30, 7007, 0.001, 0.001, .75*kincite7007+.25
schedkwhen kincite7007, 0.01, 10, 7007, 0.001, 0.001, .75*kincite7007+.25

;schedkwhen kincite7008, 0, 30, 7008, 0.001, 0.001, .75*kincite7008+.25
schedkwhen kincite7008, 0.01, 10, 7008, 0.001, 0.001, .75*kincite7008+.25

;schedkwhen kincite7009, 0, 30, 7009, 0.001, 0.001, .75*kincite7009+.25
schedkwhen kincite7009, 0.01, 10, 7009, 0.001, 0.001, .75*kincite7009+.25

;schedkwhen kincite7010, 0, 30, 7010, 0.001, 0.001, .75*kincite7010+.25
schedkwhen kincite7010, 0.01, 10, 7010, 0.001, 0.001, .75*kincite7010+.25

;schedkwhen kincite7011, 0, 30, 7011, 0.001, 0.001, .75*kincite7011+.25
schedkwhen kincite7011, 0.01, 10, 7011, 0.001, 0.001, .75*kincite7011+.25

;schedkwhen kincite7012, 0, 30, 7012, 0.001, 0.001, .75*kincite7012+.25
schedkwhen kincite7012, 0.01, 10, 7012, 0.001, 0.001, .75*kincite7012+.25

;schedkwhen kincite7013, 0, 30, 7013, 0.001, 0.001, .75*kincite7013+.25
schedkwhen kincite7013, 0.01, 10, 7013, 0.001, 0.001, .75*kincite7013+.25

;schedkwhen kincite7014, 0, 30, 7014, 0.001, 0.001, .75*kincite7014+.25
schedkwhen kincite7014, 0.01, 10, 7014, 0.001, 0.001, .75*kincite7014+.25

;schedkwhen kincite7015, 0, 30, 7015, 0.001, 0.001, .75*kincite7015+.25
schedkwhen kincite7015, 0.01, 10, 7015, 0.001, 0.001, .75*kincite7015+.25

;schedkwhen kincite7016, 0, 30, 7016, 0.001, 0.001, .75*kincite7016+.25
schedkwhen kincite7016, 0.01, 10, 7016, 0.001, 0.001, .75*kincite7016+.25

;schedkwhen kincite7017, 0, 30, 7017, 0.001, 0.001, .75*kincite7017+.25
schedkwhen kincite7017, 0.01, 10, 7017, 0.001, 0.001, .75*kincite7017+.25

;schedkwhen kincite7018, 0, 30, 7018, 0.001, 0.001, .75*kincite7018+.25
schedkwhen kincite7018, 0.01, 10, 7018, 0.001, 0.001, .75*kincite7018+.25

;schedkwhen kincite7019, 0, 30, 7019, 0.001, 0.001, .75*kincite7019+.25
schedkwhen kincite7019, 0.01, 10, 7019, 0.001, 0.001, .75*kincite7019+.25

;schedkwhen kincite7020, 0, 30, 7020, 0.001, 0.001, .75*kincite7020+.25
schedkwhen kincite7020, 0.01, 10, 7020, 0.001, 0.001, .75*kincite7020+.25

;schedkwhen kincite7021, 0, 30, 7021, 0.001, 0.001, .75*kincite7021+.25
schedkwhen kincite7021, 0.01, 10, 7021, 0.001, 0.001, .75*kincite7021+.25

;schedkwhen kincite7022, 0, 30, 7022, 0.001, 0.001, .75*kincite7022+.25
schedkwhen kincite7022, 0.01, 10, 7022, 0.001, 0.001, .75*kincite7022+.25

;schedkwhen kincite7023, 0, 30, 7023, 0.001, 0.001, .75*kincite7023+.25
schedkwhen kincite7023, 0.01, 10, 7023, 0.001, 0.001, .75*kincite7023+.25

;schedkwhen kincite7024, 0, 30, 7024, 0.001, 0.001, .75*kincite7024+.25
schedkwhen kincite7024, 0.01, 10, 7024, 0.001, 0.001, .75*kincite7024+.25

;schedkwhen kincite7025, 0, 30, 7025, 0.001, 0.001, .75*kincite7025+.25
schedkwhen kincite7025, 0.01, 10, 7025, 0.001, 0.001, .75*kincite7025+.25

;schedkwhen kincite7026, 0, 30, 7026, 0.001, 0.001, .75*kincite7026+.25
schedkwhen kincite7026, 0.01, 10, 7026, 0.001, 0.001, .75*kincite7026+.25

;schedkwhen kincite7027, 0, 30, 7027, 0.001, 0.001, .75*kincite7027+.25
schedkwhen kincite7027, 0.01, 10, 7027, 0.001, 0.001, .75*kincite7027+.25

;schedkwhen kincite7028, 0, 30, 7028, 0.001, 0.001, .75*kincite7028+.25
schedkwhen kincite7028, 0.01, 10, 7028, 0.001, 0.001, .75*kincite7028+.25

;schedkwhen kincite7029, 0, 30, 7029, 0.001, 0.001, .75*kincite7029+.25
schedkwhen kincite7029, 0.01, 10, 7029, 0.001, 0.001, .75*kincite7029+.25

endin


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
;gaout reverb2 gaout,.5,.5
aincite	oscil	   14000,6000,6669
aout balance gaout, aincite
aout1 mirror aout,-32000,32000
out aout1
gaout = 0
endin

;;;;;;;;;;;;;;;;;
;; Generated Intrmunets
;;;;;;;;;;;;;;;;;


instr 7001
	isize   filelen "./Intkit_-_00.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_00.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7002
	isize   filelen "./Intkit_-_01.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_01.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7003
	isize   filelen "./Intkit_-_02.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_02.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7004
	isize   filelen "./Intkit_-_03.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_03.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7005
	isize   filelen "./Intkit_-_04.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_04.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7006
	isize   filelen "./Intkit_-_05.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_05.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7007
	isize   filelen "./Intkit_-_06.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_06.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7008
	isize   filelen "./Intkit_-_07.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_07.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7009
	isize   filelen "./Intkit_-_08.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_08.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7010
	isize   filelen "./Intkit_-_09.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_09.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7011
	isize   filelen "./Intkit_-_10.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_10.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7012
	isize   filelen "./Intkit_-_11.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_11.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7013
	isize   filelen "./Intkit_-_12.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_12.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7014
	isize   filelen "./Intkit_-_13.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_13.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7015
	isize   filelen "./Intkit_-_14.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_14.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7016
	isize   filelen "./Intkit_-_15.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_15.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7017
	isize   filelen "./Intkit_-_16.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_16.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7018
	isize   filelen "./Intkit_-_17.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_17.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7019
	isize   filelen "./Intkit_-_18.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_18.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7020
	isize   filelen "./Intkit_-_19.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_19.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7021
	isize   filelen "./Intkit_-_20.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_20.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7022
	isize   filelen "./Intkit_-_21.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_21.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7023
	isize   filelen "./Intkit_-_22.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_22.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7024
	isize   filelen "./Intkit_-_23.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_23.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7025
	isize   filelen "./Intkit_-_24.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_24.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7026
	isize   filelen "./Intkit_-_25.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_25.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7027
	isize   filelen "./Intkit_-_26.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_26.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7028
	isize   filelen "./Intkit_-_27.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_27.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

instr 7029
	isize   filelen "./Intkit_-_28.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "./Intkit_-_28.wav" , ikcpsmod*icps
;        out       asig*kamp
	gaout = gaout + asig*kamp
endin

