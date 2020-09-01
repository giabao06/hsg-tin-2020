//In so lon nhat va nho nhat trong 1 mang

program btarr3;
const filein='btarr3in.txt'; fileout='btarr3out.txt';
type arr=array[1..100] of longint;
var f:text; n:longint; a:arr;

procedure fread;
var i:longint;
  begin
    assign(f,filein);
    reset(f);
    readln(f,n);
    for i:=1 to n do read(f,a[i]);
    close(f);
  end;

procedure out;
var i,large,smol:longint;
 begin
  large:=0; smol:=maxint;
  assign(f,fileout);
  rewrite(f);
  for i:=1 to n do
    if a[i] > large then large:=a[i]
    else if a[i] < smol then smol:=a[i];
  if (large=0) and (smol=0) then writeln(f,'Khong co so') else
    begin
      writeln(f,'Lon nhat = ',large);
      writeln(f,'Nho nhat = ',smol);
    end;
  close(f);
 end;

begin
  fread;
  out;
end.
