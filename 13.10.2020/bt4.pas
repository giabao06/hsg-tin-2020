program bt4;
const filein='bt4in.txt'; fileout='bt4out.txt';
var f:text; a:array[1..100,1..100] of byte; n:longint;

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

function check(i,j,i1,j1:longint):boolean;
var x,y:longint;
begin
 for x:=i to i1 do
  for i:=j to j1 do
   if a[x,y]<>1 then exit(false);
 exit(true);
end;

procedure out;
var i1,i,j,j1,mi,mj,mi1,mj1,large:longint;
begin
 assign(f,fileout);
 rewrite(f);
 large:=0;
 for i:=1 to n-1 do
 for j:=1 to n-1 do
 if a[i,j]=1 then
 for i1:=i+1 to n do
 for j1:=j+1 to n do
 if a[i1,j1]=1 then
 if check(i,j,i1,j1) and (large<(i1-i+1)*(j1-j+1)) then
 begin
  large:=(i1-i+1)*(j1-j+1);
  mi:=i; mj:=j; mi1:=i1; mj1:=j1;
 end;
 writeln(f,large);
 writeln(mi,',',mj,'->',mi1,',\',mj1);
 close(f);
end;

begin
 fread;
 out;
end.
