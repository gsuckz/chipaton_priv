v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -430 -550 -430 -470 {
lab=Vo+}
N -430 -590 -420 -590 {
lab=Vo+}
N -250 -540 -250 -470 {
lab=Vo-}
N -250 -470 -230 -470 {
lab=Vo-}
N -340 -410 -230 -410 {
lab=#net1}
N -580 -300 -580 -220 {
lab=GND}
N -580 -220 -340 -220 {
lab=GND}
N -80 -440 -80 -340 {
lab=Vi+}
N -100 -440 -80 -440 {
lab=Vi+}
N -530 -440 -480 -440 {
lab=Vi-}
N -580 -440 -580 -360 {
lab=Vi-}
N -440 -470 -430 -470 {
lab=Vo+}
N -80 -280 -80 -220 {
lab=GND}
N -100 -480 -100 -440 {
lab=Vi+}
N -530 -490 -530 -440 {
lab=Vi-}
N -400 -140 -320 -140 {
lab=Vidiff}
N -480 -130 -440 -130 {
lab=Vi+}
N -470 -80 -440 -80 {
lab=Vi-}
N -440 -90 -440 -80 {
lab=Vi-}
N -320 -70 -210 -70 {
lab=GND}
N -210 -220 -210 -70 {
lab=GND}
N -320 -80 -320 -70 {
lab=GND}
N -400 -80 -400 -70 {
lab=GND}
N -340 -250 -340 -220 {
lab=GND}
N -340 -280 -280 -280 {
lab=GND}
N -290 -560 -290 -540 {
lab=Vo-}
N -440 -550 -430 -550 {
lab=Vo+}
N -290 -540 -250 -540 {
lab=Vo-}
N -280 -280 -280 -220 {
lab=GND}
N -780 -220 -580 -220 {
lab=GND}
N -950 -400 -950 -280 {
lab=#net2}
N -950 -220 -800 -220 {
lab=GND}
N -420 -600 -420 -590 {
lab=Vo+}
N -330 -630 -250 -630 {
lab=#net3}
N -330 -660 -330 -630 {
lab=#net3}
N -340 -410 -340 -310 {
lab=#net1}
N -340 -440 -340 -410 {
lab=#net1}
N -340 -440 -230 -440 {
lab=#net1}
N -210 -740 -210 -630 {
lab=#net4}
N -570 -740 -210 -740 {
lab=#net4}
N -570 -630 -460 -630 {
lab=#net4}
N -570 -740 -570 -630 {
lab=#net4}
N -870 -400 -870 -170 {
lab=#net2}
N -870 -170 -490 -170 {
lab=#net2}
N -490 -280 -490 -170 {
lab=#net2}
N -490 -280 -380 -280 {
lab=#net2}
N -210 -220 -80 -220 {
lab=GND}
N -190 -440 -100 -440 {
lab=Vi+}
N -580 -440 -530 -440 {
lab=Vi-}
N -280 -220 -210 -220 {
lab=GND}
N -400 -70 -320 -70 {
lab=GND}
N -430 -590 -430 -550 {
lab=Vo+}
N -250 -600 -250 -540 {
lab=Vo-}
N -340 -220 -280 -220 {
lab=GND}
N -800 -220 -780 -220 {
lab=GND}
N -420 -630 -330 -630 {
lab=#net3}
N -440 -410 -340 -410 {
lab=#net1}
N -440 -440 -340 -440 {
lab=#net1}
N -950 -400 -910 -400 {
lab=#net2}
N -900 -740 -570 -740 {
lab=#net4}
N -910 -400 -870 -400 {
lab=#net2}
N -340 -660 -250 -660 {
lab=#net3}
N -340 -160 -340 -140 {
lab=Vidiff}
N -390 20 -310 20 {
lab=Vodiff}
N -470 30 -430 30 {
lab=Vo+}
N -460 80 -430 80 {
lab=Vo-}
N -430 70 -430 80 {
lab=Vo-}
N -310 80 -310 90 {
lab=GND}
N -390 80 -390 90 {
lab=GND}
N -390 90 -310 90 {
lab=GND}
N -330 0 -330 20 {
lab=Vodiff}
N -300 90 -210 90 {
lab=GND}
N -210 -70 -210 90 {
lab=GND}
N -310 90 -300 90 {
lab=GND}
N -670 -660 -670 -270 {
lab=#net3}
N -1030 -220 -950 -220 {
lab=GND}
N -1020 -490 -910 -490 {
lab=#net4}
N -1020 -490 -1020 -280 {
lab=#net4}
N -1030 -280 -1020 -280 {
lab=#net4}
N -910 -490 -900 -490 {
lab=#net4}
N -900 -740 -900 -490 {
lab=#net4}
N -670 -700 -670 -660 {
lab=#net3}
N -670 -700 -280 -700 {
lab=#net3}
N -280 -700 -280 -660 {
lab=#net3}
N -420 -660 -340 -660 {
lab=#net3}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/nfet_03v3.sym} -210 -440 0 1 {name=M26
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/nfet_03v3.sym} -460 -440 0 0 {name=M27
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/vsource.sym} -580 -330 0 0 {name=V3 value="sin(1 1 1Meg)"}
C {devices/vsource.sym} -80 -310 0 0 {name=V4 value="PULSE(2 0.5 0 50n 50n 500n 1u"}
C {devices/lab_wire.sym} -440 -550 0 0 {name=p23 sig_type=std_logic lab="Vo+"}
C {devices/lab_wire.sym} -290 -560 0 0 {name=p24 sig_type=std_logic lab="Vo-"}
C {devices/lab_wire.sym} -530 -490 0 0 {name=p25 sig_type=std_logic lab="Vi-"}
C {devices/lab_wire.sym} -100 -480 0 0 {name=p26 sig_type=std_logic lab="Vi+"}
C {devices/res.sym} -320 -110 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vcvs.sym} -400 -110 0 0 {name=E4 value=1}
C {devices/lab_wire.sym} -480 -130 0 0 {name=p27 sig_type=std_logic lab="Vi+"}
C {devices/lab_wire.sym} -470 -80 0 0 {name=p28 sig_type=std_logic lab="Vi-"}
C {devices/lab_wire.sym} -340 -160 0 0 {name=p29 sig_type=std_logic lab="Vidiff"}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/nfet_03v3.sym} -360 -280 0 0 {name=M28
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/vsource.sym} -950 -250 0 0 {name=V5 value=1.5}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/pfet_03v3.sym} -440 -630 0 0 {name=M24
L=0.28u
W=0.50u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/pfet_03v3.sym} -230 -630 0 1 {name=M25
L=0.28u
W=0.50u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/code.sym} -1200 -610 0 0 {name=TT_MODELS 
only_toplevel=true 
format="tcleval(  @value  )"
value="
.include /foss/pdks/gf180mcuC/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuC/libs.tech/ngspice/sm141064.ngspice typical
"
spice_ignore=false}
C {devices/code_shown.sym} -1260 -390 0 0 {name=SPICE only_toplevel=false value="
.control
save all
tran 100p 10u 30n 
plot vidiff vodiff

.endc"
}
C {devices/gnd.sym} -600 -220 0 0 {name=l1 lab=GND}
C {devices/res.sym} -310 50 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vcvs.sym} -390 50 0 0 {name=E1 value=1}
C {devices/lab_wire.sym} -470 30 0 0 {name=p1 sig_type=std_logic lab="Vo+"}
C {devices/lab_wire.sym} -460 80 0 0 {name=p2 sig_type=std_logic lab="Vo-"}
C {devices/lab_wire.sym} -330 0 0 0 {name=p3 sig_type=std_logic lab="Vodiff"}
C {devices/vsource.sym} -670 -250 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -1030 -250 0 0 {name=V2 value=2}
