//In và đếm các số siêu nguyên tố từ  20k đến 30k

program so14;

const fileout='so14out.txt';

var f:text; i1,count:int64;

function check1(x:int64):boolean;
 var i:longint;
 begin
  if x<2 then exit(false);
  for i:=2 to trunc(sqrt(x)) do if x mod i = 0 then exit(false);
  exit(true);
 end;

function check2(x:int64):boolean;
 begin
  check2:=true;
  repeat
   if check1(x)=true then x:=x div 10;
   else exit(false);
  until (X>=1) and (x<10);
 end;

begin
 assign(f,fileout);
 rewrite(f);
 d:=0;
 for i:=20000 to 30000 do
  if check2(i1) then
  begin
   writeln(f,i1);
   inc(count);     
  end;
 close(f);
end.
   
