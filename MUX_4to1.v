`timescale 1ns / 1ps

module MUX_4to1(Y,i0, i1, i2, i3, s1, s0);
    output Y;
    input i0;
    input i1;
    input i2;
    input i3;
    input s1;
    input s0;
	 
	 //Logic equation for Y output
	 assign Y = (~s1&~s0&i0)|(~s1&s0&i1)|(s1&~s0&i2)|(s1&s0&i3);


endmodule
