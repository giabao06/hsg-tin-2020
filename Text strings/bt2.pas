//Nhập chuỗi chữ  thường, đổi ký tự đầu mỗi từ thành hoa

program bt2;

const filein='bt2in.txt'; fileout='bt2out.txt';

var f:text; str1:string;

procedure read;
 begin
  assign(f,filein);
  reset(f);
  readln(f,str1);
  close(f);
 end;

procedure out;
 var i:longint;
 begin
  str1[1]:=upcase(str1[1]);
  for i:=2 to length(str1) do if str1[i]=#32 then str1[i+1]:=upcase(str1[i+1]);
  assign(f,fileout);
  rewrite(f);
  writeln(f,str1);
  close(f);
 end;

begin
 read;
 out;
end.    
