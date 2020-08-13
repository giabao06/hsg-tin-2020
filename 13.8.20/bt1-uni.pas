//Tính tổng các số là ước của 3 và 5 từ  1 đến n

program bt1;

const filein='bt1in.txt'; fileout='bt1out.txt';

var f:text; t,i,n:int64;

function chkreqs(x:int64):boolean;
 begin
  if x<3 then exit(false);
  if x mod 3 = 0 then if x mod 5 = 0 then exit(true);
  exit(false);
 end;
  
procedure fileread;
 begin
  writeln('Đang đọc từ  file bt1in.txt...');
  assign(f,filein);
  reset(f);
  readln(f,n);
  close(f);
 end;

procedure processnout;
 begin
  writeln('Đang xử  lý và viết kết quả ra file bt1out.txt...');
  for i:=1 to n do if chkreqs(i) then t:=t+i;
  assign(f,fileout);
  rewrite(f);
  writeln(f,t);
  close(f);
 end;

begin
 fileread;
 processnout;
 writeln('Đã xong');
end.   
