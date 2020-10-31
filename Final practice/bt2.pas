program bt2;
const filein='bt2in.txt'; fileout='bt2out.txt';
var f:text; m,n:longint; a:array[1..100,1..100] of longint;

function scp(x:longint):boolean;
var i:longint;
begin
 i:=trunc(sqrt(x));
 if i*i=x then exit(true) else exit(false);
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
 for i:=1 to m do
 begin
  for j:=1 to n do write(a[i,j],#32);
  writeln();
 end;
end;

procedure out;
var i,j,t:longint;
begin
 t:=0;
 for i:=1 to m do
 if i mod 2 = 0 then
 for j:=1 to n do if scp(a[i,j]) then t:=t+a[i,j];
 assign(f,fileout);
 rewrite(f);
 writeln(f,t);
 close(f);
end;

begin
 fread;
 out;
end.