//In số đảo của 1 sô nhập vào
program bt2;

const filein='bt2in.txt'; fileout='bt2out.txt';

var n:int64; f:text;

function invnum(x:int64):int64;
 var rem:int64;
 begin
  invnum:=0;
  repeat
   rem:=x mod 10; x:=x div 10;
   invnum:=invnum*10+rem;
  until x=0;
 end;

procedure readfile;
 begin
  writeln('Đang đọc từ  file bt2in.txt...');
  assign(f,filein);
  reset(f);
  readln(f,n);
  close(f);
 end;

procedure processandout;
 begin
  writeln('Đang xử lý và viết kết quả ra file bt2out.txt...');
  assign(f,fileout);
  rewrite(f);
  writeln(f,invnum(n));
  close(f);
 end;

begin
 readfile;
 processandout;
 writeln('Đã xong');
end.    
