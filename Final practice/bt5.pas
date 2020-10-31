program bt5;
const filein='bt5in.txt'; fileout='bt5out.txt';
var f:text; n:longint; a:array[1..100,1..100] of longint;

function scp(x:longint):boolean;
var y:longint;
begin
 y:=trunc(sqrt(x));
 if y*y=x then exit(true) else exit(false);
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
 count:=0;
 for j:=1 to n do
 begin
  for i:=1 to n do
  if (j mod 2 <> 0) and (scp(a[i,j])=true) then inc(count);
 end;
 assign(f,fileout);
 rewrite(f);
 writeln(f,count);
 close(f);
end;

begin
 fread;
 out;
end.