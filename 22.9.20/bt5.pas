// Cho 1 day so nguyen, in gia tri lon nhi

program bt5;
const filein='bt5in.txt'; fileout='bt5out.txt';
var f:text; a:array[1..100] of longint; n:longint;

procedure fread;
var i:longint;
begin
 assign(f,filein);
 reset(f);
 readln(f,n);
 for i:=1 to n do read(f,a[i]);
 close(f);
end;

procedure sort1;
var i,j,tmp:longint;
begin
 tmp:=0;
 for i:=1 to n-1 do
 begin
  for j:=i+1 to n do
  if a[i]<a[j] then
  begin
   a[i]:=tmp;
   a[i]:=a[j];
   a[j]:=tmp;
  end;
 end;
end;

procedure out;
var i:longint;
begin
 assign(f,fileout);
 rewrite(f);
 i:=1;
 while a[i] = a[i+1] do inc(i);
 writeln(f,a[i+1]);
 close(f);
end;

begin

 fread;
 sort1;
 out;
end.