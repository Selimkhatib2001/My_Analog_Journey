*file: ota_pmos.sp	op_amp
*Av = 2*Leff4*Leff2/((Vin-Vt)*Id)

************************************************************
*------------------------SOURCE----------------------------*
.SUBCKT OTA_PMOS V_pos V_neg Vout Vdd Vss

M1 cm_1_1 cm_1_1 Vdd Vdd pfet W=W1 L=L1
M2 cm_1_2 cm_1_1 Vdd Vdd pfet W=W1 L=L1

R1 cm_1_1 Vss 55k 

M3 cm_2_1 V_pos cm_1_2 cm_1_2 pfet W=W2 L=L1
M4 first_vout V_neg cm_1_2 cm_1_2 pfet W=W2 L=L1

M5 cm_2_1 cm_2_1 Vss Vss nfet W=W3 L=L1
M6 first_vout cm_2_1 Vss Vss nfet W=W3 L=L1

M7 Vout cm_1_1 Vdd Vdd pfet W=W4 L=L1
M8 Vout first_vout Vss Vss nfet W=W5 L=L1

.ENDS OTA_PMOS

