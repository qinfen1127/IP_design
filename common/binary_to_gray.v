// Open source code for learning purposes only
// Data     : 2021-07-29
// Author   : Howard
// Email    : qinfen1127@163.com
// Location : Chengdu-China
// File     : binary_to_gray.v
// Function : Convert binary to gray code.

module binary_to_gray #(parameter DSIZE=8)
// DSIZE : width of data
(
input    [DSIZE-1:0]         binary_value   , //input binary value
output   [DSIZE-1:0]         gray_value       //output gray value
);

//-----------------------------------------------------------------------------------
// convert logic
//-----------------------------------------------------------------------------------
assign   gray_value = (binary_value >> 1) ^ binary_value ;

endmodule
