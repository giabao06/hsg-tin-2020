//Kiem tra snt tuong duong

program bt6;
const filein='bt6in.txt'; fileout='bt6out.txt';
var f:text; x,y,xn,yn:longint;
    ax:array[1..100] of longint; ay:array[1..100] of longint;

function snt(x:longint):boolean;
var i:longint;
begin
 if x<2 then exit(false);
 for i:=2 to trunc(sqrt(x)) do
 if x mod i=0 then exit(false) else exit(true);
end;

procedure xuoc;
var i:longint;
begin
 j:=1;
 for i:=1 to x do
 begin
  while j<=i do
  if (x mod i = 0) and (snt(i)=true) then
  begin
   ax[j]=i;
   inc(j);
   inc(xn);
  end
  else inc(j);
 end;
end;

procedure yuoc;
var i:longint;
begin
 j:=2;
 for i:=1 to y do
 begin
  while j<=i do
  if (y mod i = 0) and (snt(i) = true) then
  begin
   ay[j]=i;
   inc(j);
   inc(yn);
  end
  else inc(j);
 end;
end;

procedure fread;
begin
 assign(f,filein);
 reset(f);
 read(f,x); read(f,y);
 close(f);
end;

procedure sosanh;
var i,j,d:longint;
begin
  i:=1; j:=1;
  while i<=xn do
    while j<=yn do
      if ax[i]=ay[j] then
        begin
          inc(i);
          inc(j);
          inc(c);
        end
        else inc(j);
end;
