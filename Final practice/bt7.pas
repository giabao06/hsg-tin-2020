program bt7;
const filein='bt7in.txt'; fileout='bt7out.txt';
var f:text; a:array[1..100,1..100] of longint; n:longint;

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
end;

procedure out;
var i,j,t:longint;
begin
 assign(f,fileout);
 rewrite(f);
 t:=0;
 for i:=1 to n do
 begin
  for j:=1 to n do
  if i=j then t:=t+a[i,j];
 end;
 writeln(f,'Tổng đường chéo 1: ',t);
 t:=0;
 for i:=n downto 1 do
 begin
  for j:=n downto 1 do
  if i=j then t:=t+a[i,j];
 end;
 writeln(f,'Tổng đường chéo 2: ',t);
 close(f);
end;

begin
 fread;
 out;
end.
