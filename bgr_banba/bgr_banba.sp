*file: band_gap_referance.sp	band_gap_referance
.inc "tsmc18_bsim.txt"
.inc "sizing_param.txt"
.inc "pnp_05v5_W3p40L3p40.txt"
.inc "ota_pmos.sp"

.options post

Vdd Vdd 0 DC 1.8 AC 1
Vss Vss 0 DC 0 

M1 Va imp_out Vdd Vdd pfet W=W6 L=L2
M2 Vb imp_out Vdd Vdd pfet W=W6 L=L2
M3 Vc imp_out Vdd Vdd pfet W=W6 L=L2

M4 imp_out op_amp_out Vdd Vdd pfet W=W7 L=L2
M5 imp_out op_amp_out 0 0 nfet W=W7 L=L2

X1 Vb Va op_amp_out Vdd Vss OTA_PMOS

R1 0 Va 19.8k
R2 0 Vb 19.8k
R3 Vf Vb 2k
R4 0 Vc 10k

Q1 0 0 Va pnp_05v5_W3p40L3p40

Q2 0 0 Vf pnp_05v5_W3p40L3p40
Q3 0 0 Vf pnp_05v5_W3p40L3p40
Q4 0 0 Vf pnp_05v5_W3p40L3p40
Q5 0 0 Vf pnp_05v5_W3p40L3p40
Q6 0 0 Vf pnp_05v5_W3p40L3p40
Q7 0 0 Vf pnp_05v5_W3p40L3p40
Q8 0 0 Vf pnp_05v5_W3p40L3p40
Q9 0 0 Vf pnp_05v5_W3p40L3p40

.op
*.tran 10p 50u 10u
.dc temp -40 140 0.1  
*.ac dec 10000 1 1000G

.end