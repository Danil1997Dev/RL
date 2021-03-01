module OQPSK_MOD#//Имя головного файла
(
parameter R=7,
parameter Br=1,
parameter N=16,
parameter f0=10,
parameter NBAR=5,
parameter f=f0/Br,
parameter SIZE=f*Br*N,
parameter SIZE1=SIZE/2,
parameter SIZEIQ=16,
parameter SIZESC=SIZE/(f*Br),
parameter Ft=SIZE,
parameter R1=$clog2((SIZE1-N)*NBAR),
parameter Rint_i=(4*R+1),
parameter Rint_o=(4*R+1)+R1,
parameter D=4

)//Объявление параметров
(input  C,I,Q,Reset,
output [2*R-1:0] S,
output QOut
);//Объявление входных и выходных переменных
wire [R-1:0]s;
wire [R-1:0]c;
wire [R-1:0]i;
wire q;
wire [R-1:0]qo;//Объявление входных и выходных переменных
MEM_SIGNAL_ROM #(.SIZE(SIZEIQ),.R(R)) iq0(.C(C),.In(I),.Y(i),.Reset(Reset));//Модуль формирования модулирующего сигнала I
MEM_SIGNAL_ROM #(.SIZE(SIZEIQ),.R(R)) iq1(.C(C),.In(q),.Y(qo),.Reset(Reset));//Модуль формирования модулирующего сигнала Q
MEM_SIGNAL_ROM #(.SIZE(SIZESC),.R(R)) sc0(.C(C),.In(1'b1),.Y(s),.Reset(Reset));//Модуль формирования ВЧ сигнала косинуса
MEM_SIGNAL_ROM #(.SIZE(SIZESC),.R(R)) sc1(.C(C),.In(1'b0),.Y(c),.Reset(Reset));//Модуль формирования ВЧ сигнала синуса
SHIFT_Q #(.SIZEIQ(SIZEIQ)) inst4(.C(C),.Q(Q),.E(1'b1),.Q1(q),.LP(LP));//Модуль сдвигового регистра Q канала
PRD #(.R(R)) inst5(.I(i),.Q(qo),.SIN(s),.COS(c),.CNST(CNST),.IC(IC),.QS(QS),.S(S));//ПРД УКв
assign QOut={I,q};
endmodule 

