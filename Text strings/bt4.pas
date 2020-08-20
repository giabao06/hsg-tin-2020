//Nhập S vừa chữ  vừa số tính tổng các ký tự số

program bt4;

const filein='bt4in.txt'; fileout='bt4out.txt';

var f:text; str1:string;

procedure read;
 begin
  assign(f,filein);
  reset(f);
  readln(f,str1);
  close(f);
 end;

procedure out;
 var i,x,t,code:longint;
 begin
  t:=0; x:=0;
  assign(f,fileout);
  rewrite(f);
  for i:=1 to length(str1) do
  if str1[i] in [#48 .. #57] then 
  begin 
   val(str1[i],x,code); 
   t:=t+x; 
  end;
  writeln(f,t);
  close(f);
 end;

begin
 read;
 out;
end.     
