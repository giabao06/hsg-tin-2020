//Kiểm tra số đối xứng

program bt3;

const filein='bt3in.txt'; fileout='bt3out.txt';

var n:int64; f:text;

function check(x:int64):boolean;
 var rem,z,tmp:int64;
 begin
  rem:=0; tmp:=0;
  z:=x; // Lấy z=x
  repeat
   rem:= z mod 10; z:=z div 10;
   tmp:= tmp*10+rem;
  until z=0;  //Đảo z qua biến tmp
  if tmp=x then exit(true) else exit(false); //Nếu tmp (số đảo của x) = x thì return true, không thì return false
 end;
 
procedure readfile;
 begin
  writeln('Đang đọc từ  file bt3in.txt...');
  assign(f,filein);
  reset(f);
  readln(f,n);
  close(f);
 end;

procedure processandout;
 begin
  writeln('Đang xử lý và viết kết quả ra file bt3out.txt...');
  assign(f,fileout);
  rewrite(f);
  if check(n) then writeln(f,'Đây là số  đối xứng')
  else writeln(f,'Đây không là số đối xứng');
  close(f);
 end;

begin
 readfile;
 processandout;
 writeln('Đã xong');
end.    
