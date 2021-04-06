*version 9.1 16630427
u 44
D? 2
@libraries
@analysis
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 3090 
@status
n 0 119:08:25:10:47:11;1569386831 e 
s 2832 119:08:25:10:47:15;1569386835 e 
c 119:08:22:02:23:13;1569097393
*page 1 0 970 720 iA
@ports
port 34 egnd 380 190 h
@parts
part 29 vdc 260 120 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=V1
a 1 xp 9 0 24 7 hcn 100 REFDES=V1
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=6
part 30 r 500 140 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R3
a 0 xp 9 0 15 0 hln 100 REFDES=R3
a 0 u 13 0 15 25 hln 100 VALUE=10k
part 32 D1N4002 450 70 u
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=D2
a 0 xp 9 0 17 4 hln 100 REFDES=D2
part 31 r 380 130 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=R2
a 0 xp 9 0 15 0 hln 100 REFDES=R2
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=20k
part 33 D1N4002 290 70 h
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=D1
a 0 xp 9 0 17 2 hln 100 REFDES=D1
part 36 D1N4002 380 140 d
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 sp 11 0 5 49 hln 100 PART=D1N4002
a 0 x 0:13 0 0 0 hln 100 PKGREF=D3
a 0 xp 9 0 17 4 hln 100 REFDES=D3
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
@conn
w 7
a 0 sr 0:3 0 475 68 hcn 100 LABEL=3
a 0 up 0:33 0 0 0 hln 100 V=
s 450 70 500 70 6
a 0 sr 3 0 475 68 hcn 100 LABEL=3
a 0 up 33 0 455 105 hct 100 V=
s 500 70 500 100 8
a 0 up 33 0 532 63 hlt 100 V=
w 11
a 0 sr 0:3 0 445 183 hcn 100 LABEL=0
s 380 190 500 190 40
a 0 sr 3 0 445 183 hcn 100 LABEL=0
s 500 190 500 140 16
s 260 160 260 190 14
s 260 190 380 190 18
a 0 up 33 0 445 189 hct 100 V=
s 380 170 380 190 37
w 24
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0:3 0 395 68 hcn 100 LABEL=2
s 380 70 420 70 23
a 0 sr 3 0 395 68 hcn 100 LABEL=2
a 0 up 0:33 0 405 27 hct 100 V=
s 380 70 380 90 25
a 0 up 0:33 0 350 80 hlt 100 V=
s 320 70 380 70 27
a 0 up 33 0 349 37 hct 100 V=
a 0 sr 3 0 350 68 hcn 100 LABEL=2
w 41
a 0 sr 0 0 0 0 hln 100 LABEL=4
a 0 up 0:33 0 0 0 hln 100 V=
s 380 140 380 130 38
a 0 sr 3 0 382 135 hln 100 LABEL=4
a 0 up 33 0 394 124 hlt 100 V=
w 3
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0:3 0 275 68 hcn 100 LABEL=1
s 260 70 290 70 2
a 0 sr 3 0 275 68 hcn 100 LABEL=1
a 0 up 33 0 281 93 hct 100 V=
s 260 120 260 70 4
a 0 sr 3 0 262 89 hln 100 LABEL=1
a 0 up 0:33 0 262 95 hlt 100 V=
@junction
j 380 70
+ w 24
+ w 24
j 260 120
+ p 29 +
+ w 3
j 260 160
+ p 29 -
+ w 11
j 500 100
+ p 30 2
+ w 7
j 500 140
+ p 30 1
+ w 11
j 450 70
+ p 32 1
+ w 7
j 420 70
+ p 32 2
+ w 24
j 290 70
+ p 33 1
+ w 3
j 320 70
+ p 33 2
+ w 24
j 380 90
+ p 31 2
+ w 24
j 380 170
+ p 36 2
+ w 11
j 380 190
+ w 11
+ w 11
j 380 140
+ p 36 1
+ w 41
j 380 130
+ p 31 1
+ w 41
j 380 190
+ s 34
+ w 11
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
