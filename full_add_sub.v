module full_add_sub (
    input  wire a, b, bin,       
    output wire diff, borrow     
);
    
	 assign diff   = a ^ b ^ bin;               
    assign borrow = (~a & b) | (~(a ^ b) & bin);  

endmodule
