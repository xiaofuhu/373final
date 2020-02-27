///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: servo_ctrl.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion> <Die::A2F200M3F> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module servo_ctrl(
    input PCLK,    // clock  input PRESERN,    // system reset 
    input PRESERN,
    input PSEL,
    input PENABLE,
    output wire PREADY,
    output wire PSLVERR,
    input PWRITE,
    input [31:0] PADDR,
    input wire [31:0] PWDATA,
    output reg [31:0] PRDATA,
    output reg pwm
 );  
 
assign PSLVERR = 0; //assumes no error generation
assign PREADY = 1; //assumes zero wait
wire write_enable = (PENABLE &&  PWRITE && PSEL);  //decodes APB3 write cycle
wire read_enable = (!PWRITE && PSEL);   //decode APB3 read cycle 
 
// ****** Your code ****** 
`define period 2000000
reg [31:0] count;
always @(posedge PCLK) begin
    if (count == `period)
        count <= 0;
    else
        count <= count + 1;
    if (write_enable && count < PWDATA)
        pwm <= 1;
    else
        pwm <= 0; 
    end
endmodule

