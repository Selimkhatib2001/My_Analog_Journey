*file: op_amp_netlist.sp	op_amp
*.inc "tsmc18_bsim.txt"
*GAIN OF CIRCUIT 
*(GM4)/(GDS4+GDS2) = 68 Gain = 36,3 dB
*Voltage Offset = 5mV
*CMRR =
*PSRR =

.SUBCKT OP_AMP V_pos V_neg Vout Vdd Vss
*GAIN OF CIRCUIT 
*(GM4)/(GDS4+GDS2) = 68 Gain = 36,3 dB

************************************************************
*------------------PMOS CURRENT MIRROR---------------------*
M1 drain_pfet_M1 drain_nfet_M1 Vdd Vdd pfet W=W1 L=L1
M2 Vout drain_nfet_M1 Vdd Vdd pfet W=W2 L=L1
************************************************************

************************************************************
*------------------NMOS DIFF AMP---------------------*
M3 drain_pfet_M1 V_pos diff_source diff_source nfet W=W3 L=L1
M4 Vout V_neg diff_source diff_source nfet W=W4 L=L1
************************************************************
*drain_pfet_M2
************************************************************
*------------------NMOS CURRENT MIRROR---------------------*
R1 Vdd nmos_current_mirror 260k
M5 nmos_current_mirror nmos_current_mirror Vss Vss nfet W=W5 L=L
M6 diff_source nmos_current_mirror Vss Vss nfet W=W6 L=L
************************************************************
.ENDS OP_AMP
