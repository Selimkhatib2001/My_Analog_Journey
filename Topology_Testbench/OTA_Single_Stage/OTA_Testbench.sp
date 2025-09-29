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
V_pos V_pos 0 DC 0.55 AC 0.5
V_neg V_neg 0 DC 0.55 AC 0


*V_pos V_neg Vout Vdd Vss -> PINOUT
X1 V_pos V_neg Vout Vdd Vss OTA


.ac dec 1000 1 10G
.tran 0.01p 200m

.op 

.end