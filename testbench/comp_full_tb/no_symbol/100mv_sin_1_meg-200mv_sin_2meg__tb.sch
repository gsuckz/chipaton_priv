v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1150 -190 1150 -100 {
lab=GND}
N 600 -100 1150 -100 {
lab=GND}
N 600 -150 600 -100 {
lab=GND}
N 890 -180 890 -100 {
lab=GND}
N 600 -330 1150 -330 {
lab=V}
N 600 -330 600 -320 {
lab=V}
N 890 -330 890 -320 {
lab=V}
N 960 -290 1070 -290 {
lab=Vin1comp}
N 950 -280 960 -280 {
lab=Vin1comp}
N 960 -290 960 -280 {
lab=Vin1comp}
N 950 -220 1070 -220 {
lab=Vin2comp}
N 1070 -230 1070 -220 {
lab=Vin2comp}
N 750 -210 840 -210 {
lab=clk}
N 470 -200 470 -130 {
lab=clk}
N 470 -200 520 -200 {
lab=clk}
N 1230 -290 1260 -290 {
lab=outcomp}
N 880 -370 910 -370 {
lab=V}
N 880 -370 880 -330 {
lab=V}
N 910 -100 910 -70 {
lab=GND}
N 470 -240 520 -240 {
lab=Vin2}
N 470 -290 520 -290 {
lab=Vin1}
N -250 -530 -210 -530 {
lab=Vindiff}
N -340 -530 -310 -530 {
lab=Vin1}
N -340 -490 -310 -490 {
lab=Vin2}
N -210 -550 -210 -530 {
lab=Vindiff}
N 790 -460 830 -460 {
lab=Voutpreamp}
N 700 -460 730 -460 {
lab=Vin1preamp}
N 700 -420 730 -420 {
lab=Vin2preamp}
N 830 -480 830 -460 {
lab=Voutpreamp}
N 1060 -460 1100 -460 {
lab=Voutcomp}
N 970 -460 1000 -460 {
lab=Vin1comp}
N 970 -420 1000 -420 {
lab=Vin2comp}
N 1100 -480 1100 -460 {
lab=Voutcomp}
N 680 -290 840 -290 {
lab=Vin1preamp}
N 680 -220 680 -190 {
lab=Vin2preamp}
N 680 -230 840 -230 {
lab=Vin2preamp}
N 680 -230 680 -220 {
lab=Vin2preamp}
N 650 -10 740 -10 {
lab=clk}
N 470 -130 470 -10 {
lab=clk}
N 470 -10 490 -10 {
lab=clk}
N 740 -210 750 -210 {
lab=clk}
N 740 -210 740 -10 {
lab=clk}
N 480 -10 650 -10 {
lab=clk}
N -150 -160 -150 -150 {
lab=V}
N -230 -160 -230 -150 {
lab=clk}
N -300 -160 -300 -150 {
lab=Vin2}
N -380 -160 -380 -150 {
lab=Vin1}
C {jesusu/Simbolos/SR_nor.sym} -1090 1570 0 0 {name=X1}
C {jesusu/Simbolos/preamp.sym} 140 270 0 0 {name=X3}
C {jesusu/Simbolos/strongarm.sym} -1050 1300 0 0 {name=X4}
C {devices/gnd.sym} 910 -70 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 470 -290 0 0 {name=p10 sig_type=std_logic lab=Vin1}
C {devices/lab_wire.sym} 470 -240 0 0 {name=p11 sig_type=std_logic lab=Vin2}
C {devices/lab_wire.sym} 470 -200 0 0 {name=p12 sig_type=std_logic lab=clk
}
C {devices/lab_wire.sym} 910 -370 0 0 {name=p14 sig_type=std_logic lab=V
}
C {jesusu/Simbolos/Vdiffmeter.sym} -410 -370 0 0 {name=X5}
C {devices/lab_wire.sym} -340 -530 0 0 {name=p15 sig_type=std_logic lab=Vin1}
C {devices/lab_wire.sym} -340 -490 0 0 {name=p16 sig_type=std_logic lab=Vin2}
C {devices/gnd.sym} -280 -470 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} -210 -550 0 0 {name=p17 sig_type=std_logic lab=Vindiff
}
C {devices/lab_wire.sym} 1260 -290 0 0 {name=p18 sig_type=std_logic lab=outcomp
}
C {devices/code_shown.sym} 1280 -230 0 0 {name=SPICE1 only_toplevel=false value="
.control
save all
tran 500p 300n  
plot \{vindiff * 1000\} outcomp
plot \{vindiff * 1000\} Voutcomp clk
plot \{vindiff * 1000\} Voutpreamp clk
plot Voutpreamp Voutcomp clk
.endc"}
C {devices/code.sym} -510 -560 0 0 {name=TT_MODELS 
only_toplevel=true 
format="tcleval(  @value  )"
value="
.include /foss/pdks/gf180mcuC/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuC/libs.tech/ngspice/sm141064.ngspice typical
"
spice_ignore=false}
C {jesusu/Simbolos/Vdiffmeter.sym} 630 -300 0 0 {name=X2}
C {devices/lab_wire.sym} 700 -460 0 0 {name=p1 sig_type=std_logic lab=Vin1preamp}
C {devices/lab_wire.sym} 700 -420 0 0 {name=p2 sig_type=std_logic lab=Vin2preamp}
C {devices/gnd.sym} 760 -400 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 830 -480 0 0 {name=p3 sig_type=std_logic lab=Voutpreamp
}
C {jesusu/Simbolos/Vdiffmeter.sym} 900 -300 0 0 {name=X6}
C {devices/lab_wire.sym} 970 -460 0 0 {name=p7 sig_type=std_logic lab=Vin1comp}
C {devices/lab_wire.sym} 970 -420 0 0 {name=p8 sig_type=std_logic lab=Vin2comp}
C {devices/gnd.sym} 1030 -400 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 1100 -480 0 0 {name=p9 sig_type=std_logic lab=Voutcomp
}
C {devices/lab_wire.sym} 680 -290 0 0 {name=p19 sig_type=std_logic lab=Vin1preamp}
C {devices/lab_wire.sym} 680 -190 0 0 {name=p20 sig_type=std_logic lab=Vin2preamp}
C {devices/lab_wire.sym} 1050 -290 0 0 {name=p21 sig_type=std_logic lab=Vin1comp}
C {devices/lab_wire.sym} 1050 -220 0 0 {name=p22 sig_type=std_logic lab=Vin2comp}
C {devices/vsource.sym} -380 -120 0 0 {name=V1 value="SIN(1 1m  25meg)"}
C {devices/vsource.sym} -300 -120 0 0 {name=V2 value="SIN(1 1m 20meg)"}
C {devices/vsource.sym} -230 -120 0 0 {name=V3 value="PULSE(0 3 0 100p 100p 7n 15n)"}
C {devices/gnd.sym} -380 -90 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -300 -90 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -230 -90 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -380 -160 0 0 {name=p4 sig_type=std_logic lab=Vin1}
C {devices/lab_wire.sym} -300 -160 0 0 {name=p5 sig_type=std_logic lab=Vin2}
C {devices/lab_wire.sym} -230 -160 0 0 {name=p6 sig_type=std_logic lab=clk
}
C {devices/vsource.sym} -150 -120 0 0 {name=V4 value=3.3}
C {devices/gnd.sym} -150 -90 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -150 -160 0 0 {name=p13 sig_type=std_logic lab=V
}
