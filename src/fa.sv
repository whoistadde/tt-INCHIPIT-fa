//  Module: fa
// Che bello imparare SystemVerilog

module fa_module
    (
        input logic A,
        input logic B,
        input logic Cin,
        output logic S,
        output logic Cout
    );

    logic i0, i1, i2;

    xor u1 (S,i0,Cin);

    xor u0(i0, A, B);

    and u2(i1, A, B);
    and u3(i2,i0,Cin);

    or u4(Cout, i1, i2);

endmodule: fa_module
