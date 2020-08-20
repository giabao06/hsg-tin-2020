//Cho 1 chuỗi s cắt bỏ khoảng trắng thừa

program bt1;

const filein='bt1in.txt'; fileout='bt1out.txt';

var f:text; str1:string;

procedure read;
 begin
  assign(f,filein);
  reset(f);
  readln(f,str1);
  close(f);
 end;

procedure out;
 var pos1:longint;
 begin
  while str1[1]=#32 do delete(str1,1,1);
  while str1[length(str1)]=#32 do delete(str1,length(str1),1);
  repeat
   pos1:=pos(#32#32,str1);
   delete(str1,pos1,1);
  until pos1=0;
  assign(f,fileout);
  rewrite(f);
  writeln(f,str1);
  close(f);
 end;

begin
 read;
 out;
end.    
