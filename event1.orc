sr=44100
kr=441
ksmps=100
nchnls=1   



instr 1 ; Scheduler
	it1 = p4
	instrnum = p5
kincite	oscili	   1,.33,it1
kincite = abs(kincite)
schedkwhen kincite, 0, 30, instrnum, 0, 0.001, 1, kincite
endin


instr 6666
p3 = 1/44100
itable = p4	; table
iindex = p5	; index
tableiw     p6   , iindex, itable, 0, 0, 0 
endin


instr 7001
	isize   filelen "Intkit_-_00.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_00.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7002
	isize   filelen "Intkit_-_01.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_01.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7003
	isize   filelen "Intkit_-_02.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_02.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7004
	isize   filelen "Intkit_-_03.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_03.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7005
	isize   filelen "Intkit_-_04.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_04.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7006
	isize   filelen "Intkit_-_05.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_05.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7007
	isize   filelen "Intkit_-_06.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_06.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7008
	isize   filelen "Intkit_-_07.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_07.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7009
	isize   filelen "Intkit_-_08.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_08.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7010
	isize   filelen "Intkit_-_09.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_09.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7011
	isize   filelen "Intkit_-_10.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_10.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7012
	isize   filelen "Intkit_-_11.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_11.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7013
	isize   filelen "Intkit_-_12.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_12.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7014
	isize   filelen "Intkit_-_13.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_13.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7015
	isize   filelen "Intkit_-_14.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_14.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7016
	isize   filelen "Intkit_-_15.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_15.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7017
	isize   filelen "Intkit_-_16.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_16.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7018
	isize   filelen "Intkit_-_17.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_17.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7019
	isize   filelen "Intkit_-_18.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_18.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7020
	isize   filelen "Intkit_-_19.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_19.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7021
	isize   filelen "Intkit_-_20.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_20.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7022
	isize   filelen "Intkit_-_21.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_21.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7023
	isize   filelen "Intkit_-_22.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_22.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7024
	isize   filelen "Intkit_-_23.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_23.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7025
	isize   filelen "Intkit_-_24.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_24.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7026
	isize   filelen "Intkit_-_25.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_25.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7027
	isize   filelen "Intkit_-_26.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_26.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7028
	isize   filelen "Intkit_-_27.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_27.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7029
	isize   filelen "Intkit_-_28.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Intkit_-_28.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7030
	isize   filelen "Phlog.raw.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Phlog.raw.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7031
	isize   filelen "Piano001.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "Piano001.wav" , ikcpsmod*icps
        out       asig*kamp
endin

instr 7032
	isize   filelen "snare1.wav"
	iamp = (p5==0)?1:p5
	icps = p4
	iddur   = isize/icps
	p3=iddur	
	;ikcpsmod=gkcpsmod
	ikcpsmod=1
	asig	init 0
	kamp     linen iamp,0.01,iddur,0.001
	asig diskin  "snare1.wav" , ikcpsmod*icps
        out       asig*kamp
endin

