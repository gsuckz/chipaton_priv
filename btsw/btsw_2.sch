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
N 140 -340 140 -330 {
lab=vic}
N 60 -300 90 -300 {
lab=V}
N 140 -370 140 -340 {
lab=vic}
N 0 -370 110 -370 {
lab=sample}
N 0 -370 0 -350 {
lab=sample}
N -70 -350 0 -350 {
lab=sample}
N -70 -350 -70 -300 {
lab=sample}
N 50 -300 60 -300 {
lab=V}
N 140 -330 140 -300 {
lab=vic}
N 140 -300 150 -300 {
lab=vic}
N 130 -240 170 -240 {
lab=GND}
N 170 -240 240 -240 {
lab=GND}
N 240 -240 240 -220 {
lab=GND}
N 240 -220 270 -220 {
lab=GND}
N 270 -230 270 -220 {
lab=GND}
N 370 -360 430 -360 {
lab=vcm}
N 360 -290 420 -290 {
lab=vic}
N 410 -330 430 -330 {
lab=clk}
N 410 -340 410 -330 {
lab=clk}
N 420 -290 430 -290 {
lab=vic}
C {devices/vsource.sym} 90 -270 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} 90 -240 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 0 -270 0 0 {name=V2 value="SIN(1.6 800m .4meg)"}
C {devices/vsource.sym} -120 -270 0 0 {name=V3 value="PULSE(0 3 0 100p 100p 7.5n 15n)"}
C {devices/code_shown.sym} -370 -500 0 0 {name=SPICE only_toplevel=false value="
.control
save all
tran 500p 15u 
plot \{vic - vcm\} \{outcomp\} 
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
C {jesusu/Simbolos/btsw.sym} -110 -100 0 0 {}
C {devices/vsource.sym} 270 -260 0 0 {name=V4 value=1.6}
C {devices/vsource.sym} -70 -270 0 0 {name=V5 value="PULSE(0 3 0 100p 100p 75n 150n)"}
C {devices/lab_pin.sym} -70 -330 0 0 {name=p3 sig_type=std_logic lab=sample}
C {devices/lab_pin.sym} 270 -290 0 0 {name=p4 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 140 -370 0 0 {name=p5 sig_type=std_logic lab=vic}
C {devices/lab_pin.sym} 0 -320 0 0 {name=p6 sig_type=std_logic lab=vi}
C {/foss/pdks/gf180mcuC/libs.tech/xschem/symbols/cap_nmos_03v3.sym} 150 -270 0 0 {name=C1
W=10e-6
L=10e-6
model=cap_nmos_03v3
spiceprefix=X
m=1}
C {devices/lab_wire.sym} 50 -300 0 0 {name=p1 sig_type=std_logic lab=V
}
C {jesusu/Simbolos/Preamp-Strong-Latch.sym} -3910 3320 0 0 {name=X1}
C {devices/lab_wire.sym} 510 -400 0 0 {name=p7 sig_type=std_logic lab=V
}
C {devices/gnd.sym} 510 -260 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 360 -290 0 0 {name=p8 sig_type=std_logic lab=vic}
C {devices/lab_pin.sym} 370 -360 0 0 {name=p9 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 410 -340 0 0 {name=p10 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 590 -330 0 1 {name=p11 sig_type=std_logic lab=outcomp}
