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
N 50 -300 60 -300 {
lab=V}
N 140 -330 140 -300 {
lab=vic}
N 140 -300 150 -300 {
lab=vic}
N 1080 -320 1080 -230 {
lab=GND}
N 530 -230 1080 -230 {
lab=GND}
N 530 -280 530 -230 {
lab=GND}
N 820 -310 820 -230 {
lab=GND}
N 530 -460 1080 -460 {
lab=V}
N 530 -460 530 -450 {
lab=V}
N 820 -460 820 -450 {
lab=V}
N 890 -420 1000 -420 {
lab=Vin1comp}
N 880 -410 890 -410 {
lab=Vin1comp}
N 890 -420 890 -410 {
lab=Vin1comp}
N 880 -350 1000 -350 {
lab=Vin2comp}
N 1000 -360 1000 -350 {
lab=Vin2comp}
N 680 -340 770 -340 {
lab=clk}
N 400 -330 400 -260 {
lab=clk}
N 400 -330 450 -330 {
lab=clk}
N 1160 -420 1190 -420 {
lab=outcomp}
N 810 -500 840 -500 {
lab=V}
N 810 -500 810 -460 {
lab=V}
N 840 -230 840 -200 {
lab=GND}
N 400 -370 450 -370 {
lab=vcm}
N 400 -420 450 -420 {
lab=vic}
N 610 -420 770 -420 {
lab=Vin1preamp}
N 610 -350 610 -320 {
lab=Vin2preamp}
N 610 -360 770 -360 {
lab=Vin2preamp}
N 610 -360 610 -350 {
lab=Vin2preamp}
N 580 -140 670 -140 {
lab=clk}
N 400 -260 400 -140 {
lab=clk}
N 400 -140 420 -140 {
lab=clk}
N 670 -340 680 -340 {
lab=clk}
N 670 -340 670 -140 {
lab=clk}
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
N 420 -140 580 -140 {
lab=clk}
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
C {jesusu/Simbolos/SR_nor.sym} -1160 1440 0 0 {name=X1}
C {jesusu/Simbolos/preamp.sym} 70 140 0 0 {name=X3}
C {jesusu/Simbolos/strongarm.sym} -1120 1170 0 0 {name=X4}
C {devices/gnd.sym} 840 -200 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 400 -420 0 0 {name=p10 sig_type=std_logic lab=vic}
C {devices/lab_wire.sym} 400 -370 0 0 {name=p11 sig_type=std_logic lab=vcm}
C {devices/lab_wire.sym} 400 -330 0 0 {name=p12 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 840 -500 0 0 {name=p14 sig_type=std_logic lab=V
}
C {devices/lab_wire.sym} 1190 -420 0 0 {name=p18 sig_type=std_logic lab=outcomp
}
C {devices/lab_wire.sym} 610 -420 0 0 {name=p19 sig_type=std_logic lab=Vin1preamp}
C {devices/lab_wire.sym} 610 -320 0 0 {name=p20 sig_type=std_logic lab=Vin2preamp}
C {devices/lab_wire.sym} 980 -420 0 0 {name=p21 sig_type=std_logic lab=Vin1comp}
C {devices/lab_wire.sym} 980 -350 0 0 {name=p22 sig_type=std_logic lab=Vin2comp}
C {devices/lab_wire.sym} 50 -300 0 0 {name=p1 sig_type=std_logic lab=V
}
