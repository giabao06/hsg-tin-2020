//Have 1 number, calculate the total of all numbers in that num

//Set file consts
const inp='numin.txt';
      out='numout.txt';

//Set vars
var n,t,rem:int64;
    f:text;

//File read proc
procedure fileread;
 begin
  writeln('Reading data from file numin.txt...');
  assign(f,inp);
  reset(f);
  readln(f,n);
  close(f);
 end;
 
//Calculation proc
procedure calc;
 begin
  writeln('Calculating...');
  while n>0 do
  begin
   rem:=n mod 10;
   n:=n div 10;
   t:=t+rem;
  end;
 end;
//File write proc
procedure writeout;
 begin
  writeln('Writing to file numout.txt...');
  assign(f,out);
  rewrite(f);
  writeln(f,'t= ', t);
  close(f);
 end;

//Main prg
begin
 fileread;
 calc;
 writeout;
 writeln('All done');
end.    
