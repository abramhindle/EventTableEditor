sr=44100
kr=441
ksmps=100
nchnls=2



instr 1 ; simple waveguide
	it1 = p4
	it2 = p5
arg	oscili	   1,2,it2
ar      oscili     20000, 1000*arg,it1 
outs ar, ar
endin

instr 2 ; simple waveguide w wavetable control
	it1 = p4 ; wavetable
	it2 = p5 ; pitch
	it3 = p6 ; pitch control?
kpch	oscili	   1,2,it3
arg	oscili	   1,kpch,it2
ar      oscili     20000, 1000*arg,it1 
outs ar, ar
endin

instr 3 ; left channel simple waveguide w wavetable control
	it1 = p4 ; wavetable
	it2 = p5 ; pitch
	it3 = p6 ; pitch control?
arin1, arin2 ins
kpch	oscili	   1,2,it2
arg	oscili	   1,kpch,it2
ar      oscili     20000, 1000*arg,it1 
ao = ar*arin1
outs ao, ao
endin

instr 4 ; left channel simple waveguide w wavetable control
	it1 = p4 ; wavetable
	it2 = p5 ; pitch
	it3 = p6 ; pitch control?
arin1, arin2 ins
kpch	oscili	   1,2,it2
arg	oscili	   1,kpch,it2
ar      oscili     20000, 1000*arg,it1 
ao = ar*arin2
outs ao, ao
endin


instr 6666
p3 = 1/44100
itable = p4	; table
iindex = p5	; index
tableiw     p6   , iindex, itable, 0, 0, 0 
endin
