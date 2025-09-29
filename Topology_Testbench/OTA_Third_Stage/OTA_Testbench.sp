*file: OTA_Testbench.sp	OTA_Testbench

.inc "130nm.txt"
.options post  
*.option post=1
*.option OPFILE=1

.inc "OTA.sp"
.inc "size_param.txt"

.options post  

Vdd Vdd 0 DC 1.2 AC 0
Vss Vss 0 DC 0
V_pos V_pos 0 DC 0.5 AC 1
V_neg V_neg 0 DC 0.5 AC 0


*V_pos V_neg Vout Vdd Vss -> PINOUT
X1 V_pos V_neg Vout Vdd Vss OTA
C1 Vout 0 0.1p

.ac dec 1000 1 100G
.op

*.MEAS TRAN AA AVG V(X1.cm_2_ref)
*.MEAS TRAN BB AVG V(X1.cm_1_out)
*.MEAS TRAN CC AVG V(X1.second_Vout)
.MEAS TRAN DD AVG V(X1.Vout)


.end