/*
:name: unary_op_minus
:description: - operator test
:tags: 11.3
*/
module top();
int a = 12;
int b = 5;
initial begin
    a = -b;
end
endmodule