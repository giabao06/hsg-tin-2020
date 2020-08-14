//In và đếm các số đối xứng từ 10000 đến 12000

program bt4;

const fileout='bt4out.txt';

var n,count:int64; f:text;

function chkinverse(x:int64):boolean;
 var rem,z,tmp:int64;
 begin
  rem:=0; tmp:=0;
  z:=x;
  repeat
   rem:=z mod 10; z:=z div 10;
   tmp:=tmp*10+rem;
  until z=0;
  if tmp=x then exit(true) else exit(false);
 end;
 
begin
 writeln('Đang xử  lý và viết ra file bt4out.txt...');
 assign(f,fileout);
 rewrite(f);
 count:=0;
 for n:=10000 to 12000 do
 if chkinverse(n) then
 begin
  writeln(f,n);
  inc(count);
 end;
 writeln(f,'Số các số đối xứng từ  10k đến 12k là: ',count);
 close(f);
 writeln('Đã xong');
end. 
