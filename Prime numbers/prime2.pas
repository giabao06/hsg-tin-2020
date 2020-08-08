//Enter a number, count all prime numbers in that number
program prime3;
//Set file consts
const infile='prime2in.txt';
      outfile='prime2out.txt';

//Set global vars
var n:longint;
    f:text;

//Read proc
procedure fileread;
 begin
  writeln('Reading from file prime2in.txt...');
  assign(f,infile);
  reset(f);
  readln(f,n);
  close(f);
 end;

//Prime number calc function
function primecalc(num:longint):boolean;
 var i:int64;
 begin
  if num<2 then exit(false);
  for i:=2 to trunc(sqrt(num)) do
  if num mod i = 0 then exit(false);
  exit(true);
 end;

//Process and output proc
procedure processandout;
 var rem, count:byte;
 begin
  writeln('Calculating and outputting to file prime2out.txt...');
  assign(f,outfile);
  rewrite(f);
  count:=0;
  while n>0 do
  begin
   rem:=n mod 10;
   if primecalc(rem) then inc(count);
   n:=n div 10;
  end;
  if count>0 then writeln(f,count)
  else writeln(f,0);
  close(f);
 end;

//Main prg
begin
 fileread;
 processandout;
 writeln('200 OK'); //HTTP reference
end.
