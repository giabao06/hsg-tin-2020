program bt8;
const filein='bt8in.txt'; fileout='bt8out.txt';
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
end;

procedure out;
var i,j,count:longint;
begin
 assign(f,fileout);
 rewrite(f);
 count:=0;
 for i:=1 to n do
 begin
  for j:=1 to n do
  if (i=j) and (a[i,j] mod 2 = 0) then inc(count);
 end;
 writeln(f,'Số chẵn trong đường chéo 1: ',count);
 count:=0;
 for i:=n downto 1 do
 begin
  for j:=n downto 1 do
  if (i=j) and (a[i,j] mod 2 = 0) then inc(count);
 end;
 writeln(f,'Số chẵn trong đường chéo 2: ',count);
 close(f);
end;

begin
 fread;
 out;
end.