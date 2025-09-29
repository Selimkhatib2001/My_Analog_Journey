.SUBCKT OTA V_pos V_neg Vout Vdd Vss

*******************************************
xM5 cm_1_ref cm_1_ref Vdd Vdd pmos W=W3 L=L3
xM6 cm_1_out cm_1_ref Vdd Vdd pmos W=W3 L=L3

Rb cm_1_ref 0 1k
*******************************************

*******************************************
xM1 cm_2_ref V_pos cm_1_out cm_1_out pmos W=W1 L=L1
xM2 Vout V_neg cm_1_out cm_1_out pmos W=W1 L=L1

*******************************************

*******************************************
xM3 cm_2_ref cm_2_ref Vss Vss nmos W=W2 L=L2
xM4 Vout cm_2_ref Vss Vss nmos W=W2 L=L2

C1 Vout 0 1p 
*******************************************
.ENDS OTA