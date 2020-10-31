program bt1;
const filein='bt1in.txt'; fileout='bt1out.txt';
var f:text; m,n:longint; a:array[1..100,1..100] of longint;

function chkprime(x:longint):boolean;
var i:longint;
begin
 if x<2 then exit(false);
 for i:=2 to trunc(sqrt(x)) do
 if x mod i = 0 then exit(false);
 exit(true);
end;

procedure fread;
var i,j:longint;
begin
 assign(f,filein);
 reset(f);
 readln(f,m,n);
 for i:=1 to m do
 begin
  for j:=1 to n do read(f,a[i,j]);
  readln(f);
 end;
 close(f);
 {for i:=1 to m do
 begin
  for j:=1 to n do write(a[i,j],#32);
  writeln();
 end;}
end;

procedure out;
var i,t,j:longint;
begin
 t:=0;
 for i:=1 to m do
 if i mod 2 <> 0 then
 begin
  for j:=1 to n do
  if chkprime(a[i,j]) then t:=t+a[i,j];
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



