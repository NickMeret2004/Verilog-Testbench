module hello(A,B,C);

  input A;
  output B, C;

  assign B = A;
  assign C = ~A; 

endmodule

