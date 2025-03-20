`timescale 1ns / 1ns


module hello_tb;

reg A;
wire B, C;

hello uut(.A(A), .B(B), .C(C));

initial begin
    
    $dumpfile("hello_tb.vcd");
    $dumpvars(0,hello_tb);

    A = 0;
    #20;

    A = 1;
    #20;

    A = 0;
    #20;

    $display("Test complete");
    $finish;

end

initial begin
    $monitor("Time = %0t | A = %b | B = %b | C = %b", $time, A, B, C);
end

endmodule