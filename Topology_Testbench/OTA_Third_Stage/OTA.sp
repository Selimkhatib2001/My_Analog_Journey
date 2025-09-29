.SUBCKT OTA V_pos V_neg Vout Vdd Vss

*******************************************
xM1 cm_1_ref cm_1_ref Vdd Vdd pmos W=W1 L=L1
xM2 cm_1_out cm_1_ref Vdd Vdd pmos W=W1 L=L1

Rb cm_1_ref 0 53.3k
*******************************************

*******************************************
xM3 cm_2_ref V_pos cm_1_out cm_1_out pmos W=W2 L=L2
xM4 first_Vout V_neg cm_1_out cm_1_out pmos W=W2 L=L2

*******************************************

*******************************************
xM5 cm_2_ref cm_2_ref Vss Vss nmos W=W3 L=L3
xM6 first_Vout cm_2_ref Vss Vss nmos W=W3 L=L3

C1 first_Vout Vout 1p

xM7 second_Vout cm_1_ref Vdd Vdd pmos W=W4 L=L4
xM8 second_Vout first_Vout Vss Vss nmos W=W5 L=L5


xM9 Vout second_Vout Vdd Vdd pmos W=W7 L=L7
xM10 Vout second_Vout Vss Vss nmos W=W8 L=L8

*******************************************
.ENDS OTA