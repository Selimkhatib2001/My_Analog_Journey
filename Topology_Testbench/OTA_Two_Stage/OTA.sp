.SUBCKT OTA V_pos V_neg Vout Vdd Vss

*******************************************
xM5 cm_1_ref cm_1_ref Vdd Vdd pmos W=W1 L=L1
xM6 cm_1_out cm_1_ref Vdd Vdd pmos W=W1 L=L1

Rb cm_1_ref 0 40k
*******************************************

*******************************************
xM1 cm_2_ref V_pos cm_1_out cm_1_out pmos W=W2 L=L2
xM2 first_Vout V_neg cm_1_out cm_1_out pmos W=W2 L=L2

*******************************************

*******************************************
xM3 cm_2_ref cm_2_ref Vss Vss nmos W=W3 L=L3
xM4 first_Vout cm_2_ref Vss Vss nmos W=W3 L=L3

C1 Vout first_Vout 3p

xM7 Vout cm_1_ref Vdd Vdd pmos W=W1 L=0.18u
xM8 Vout first_Vout Vss Vss nmos W=W3 L=L4
*******************************************
.ENDS OTA