//Nhập 1 số  tính tổng ^4 các số nguyên tố của số đó
program bt1;

const filein='bt2in.txt'; fileout='bt2out.txt';

var n:int64; f:text;

procedure readfile;
 begin
  writeln('Đang đọc từ  file bt2in.txt...');
  assign(f,filein);
  reset(f);
  readln(f,n);
  close(f);
 end;

function chkprime(x:int64):boolean;
 var i:int64;
 begin
  if x<2 then exit(false);
  for i:=2 to trunc(sqrt(x)) do
  if x mod i = 0 then exit(false);
  exit(true);
 end;

procedure processnout;
 var rem,t:byte;
 begin
  writeln('Đang xử  lý và viết kết quả ra file bt2out.txt...');
  assign(f,fileout);
  rewrite(f);
  while n>0 do
  begin
   rem:=n mod 10;
   if chkprime(rem) then t:=t+(rem*rem*rem*rem);
   n:=n div 10;
  end;
  if t>0 then writeln(f,t) else writeln(f,0);
  close(f);
 end;

begin
 readfile;
 processnout;
 writeln('Đã xong.');
end.          
