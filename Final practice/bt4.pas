program bt4;
const filein='bt4in.txt'; fileout='bt4out.txt';
var f:text; n:longint; a:array[1..100,1..100] of longint;

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
 end;}
end;

procedure out;
var i,t,j:longint;
begin
 t:=0;
 for j:=1 to n do
 begin
  if j mod 2 <> 0 then
  for i:=1 to n do
  t:=t+a[i,j];
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