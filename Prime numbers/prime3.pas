//Calculate the total of all prime numbers in a number
//From now on there will be less detailed explanations
program prime3.pas;
const infile='prime3in.txt';
      outfile='prime3out.txt';

var n:int64;
    f:text;

procedure fileread;
 begin
  writeln('Reading from file prime3in.txt..');
  assign(f,infile);
  reset(f);
  readln(f,n);
  close(f);
 end;

//function to calculate
function calc(x:int64):boolean;
 var i:int64;
  begin
   if x<2 then exit(false);
   for i:=2 to trunc(sqrt(x)) do
   if x mod i = 0 then exit(false);
   exit(true);
  end;

//procedure to calc and write
procedure calcnwrite;
 var rem:byte; t:int64;
 begin
  writeln('Calculating and outting to file prime3out.txt...');
  assign(f,outfile);
  rewrite(f);
  t:=0;
  while n>0 do
  begin
   rem:= n mod 10;
   if calc(rem) then t:=t+rem;
   n:=n div 10;
  end;
  if t>0 then writeln(f,t)
  else writeln(f,0);
  close(f);
 end;

begin
 fileread;
 calcnwrite;
 writeln('Done.');
end.
