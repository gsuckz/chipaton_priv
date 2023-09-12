v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -240 130 -240 {
lab=GND}
N 130 -300 130 -240 {
lab=GND}
N 130 -240 210 -240 {
lab=GND}
N 210 -260 210 -240 {
lab=GND}
N 0 -240 90 -240 {
lab=GND}
N -0 -330 0 -300 {
lab=vi}
N 0 -330 80 -330 {
lab=vi}
N -120 -240 -0 -240 {
lab=GND}
N -120 -370 -120 -300 {
lab=clk}
N 210 -260 230 -260 {
lab=GND}
N 140 -340 140 -330 {
lab=vic}
N 60 -300 90 -300 {
lab=#net1}
N 60 -400 60 -300 {
lab=#net1}
N 140 -370 170 -370 {
lab=vic}
N 140 -370 140 -340 {
lab=vic}
N 60 -420 60 -400 {
lab=#net1}
N 60 -420 250 -420 {
lab=#net1}
N 250 -420 250 -410 {
lab=#net1}
N 230 -260 250 -260 {
lab=GND}
N 250 -270 250 -260 {
lab=GND}
N 150 -340 170 -340 {
lab=clk}
N 150 -390 150 -340 {
lab=clk}
N 110 -390 150 -390 {
lab=clk}
N -50 -390 110 -390 {
lab=clk}
N -50 -390 -50 -370 {
lab=clk}
N -120 -370 -50 -370 {
lab=clk}
N 0 -370 110 -370 {
lab=sample}
N 0 -370 0 -350 {
lab=sample}
N -70 -350 0 -350 {
lab=sample}
N -70 -350 -70 -300 {
lab=sample}
N 50 -300 50 -200 {
lab=#net1}
N 50 -300 60 -300 {
lab=#net1}
N 50 -140 130 -140 {
lab=GND}
N 130 -240 130 -140 {
lab=GND}
N 50 -170 130 -170 {
lab=GND}
N -180 -310 -120 -310 {
lab=clk}
N -180 -170 10 -170 {
lab=clk}
N -180 -310 -180 -170 {
lab=clk}
N 140 -330 140 -300 {
lab=vic}
N 140 -300 150 -300 {
lab=vic}
N 170 -320 170 -300 {
lab=vcm}
C {devices/vsource.sym} 90 -270 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} 90 -240 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 0 -270 0 0 {name=V2 value="SIN(1.6 800m .4meg)"}
C {devices/vsource.sym} -120 -270 0 0 {name=V3 value="PULSE(0 3 0 100p 100p 7.5n 15n)"}
C {devices/code_shown.sym} -370 -500 0 0 {name=SPICE only_toplevel=false value="
.control
save all
tran 500p 15u 
plot \{vic - vcm\} \{vo\} 
plot vi vic sample
let cap5 = @m.xm27.m0[cgg]
print cap5
.endc"
}
C {devices/code.sym} -200 -590 0 0 {name=TT_MODELS 
only_toplevel=true 
format="tcleval(  @value  )"
value="
.include /foss/pdks/gf180mcuC/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuC/libs.tech/ngspice/sm141064.ngspice typical
.lib /foss/pdks/gf180mcuC/libs.tech/ngspice/sm141064.ngspice moscap_typical
"
spice_ignore=false}
C {devices/lab_pin.sym} -120 -370 0 0 {name=p2 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 330 -340 0 1 {name=p1 sig_type=std_logic lab=vo}
C {jesusu/Simbolos/btsw.sym} -110 -100 0 0 {}
C {devices/vsource.sym} 170 -270 0 0 {name=V4 value=1.6}
C {jesusu/Simbolos/Preamp-Strong-Latch.sym} -4170 3310 0 0 {name=X1}
C {devices/vsource.sym} -70 -270 0 0 {name=V5 value="PULSE(0 3 0 100p 100p 75n 150n)"}
C {devices/lab_pin.sym} -70 -330 0 0 {name=p3 sig_type=std_logic lab=sample}
C {devices/lab_pin.sym} 170 -320 0 0 {name=p4 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 140 -370 0 0 {name=p5 sig_type=std_logic lab=vic}
C {devices/lab_pin.sym} 0 -320 0 0 {name=p6 sig_type=std_logic lab=vi}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/nfet_03v3.sym} 30 -170 0 0 {name=M27
L=0.28u
W=8u
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
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/cap_nmos_03v3.sym} 150 -270 0 0 {name=C1
W=10e-6
L=10e-6
model=cap_nmos_03v3
spiceprefix=X
m=1}
