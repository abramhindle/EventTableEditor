sr = 44100
ksmps = 32
nchnls = 2

instr 1
ilen=p3
ifftsize = 128				;fft size
ioverlap = 64				;overlap
knewamp  = 0				;new value for amplitudes
ifn = 1
fsrc pvsinit ifftsize
	pvsftr	fsrc,ifn,ifn+1		;read modified data back to fsrc
;aout	pvsynth	fsrc			;and resynth
aout	pvsadsyn	fsrc, ifftsize/2, 1			;and resynth
;  aenvr adsr 1*ilen/10, 6*ilen/10, 0.8, 3*ilen/10
aenv oscili 1,1/ilen,ifn+2
aout = aout*aenv
	outs	aout, aout

endin

instr 6666
p3 = 1/44100
itable = p4	; table
iindex = p5	; index
tableiw     p6   , iindex, itable, 0, 0, 0 
endin

