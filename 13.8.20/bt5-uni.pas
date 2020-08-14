//Kiểm tra số hoàn hảo

program bt5;

const filein='bt5in.txt'; fileout='bt5out.txt';

var n:int64; f:text;

function check(x:int64):boolean;
 var i,t:int64;
 begin
  i:=1; t:=0;
  while i<x do
  begin
   if n mod i = 0 then
   t:=t+i;
   i:=i+1;
  end;
  if t=x then exit(true) else exit(false);
 end;

procedure readfile;
 begin
  writeln('Đang đọc từ  file bt5in.txt...');
  assign(f,filein);
  reset(f);
  readln(f,n);
  close(f);
 end;   
 
procedure processout;
 begin
  writeln('Đang xử  lý và viết kết quả ra file bt5out.txt');
  assign(f,fileout);
  rewrite(f);
  if check(n) then writeln(f,'Đây là số hoàn hảo')
  else writeln(f,'Đây không là số  hoàn hảo');
  close(f);
 end; 

begin
 readfile;
 processout;
 writeln('Đã xong');
end. 
