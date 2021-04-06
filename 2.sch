*version 9.1 6478716
u 305
D? 14
R? 14
V? 10
? 2
@libraries
@analysis
.LIB C:\Users\USER\Desktop\Schematic1.lib
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
pageloc 1 0 2597 
@status
n 0 119:08:25:10:41:47;1569386507 e 
s 2832 119:08:25:10:41:53;1569386513 e 
c 119:08:22:01:20:50;1569093650
*page 1 0 970 720 iA
@ports
port 243 egnd 420 250 h
@parts
part 215 r 420 220 v
a 0 x 0:13 0 0 0 hln 100 PKGREF=R2
a 0 xp 9 0 15 0 hln 100 REFDES=R2
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=20k
part 216 vdc 290 180 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=V1
a 1 xp 9 0 24 7 hcn 100 REFDES=V1
a 0 sp 0 0 22 37 hln 100 PART=vdc
a 1 u 13 0 -11 18 hcn 100 DC=6
part 292 D1N4002 320 130 h
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=D1
a 0 xp 9 0 17 2 hln 100 REFDES=D1
part 299 D1N4002 450 130 h
a 0 sp 11 0 17 29 hln 100 PART=D1N4002
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=D2
a 0 xp 9 0 17 4 hln 100 REFDES=D2
part 303 r 530 200 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=R3
a 0 xp 9 0 15 0 hln 100 REFDES=R3
a 0 u 13 0 15 25 hln 100 VALUE=10k
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 272
a 0 sr 0:3 0 305 128 hcn 100 LABEL=1
a 0 up 0:33 0 0 0 hln 100 V=
s 290 130 320 130 219
a 0 sr 3 0 305 128 hcn 100 LABEL=1
s 290 180 290 130 217
a 0 up 33 0 292 155 hlt 100 V=
w 280
a 0 sr 0 0 0 0 hln 100 LABEL=2
a 0 up 0:33 0 0 0 hln 100 V=
s 420 130 450 130 286
a 0 sr 3 0 430 128 hcn 100 LABEL=2
s 420 130 420 180 230
a 0 up 33 0 422 155 hlt 100 V=
s 350 130 420 130 293
a 0 up 33 0 376 115 hct 100 V=
w 234
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0 0 0 0 hln 100 LABEL=0
s 420 250 530 250 241
a 0 sr 3 0 475 243 hcn 100 LABEL=0
a 0 up 33 0 475 249 hct 100 V=
s 290 250 420 250 235
s 290 220 290 250 233
s 420 220 420 250 239
s 530 250 530 200 237
w 222
a 0 sr 0:3 0 505 128 hcn 100 LABEL=3
a 0 up 0:33 0 0 0 hln 100 V=
s 480 130 530 130 226
a 0 sr 3 0 505 128 hcn 100 LABEL=3
s 530 130 530 160 228
a 0 up 33 0 562 123 hlt 100 V=
@junction
j 420 180
+ p 215 2
+ w 280
j 420 130
+ w 280
+ w 280
j 350 130
+ p 292 2
+ w 280
j 450 130
+ p 299 1
+ w 280
j 290 180
+ p 216 +
+ w 272
j 320 130
+ p 292 1
+ w 272
j 530 200
+ p 303 1
+ w 234
j 530 160
+ p 303 2
+ w 222
j 420 250
+ s 243
+ w 234
j 290 220
+ p 216 -
+ w 234
j 420 220
+ p 215 1
+ w 234
j 480 130
+ p 299 2
+ w 222
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
