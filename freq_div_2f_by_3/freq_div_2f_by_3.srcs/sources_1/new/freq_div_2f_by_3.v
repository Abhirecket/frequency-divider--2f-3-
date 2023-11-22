`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COLLEGE OF VLSI 
// Engineer: ABHISHEK KUMAR KUSHWAHA 
// 
// Create Date: 25.05.2023 11:58:20
// Design Name: 
// Module Name: freq_div_2f_by_3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module freq_div_2f_by_3(

	input		clk,
    input       rst,    
	output 		clk_out
    );

reg dff1, dff2;
wire w_clk_out;

always @(posedge clk or negedge rst) begin

       if(!rst) begin

        dff1 <= 1'b0;

        end
      else begin

        dff1 <=  w_clk_out;
        end
    end
always @(negedge clk or negedge rst) begin

       if(!rst) begin

        dff2 <= 1'b0;

        end
      else begin

        dff2 <=  w_clk_out;
        end
    end 

// NOR output of the ffs.
nor g1(clk_out,dff1,dff2);


// ffs feedback from gate.

assign w_clk_out = clk_out;



endmodule
