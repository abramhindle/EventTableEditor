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
