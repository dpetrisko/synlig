/* Generated by Yosys 0.27+9 (git sha1 101d19bb6, gcc 11.2.0-7ubuntu2 -fPIC -Os) */

(* top =  1  *)

module bsg_link_iddr_phy(clk_i, data_i, data_r_o);
  
  input clk_i;
  wire clk_i;
  
  input [15:0] data_i;
  wire [15:0] data_i;
  
  reg [15:0] data_n_r;
  
  reg [15:0] data_p_r;
  
  output [31:0] data_r_o;
  wire [31:0] data_r_o;
  
  reg [31:0] data_rr;
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[16] <= data_n_r[0];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[17] <= data_n_r[1];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[18] <= data_n_r[2];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[19] <= data_n_r[3];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[20] <= data_n_r[4];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[21] <= data_n_r[5];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[22] <= data_n_r[6];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[23] <= data_n_r[7];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[24] <= data_n_r[8];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[25] <= data_n_r[9];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[26] <= data_n_r[10];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[27] <= data_n_r[11];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[28] <= data_n_r[12];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[29] <= data_n_r[13];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[30] <= data_n_r[14];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[31] <= data_n_r[15];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[0] <= data_i[0];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[1] <= data_i[1];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[2] <= data_i[2];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[3] <= data_i[3];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[4] <= data_i[4];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[5] <= data_i[5];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[6] <= data_i[6];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[7] <= data_i[7];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[8] <= data_i[8];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[9] <= data_i[9];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[10] <= data_i[10];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[11] <= data_i[11];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[12] <= data_i[12];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[13] <= data_i[13];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[14] <= data_i[14];
  (* \always_ff  = 32'd1 *)
  
  always @(negedge clk_i)
    data_n_r[15] <= data_i[15];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[0] <= data_i[0];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[1] <= data_i[1];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[2] <= data_i[2];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[3] <= data_i[3];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[4] <= data_i[4];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[5] <= data_i[5];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[6] <= data_i[6];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[7] <= data_i[7];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[8] <= data_i[8];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[9] <= data_i[9];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[10] <= data_i[10];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[11] <= data_i[11];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[12] <= data_i[12];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[13] <= data_i[13];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[14] <= data_i[14];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_p_r[15] <= data_i[15];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[0] <= data_p_r[0];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[1] <= data_p_r[1];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[2] <= data_p_r[2];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[3] <= data_p_r[3];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[4] <= data_p_r[4];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[5] <= data_p_r[5];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[6] <= data_p_r[6];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[7] <= data_p_r[7];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[8] <= data_p_r[8];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[9] <= data_p_r[9];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[10] <= data_p_r[10];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[11] <= data_p_r[11];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[12] <= data_p_r[12];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[13] <= data_p_r[13];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[14] <= data_p_r[14];
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    data_rr[15] <= data_p_r[15];
  assign data_r_o = data_rr;
endmodule

