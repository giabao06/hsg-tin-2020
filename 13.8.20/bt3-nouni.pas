//Kiem tra so doi xung

program bt3;

const filein='bt3in.txt'; fileout='bt3out.txt';

var n:int64; f:text;

function check(x:int64):boolean;
 var rem,z,tmp:int64;
 begin
  rem:=0; tmp:=0;
  z:=x; // Lay z=x
  repeat
   rem:= z mod 10; z:=z div 10;
   tmp:= tmp*10+rem;
  until z=0;  //Dao z qua bien tmp
  if tmp=x then exit(true) else exit(false); //Neu tmp (so dao cua x) = x thi return true, khong thi return false
 end;
 
procedure readfile;
 begin
  writeln('Dang doc tu file bt3in.txt...');
  assign(f,filein);
  reset(f);
  readln(f,n);
  close(f);
 end;

procedure processandout;
 begin
  writeln('Dang xu ly va viet ket qua ra file bt3out.txt...');
  assign(f,fileout);
  rewrite(f);
  if check(n) then writeln(f,'Day la so doi xung')
  else writeln(f,'Day khong la so doi xung');
  close(f);
 end;

begin
 readfile;
 processandout;
 writeln('Da xong');
end.    
