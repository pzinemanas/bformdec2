<CsoundSynthesizer>

<CsOptions>
</CsOptions>

<CsInstruments>
sr = 48000
ksmps = 16 
0dbfs = 1
nchnls = 2

; Ambisonics order
giOrder	=	1

instr 1	

; array Ambisonics
iArraySize	=	(giOrder+1)^2
aAmbi[]	init	iArraySize

; salida
iOutSize	init	nchnls
iSetup	init 21
aOut[]	init	iOutSize

aw,ax,ay,az     diskin "AJH_eight-positions.amb"

aAmbi[0] = aw
aAmbi[1] = ax
aAmbi[2] = ay
aAmbi[3] = az


aOut bformdec2 iSetup,aAmbi,0,1,400,0,"hrtf-48000-left.dat","hrtf-48000-right.dat" //order1

outs aOut[0], aOut[1]

endin 


</CsInstruments>


<CsScore>

i1	0	20

</CsScore>

</CsoundSynthesizer>

