
?
Command: %s
53*	vivadotcl2Y
Ewrite_bitstream -force -no_partial_bitfile FullProcessorPipelined.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
Rule violation (%s) %s - %s
20*drc2
CFGBVS-12default:default2G
3Missing CFGBVS and CONFIG_VOLTAGE Design Properties2default:default2?
?Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/E[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[0][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[0][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_10[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[11][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[11][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_11[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[12][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[12][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_12[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[13][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[13][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_13[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[122][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[122][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_14[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[15][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[15][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_15[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[121][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[121][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_16[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[17][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[17][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_17[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[18][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[18][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_18[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[20][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[20][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_19[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[21][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[21][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_1[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[128][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[128][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_20[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[22][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[22][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_21[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[23][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[23][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_22[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[24][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[24][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_23[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[25][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[25][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_24[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[26][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[26][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_25[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[27][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[27][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_26[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[28][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[28][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_27[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[29][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[29][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_28[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[31][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[31][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_29[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[32][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[32][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_2[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[2][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[2][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_30[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[33][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[33][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_31[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[34][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[34][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_32[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[35][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[35][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_33[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[36][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[36][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_34[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[37][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[37][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_35[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[38][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[38][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_36[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[39][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[39][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_37[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[40][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[40][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_38[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[41][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[41][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_39[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[42][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[42][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_3[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[127][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[127][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_40[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[116][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[116][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_41[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[44][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[44][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_42[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[45][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[45][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_43[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[114][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[114][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_44[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[47][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[47][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_45[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[48][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[48][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_46[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[49][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[49][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_47[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[50][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[50][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_48[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[51][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[51][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_49[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[52][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[52][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_4[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[126][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[126][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_50[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[53][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[53][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_51[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[54][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[54][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_52[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[55][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[55][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_53[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[56][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[56][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_54[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[113][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[113][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_55[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[58][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[58][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_56[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[59][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[59][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_57[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[111][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[111][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_58[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[61][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[61][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_59[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[109][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[109][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_5[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[125][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[125][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_60[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[63][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[63][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_61[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[64][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[64][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_62[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[65][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[65][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_63[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[66][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[66][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_64[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[67][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[67][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_65[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[68][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[68][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_66[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[69][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[69][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_67[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[70][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[70][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_68[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[71][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[71][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_69[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[72][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[72][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_6[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[124][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[124][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_70[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[73][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[73][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_71[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[74][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[74][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_72[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[75][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[75][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_73[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[76][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[76][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_74[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[108][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[108][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_75[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[77][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[77][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_76[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[78][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[78][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_77[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[80][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[80][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_78[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[106][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[106][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_79[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[105][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[105][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_7[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[8][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[8][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_80[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[82][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[82][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_81[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[84][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[84][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_82[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[102][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[102][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_83[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[101][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[101][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_84[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[87][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[87][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_85[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[88][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[88][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_86[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[100][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[100][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_87[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[90][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[90][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_88[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[99][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[99][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_89[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[92][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[92][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_8[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[123][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[123][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_90[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[93][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[93][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_91[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[94][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[94][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_92[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[95][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[95][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_93[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[96][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[96][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_94[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[97][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[97][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_95[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[98][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[98][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_96[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[1][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[1][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[145].mod2/Q_reg_9[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[145].mod2/mem_reg[10][7]_i_2/O, cell EX_MEM/genblk1[145].mod2/mem_reg[10][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[8].mod2/Q_reg_18[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[8].mod2/mem_reg[119][7]_i_2/O, cell EX_MEM/genblk1[8].mod2/mem_reg[119][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net EX_MEM/genblk1[8].mod2/Q_reg_31[0] is a gated clock net sourced by a combinational pin EX_MEM/genblk1[8].mod2/mem_reg[79][7]_i_2/O, cell EX_MEM/genblk1[8].mod2/mem_reg[79][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
	DRC 23-202default:default2
1002default:defaultZ17-14h px? 
h
DRC finished with %s
1905*	planAhead2*
0 Errors, 133 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
m
Writing bitstream %s...
11*	bitstream20
./FullProcessorPipelined.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
662default:default2
1022default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:232default:default2
00:00:232default:default2
1662.4572default:default2
388.1412default:defaultZ17-268h px? 
s
Unable to parse hwdef file %s162*	vivadotcl20
FullProcessorPipelined.hwdef2default:defaultZ4-395h px? 


End Record