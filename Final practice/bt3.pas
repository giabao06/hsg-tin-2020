program bt3;
const filein='bt3in.txt'; fileout='bt3out.txt';
var n:longint; a:array[1..100,1..100] of longint; f:text;

procedure fread;
var i,j:longint;
begin
 assign(f,filein);
 reset(f);
 readln(f,n);
 for i:=1 to n do
 begin
  for j:=1 to n do read(f,a[i,j]);
  readln(f);
 end;
 close(f);
 {for i:=1 to n do
 begin
  for j:=1 to n do write(a[i,j],#32);
  writeln();
 end}
end;

procedure out;
var i,j,t,lt:longint;
begin
 for i:=1 to n do
 if i mod 2 <> 0 then
 begin
  for j:=1 to n do
  if a[i,j] mod 2 = 0 then
  begin
   lt:=0;
   lt:=a[i,j]*a[i,j]*a[i,j];
   t:=t+lt;
  end;
 end;
 assign(f,fileout);
 rewrite(f);
 writeln(f,t);
 close(f);
end;

begin
 fread;
 out;
end.
