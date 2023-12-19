v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 4300 -3480 4460 -3480 {
lab=#net1}
N 4320 -3420 4460 -3420 {
lab=#net2}
N 4510 -3370 4510 -3290 {
lab=GND}
N 4510 -3520 4510 -3510 {
lab=V}
N 4580 -3480 4690 -3480 {
lab=#net3}
N 4570 -3470 4580 -3470 {
lab=#net3}
N 4580 -3480 4580 -3470 {
lab=#net3}
N 4370 -3400 4460 -3400 {
lab=clk}
N 4500 -3560 4530 -3560 {
lab=V}
N 4500 -3560 4500 -3520 {
lab=V}
N 4530 -3290 4530 -3260 {
lab=GND}
N 3910 -3440 3960 -3440 {
lab=Vinn}
N 3910 -3520 3960 -3520 {
lab=Vinp}
N 5330 -3380 5330 -3290 {
lab=GND}
N 4770 -3290 5330 -3290 {
lab=GND}
N 4910 -3520 5330 -3520 {
lab=V}
N 4770 -3520 4910 -3520 {
lab=V}
N 5010 -3480 5250 -3480 {
lab=#net4}
N 4750 -3440 4910 -3440 {
lab=GND}
N 5010 -3330 5250 -3330 {
lab=#net5}
N 5250 -3420 5250 -3330 {
lab=#net5}
N 4750 -3370 4910 -3370 {
lab=V}
N 4910 -3370 5070 -3370 {
lab=V}
N 5070 -3520 5070 -3370 {
lab=V}
N 4570 -3330 4690 -3330 {
lab=#net6}
N 4570 -3410 4570 -3330 {
lab=#net6}
N 4750 -3440 4750 -3410 {
lab=GND}
N 4630 -3410 4750 -3410 {
lab=GND}
N 4630 -3410 4630 -3290 {
lab=GND}
N 4510 -3290 4770 -3290 {
lab=GND}
N 4500 -3520 4770 -3520 {
lab=V}
N 4200 -3680 4200 -3660 {
lab=GND}
N 4060 -3680 4060 -3660 {
lab=v}
N 4220 -3210 4220 -3190 {
lab=GND}
N 4220 -3300 4220 -3270 {
lab=#net7}
N 4320 -3360 4320 -3340 {
lab=ibias}
C {devices/iopin.sym} 4530 -3560 0 0 {name=p1 lab=V}
C {devices/iopin.sym} 4530 -3260 0 0 {name=p2 lab=GND}
C {devices/iopin.sym} 3910 -3520 0 1 {name=p7 lab=Vinp}
C {devices/iopin.sym} 3910 -3440 0 1 {name=p8 lab=Vinn}
C {devices/iopin.sym} 4370 -3400 1 0 {name=p9 lab=clk}
C {devices/iopin.sym} 5410 -3480 0 0 {name=p3 lab=OUT}
C {SR_nor.sym} 5290 -3400 0 0 {name=X1}
C {inv.sym} 4910 -3480 0 0 {name=x2 cl=0.28u wp=0.44u wn=0.22u}
C {inv.sym} 4750 -3480 0 0 {name=x3 cl=0.28u wp=0.44u wn=0.22u}
C {inv.sym} 4910 -3330 0 0 {name=x4 cl=0.28u wp=0.44u wn=0.22u}
C {inv.sym} 4750 -3330 0 0 {name=x5 cl=0.28u wp=0.44u wn=0.22u}
C {strongarm.sym} 4470 -3380 0 0 {name=X6}
C {/foss/designs/sw_comp_gf180/symbols/stat_preamp.sym} 4120 -3480 0 0 {name=x7}
C {devices/lab_wire.sym} 4200 -3680 0 1 {name=l18 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 4060 -3680 0 1 {name=l1 sig_type=std_logic lab=v}
C {devices/isource.sym} 4220 -3240 2 0 {name=I0 value=1u}
C {devices/lab_wire.sym} 4220 -3190 1 1 {name=l2 sig_type=std_logic lab=GND}
C {devices/vsource.sym} 4320 -3390 0 0 {name=V1 value=1.65 savecurrent=false}
C {devices/lab_wire.sym} 4320 -3340 1 1 {name=l3 sig_type=std_logic lab=GND}
