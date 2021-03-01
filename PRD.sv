module PRD#
(parameter R="",parameter CONST=2**(2*(R-1))-1)
(input  signed [R-1:0] I,Q,SIN,COS,
output [2*R-1:0] S,IC,QS,CNST
);
assign CNST =CONST;
assign IC=I*COS;
assign QS =Q*SIN;
assign S =CONST+(I*COS+Q*SIN);
endmodule 