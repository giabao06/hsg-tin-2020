//Xap xep mang tang dan va in ra

program btarr4;
const filein='btarr4in.txt'; fileout='btarr4out.txt';
type arr=ARRAY[1..100] of longint;
var f:text; a:arr; n:LONGINT;

procedure fread;
var i:LONGINT;
  BEGIN
    assign(f,filein);
    reset(f);
    readln(f,n);
    for i:=1 to n do read(f,a[i]);
    close(f);
  END;

procedure out;
var i,j,k:LONGINT;
  begin
    assign(f,fileout);
    rewrite(f);
    for i:=1 to n-1 do
      begin
        j:=i+1;
        for j:=j to n do if a[i]>a[j] then
          begin
            k:=a[i];
            a[i]:=a[j];
            a[j]:=k;
          end;
      end;
    for i:=1 to n do write(f,a[i],#32);
    close(f);
  end;

begin
  fread;
  out;
end.
