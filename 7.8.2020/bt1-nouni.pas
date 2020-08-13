//Nhap 1 so tinh tong lap phuong cac so nguyen to cua so do
program bt1-nouni;

const filein='bt1in.txt'; fileout='bt1out.txt';

var n:int64; f:text;

procedure readfile;
 begin
  writeln('Dang doc tu file bt1in.txt...');
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
  writeln('Dang xu ly va viet ket qua ra file bt1out.txt...');
  assign(f,fileout);
  rewrite(f);
  while n>0 do
  begin
   rem:=n mod 10;
   if chkprime(rem) then t:=t+(rem*rem*rem);
   n:=n div 10;
  end;
  if t>0 then writeln(f,t) else writeln(f,0);
  close(f);
 end;

begin
 readfile;
 processnout;
 writeln('Da xong');
end.          
