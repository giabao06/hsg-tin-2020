// Provide x and y, add, subtract, multiply and divide them

//Set file constants
const input='Ex2in.txt';
      output='Ex2out.txt';

//Set a file variable as text
var f:text;
    x,y,total,diff,prod : int64;
    quot                : real;
//Input proc
procedure inp;
 begin
  writeln('Reading input file Ex2in.txt...');
  assign(f,input);
  reset(f);
  read(f,x,y);
  close(f);
 end;

//Calculation proc
procedure calc;
 begin
  writeln('Calculating...');
  total :=x+y;
  diff  :=x-y;
  prod  :=x*y;
  quot  :=x/y;
 end;

//Output proc
procedure outp;
 begin
  writeln('Writing to file Ex2out.txt...');
  assign(f,output);
  rewrite(f);
  writeln(f, 'Total of x+y is: ', total);
  writeln(f, 'Diffrence of x-y is: ', diff);
  writeln(f, 'Product of x*y is: ', prod);
  writeln(f, 'Quotient of x/y is: ', quot:0:1);
  close(f);
 end;
 
//Main prg
begin
 inp;
 calc;
 outp;
 writeln('All done.');
end.
