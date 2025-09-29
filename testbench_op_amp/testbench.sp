*file: testbench_op_amp.sp	testbench_op_amp
.inc "tsmc18_bsim.txt"
*.inc "ota_nmos.sp"
.inc "ota_pmos.sp"
*.inc "ota_nmos_sizing.txt"
.inc "ota_pmos_sizing.txt"

.options post  

Vdd Vdd 0 DC 1.8 AC 1
Vss Vss 0 DC 0 
V_pos V_pos 1 DC 0.65 AC 0
v_A 1 0 SIN 0 1m 500 0 0 0 0
V_neg V_neg 0 DC 0.65 AC 0

*Va Va 0 DC 0.65 ;AC 1

*V_pos V_neg Vout Vdd Vss -> PINOUT
X1 V_pos V_neg Vout Vdd Vss OTA_PMOS
C1 Vout 0 0.001p

.ac dec 1000 1 100G 
.tran 0.01p 20m

.op 

.end
