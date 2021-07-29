// Open source code for learning purposes only
// Data     : 2021-07-29
// Author   : Howard
// Email    : qinfen1127@163.com
// Location : Chengdu-China
// File     : gray_to_binary.v
// Function : Convert gray code to binary.

module gray_to_binary #(parameter DSIZE=8)
// DSIZE : width of data
(
input              [DSIZE-1:0]         gray_value   , //input gray value
output             [DSIZE-1:0]         binary_value   //output binary value
);

//-----------------------------------------------------------------------------------
// convert logic
//-----------------------------------------------------------------------------------
assign  binary_value[DSIZE-1] = gray_value[DSIZE-1] ;

generate
    genvar i;
    for(i=0; i<DSIZE-1; i=i+1)
    begin:gray2bin_loop
        assign  binary_value[i] = binary_value[i+1] ^ gray_value[i] ;
    end
endgenerate

endmodule
