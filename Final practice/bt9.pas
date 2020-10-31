program bt9;
const filein='bt9in.txt'; fileout='bt9out.txt';
var f:text; n:longint; a:array[1..100,1..100] of longint;

function snt(x:longint):boolean;
var i:longint;
begin
 if x<2 then exit(false);
 for i:=2 to trunc(sqrt(x)) do if x mod i = 0 then exit(false) else exit(true);
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
  if (i=j) and (snt(a[i,j])=true) then inc(count);
 end;
 write(f,'Số nguyên tố trong đường chéo 1: ');
 if count=0 then writeln(f,'Không có') else writeln(f,count);
 count:=0;
 for i:=n downto 1 do
 begin
  for j:=n downto 1 do
  if (i=j) and (snt(a[i,j])=true) then inc(count);
 end;
 write(f,'Số nguyên tố  trong đường chéo 2: ');
 if count=0 then writeln(f,'Không có') else writeln(f,count);
 close(f);
end;

begin
 fread;
 out;
end.
