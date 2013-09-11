/*
** 8-bit pla with low enable synchronous set
*/

`timescale 1ns / 1ns

// timescale 1ns/10ps
//******************************************************************
module dff ( Q, CLK, D, SET );

output Q;
input CLK,D,SET;

reg temp;

assign Q = temp;

always @ (posedge CLK or negedge SET)    
 begin                           
     if (!SET)  temp <= 1'b1; 
     else       temp <= D;                                                        
 end  // always @ (posedge clock)

endmodule

//*******************************************************************

module WRD_STTS ( CLK, I0, I1, I2, I3, I4, I5, I6, I7, OE,
                  B0,  B1, B2, B3, F0, F1, F2, F3, F4, F5, F6, F7 );

input  CLK, I0, I1, I2, I3, I4, I5, I6, I7, OE;
output B0,  B1, B2, B3, F0, F1, F2, F3, F4, F5, F6, F7; 
 
wire  lambda_216, lambda_212, lambda_208, lambda_204, 
      lambda_200, lambda_196, lambda_192, lambda_188,
      lambda_93;

wire  lambda_137 = ~I1  & ~lambda_208;
wire  lambda_135 =  I0  &  lambda_204  & ~lambda_208  &  lambda_212  & ~lambda_216;
wire  lambda_133 =  I0  &  lambda_204  & ~lambda_208  &  lambda_212;
wire  lambda_131 =  I0  &  lambda_204  &  lambda_208  & ~lambda_212  & ~lambda_216;
wire  lambda_129 =  I0  &  lambda_204  &  lambda_208  & ~lambda_212  &  lambda_216;
wire  lambda_127 =  I0  &  lambda_204  &  lambda_208  &  lambda_212  & ~lambda_216;
wire  lambda_125 =  I0  &  lambda_204  &  lambda_208  &  lambda_212;
wire  lambda_123 =  I0  &  lambda_204  &  lambda_208  & ~lambda_216;
wire  lambda_121 =  I0  &  lambda_204  &  lambda_208  &  lambda_216;
wire  lambda_119 =  I0  &  lambda_204  &  lambda_208;
wire  lambda_117 =  I0  &  lambda_204  &  lambda_212  &  lambda_216;
wire  lambda_115 =  I0  & ~lambda_208;

wire  lambda_113 = ~lambda_204  &  lambda_208;
wire  lambda_111 = ~lambda_204  &  lambda_216;
wire  lambda_109 =  lambda_204  & ~lambda_208;
wire  lambda_107 =  lambda_204  &  lambda_208;
wire  lambda_105 =  lambda_204  &  lambda_212;
wire  lambda_103 = ~lambda_208  & ~lambda_212;
wire  lambda_101 = ~lambda_208  &  lambda_212  & ~lambda_216;
wire  lambda_99  = ~lambda_208  &  lambda_216;
wire  lambda_97  =  lambda_208  &  lambda_212  &  lambda_216;
wire  lambda_95  =  lambda_208  & ~lambda_216;

wire  lambda_220 =  lambda_113  |  lambda_111  | lambda_103;
wire  F3_J       =  lambda_119  |  lambda_117;
wire  F2_K       =  lambda_133  |  lambda_131;
wire  F2_J       =  lambda_125  |  lambda_121;
wire  F1_K       =  lambda_129  |  lambda_127;
wire  F1_J       =  lambda_133  |  lambda_131  | lambda_117;
wire  F0_K       =  lambda_133  |  lambda_121;
wire  COMP       =  lambda_107  |  lambda_105  | lambda_101;
wire  B2         = ~lambda_137  |  lambda_115  | lambda_113  | lambda_109 | lambda_103 | lambda_99;
wire  B1         = ~lambda_111  |  lambda_95   | lambda_93;
wire  B0         = ~lambda_113  |  lambda_111  | lambda_103  | lambda_97;

wire  lambda_217 = ~lambda_216;
wire  lambda_213 = ~lambda_212;
wire  lambda_209 = ~lambda_208;
wire  lambda_205 = ~lambda_204;
wire  lambda_201 = ~lambda_200;
wire  lambda_197 = ~lambda_196;
wire  lambda_193 = ~lambda_192;
wire  lambda_189 = ~lambda_188;
wire  lambda_139 = ~I2;
wire  lambda_93  = ~lambda_212;

wire  jktod_0 = ( (lambda_123 & ~F0_K)       | 
                  (lambda_123 & ~lambda_216) |
                  (lambda_216 & ~F0_K) );

wire  jktod_1 = ( (F1_J       & ~F1_K)       | 
                  (F1_J       & ~lambda_212) | 
                  (lambda_212 & ~F1_K) );

wire  jktod_2 = ( (F2_J       & ~F2_K)       | 
                  (F2_J       & ~lambda_208) | 
                  (lambda_208 & ~F2_K) );

wire  jktod_3 = ( (F3_J       & ~lambda_135) | 
                  (F3_J       & ~lambda_204) | 
                  (lambda_204 & ~lambda_135) );

wire  jktod_4 =   (lambda_200 & 1'b1);

wire  jktod_5 =   (lambda_196 & 1'b1);

wire  jktod_6 =   (lambda_192 & 1'b1); 

wire  jktod_7 =   (lambda_188 & 1'b1);


dff  d_label_0 ( lambda_216, CLK, jktod_0, lambda_139 );
dff  d_label_1 ( lambda_212, CLK, jktod_1, lambda_139 );
dff  d_label_2 ( lambda_208, CLK, jktod_2, lambda_139 );
dff  d_label_3 ( lambda_204, CLK, jktod_3, lambda_139 );
dff  d_label_4 ( lambda_200, CLK, jktod_4, lambda_139 );
dff  d_label_5 ( lambda_196, CLK, jktod_5, lambda_139 );
dff  d_label_6 ( lambda_192, CLK, jktod_6, lambda_139 );
dff  d_label_7 ( lambda_188, CLK, jktod_7, lambda_139 );

assign  F7 = lambda_189;
assign  F6 = lambda_193;
assign  F5 = lambda_197;
assign  F4 = lambda_201;
assign  F3 = lambda_205;
assign  F2 = lambda_209;
assign  F1 = lambda_213;
assign  F0 = lambda_217;

bufif1 tri_label_0 (B3, lambda_220, 1'b0);

endmodule  // WRD_STTS ()




