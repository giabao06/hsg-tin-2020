program bt6;
const filein='bt6in.txt';fileout='bt6out.txt';
var f:text; a:array[1..100,1..100] of longint; n:longint;

function scp(x:longint):boolean;
var y:longint;
begin
 y:=trunc(sqrt(x));
 if y*y=x then scp:=true else scp:=false;
end;

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
  writeln;
 end;}
end;

procedure out;
var i,j,t:longint;
begin
 assign(f,fileout);
 rewrite(f);
 t:=0;
 for j:=1 to n do
 begin
  for i:=1 to n do
  if j mod 2 <> 0 then t:=t+a[i,j];
 end;
 writeln(f,t);
 close(f);
end;

begin
 fread;
 out;
end.