v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 125 -550 125 -500 {
lab=X}
N 165 -410 165 -280 {
lab=#net1}
N 165 -560 165 -530 {
lab=V}
N 165 -280 275 -280 {
lab=#net1}
N 275 -300 275 -280 {
lab=#net1}
N 165 -560 275 -560 {
lab=V}
N 275 -560 275 -380 {
lab=V}
N 165 -470 345 -470 {
lab=#net2}
N 375 -430 375 -340 {
lab=#net3}
N 275 -280 375 -280 {
lab=#net1}
N 495 -280 515 -280 {
lab=vin}
N 375 -280 435 -280 {
lab=#net1}
N 415 -320 415 -310 {
lab=X}
N 415 -320 465 -320 {
lab=X}
N 435 -560 435 -510 {
lab=V}
N 275 -560 435 -560 {
lab=V}
N 495 -520 495 -510 {
lab=ctrl}
N 495 -520 565 -520 {
lab=ctrl}
N 165 -250 175 -250 {
lab=gnd}
N 175 -250 175 -220 {
lab=gnd}
N 165 -220 175 -220 {
lab=gnd}
N 165 -500 185 -500 {
lab=#net2}
N 185 -500 375 -500 {
lab=#net2}
N 375 -500 375 -470 {
lab=#net2}
N 355 -310 375 -310 {
lab=GND}
N 435 -470 435 -450 {
lab=GND}
N 495 -470 495 -450 {
lab=GND}
N 435 -450 465 -450 {
lab=GND}
N 465 -450 495 -450 {
lab=GND}
N 465 -280 465 -260 {
lab=GND}
N 545 -280 545 -260 {
lab=GND}
N 525 -470 525 -450 {
lab=GND}
N 495 -450 525 -450 {
lab=GND}
N 405 -470 405 -320 {
lab=X}
N 405 -320 415 -320 {
lab=X}
N 165 -200 175 -200 {
lab=gnd}
N 175 -220 175 -200 {
lab=gnd}
N 405 -590 405 -470 {
lab=X}
N 125 -590 125 -550 {
lab=X}
N 125 -590 405 -590 {
lab=X}
N 245 -500 245 -470 {
lab=#net2}
N 465 -320 545 -320 {
lab=X}
N 270 -570 270 -560 {
lab=V}
N 340 -310 360 -310 {
lab=GND}
N 340 -310 340 -300 {
lab=GND}
N 520 -450 520 -430 {
lab=GND}
N 430 -260 470 -260 {
lab=GND}
N 430 -260 430 -250 {
lab=GND}
N 550 -260 600 -260 {
lab=GND}
N 540 -260 550 -260 {
lab=GND}
N 600 -260 600 -250 {
lab=GND}
N 510 -280 510 -220 {
lab=vin}
N 680 -280 680 -250 {
lab=vout}
N 670 -250 680 -250 {
lab=vout}
N 510 -160 670 -160 {
lab=GND}
N 510 -170 510 -160 {
lab=GND}
N 670 -160 680 -160 {
lab=GND}
N 680 -190 680 -160 {
lab=GND}
N 670 -190 680 -190 {
lab=GND}
N 570 -280 680 -280 {
lab=vout}
N 490 -230 510 -230 {
lab=vin}
N 70 -250 120 -250 {
lab=ctrl}
N 70 -310 70 -250 {
lab=ctrl}
N 70 -310 80 -310 {
lab=ctrl}
N 110 -250 130 -250 {
lab=ctrl}
C {devices/vsource.sym} -220 -165 0 0 {name=V1 value=3.3
}
C {devices/vsource.sym} -150 -165 0 0 {name=V2 value="PULSE (0 3 0 10n 10n 500n  1u)"
}
C {devices/code_shown.sym} -240 -515 0 0 {name=SPICE1 only_toplevel=false value="
.control
save all
tran 500p 10u  
plot ctrl \{Vin - Vout\}
plot ctrl Vin Vout
plot ctrl X
.endc"}
C {devices/code.sym} -230 -365 0 0 {name=TT_MODELS 
only_toplevel=true 
format="tcleval(  @value  )"
value="
.include /foss/pdks/gf180mcuC/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuC/libs.tech/ngspice/sm141064.ngspice typical
"
spice_ignore=false}
C {devices/gnd.sym} -220 -135 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -150 -135 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -150 -195 0 1 {name=p3 sig_type=std_logic lab=ctrl
}
C {devices/lab_wire.sym} -220 -195 0 0 {name=p4 sig_type=std_logic lab=V
}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/pfet_03v3.sym} 145 -500 0 0 {name=M11
L=0.28u
W=5u
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
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/nfet_03v3.sym} 145 -250 0 0 {name=M12
L=0.28u
W=5u
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
C {SAR_ADC/SAR_ADC_gf180/xschem/spice/inv.sym} 275 -340 0 0 {name=x1}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/pfet_03v3.sym} 375 -450 3 0 {name=M13
L=0.28u
W=2.5u
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
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/nfet_03v3.sym} 395 -310 2 0 {name=M14
L=0.28u
W=5u
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
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/nfet_03v3.sym} 465 -300 1 0 {name=M15
L=0.28u
W=5u
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
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/nfet_03v3.sym} 545 -300 1 0 {name=M16
L=0.28u
W=25u
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
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/nfet_03v3.sym} 495 -490 1 0 {name=M17
L=0.28u
W=10u
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
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/nfet_03v3.sym} 435 -490 1 0 {name=M18
L=0.28u
W=10u
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
C {devices/lab_pin.sym} 565 -520 2 0 {name=p2 sig_type=std_logic lab=ctrl}
C {devices/lab_wire.sym} -55 -670 0 0 {name=p6 sig_type=std_logic lab=ctrl}
C {devices/lab_wire.sym} 165 -200 0 0 {name=p7 sig_type=std_logic lab=gnd}
C {devices/capa.sym} 165 -440 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 370 -590 2 0 {name=p8 sig_type=std_logic lab=X}
C {devices/lab_pin.sym} 675 -280 2 0 {name=p9 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 270 -565 0 0 {name=p11 sig_type=std_logic lab=V
}
C {devices/gnd.sym} 340 -305 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 520 -435 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 430 -255 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 600 -255 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 510 -195 0 0 {name=V3 value="SIN(1.6 1 0.5meg)"
}
C {devices/capa.sym} 675 -220 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 510 -165 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 495 -230 2 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 75 -310 2 0 {name=p5 sig_type=std_logic lab=ctrl}
C {SAR_ADC/SAR_ADC_gf180/xschem/spice/inv.sym} 5 -670 0 0 {name=x2}
