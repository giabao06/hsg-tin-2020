//cho 1 chuỗi ascii đếm các ký tự số, chữ hoa / thường. đặc biệt và khoảng trắng

program bt3;

const filein='bt3in.txt'; fileout='bt3out.txt';

var f:text; str1:string;

procedure read;
 begin
  assign(f,filein);
  reset(f);
  readln(f,str1);
  close(f);
 end;
  
procedure out;
 var i,lcase,ucase,num,spec,space:longint;
 begin
  for i:=1 to length(str1) do
  case str1[i] of
   'A'..'Z':inc(ucase);
   'a'..'z':inc(lcase);
   '0'..'9':inc(num);
   #32     :inc(space);
   else inc(spec);
  end;
  assign(f,fileout);
  rewrite(f);
  writeln(f,'Chữ hoa = ',ucase);
  writeln(f,'Chữ thường = ',lcase);
  writeln(f,'Số = ',num);
  writeln(f,'Khoảng trắng = ',space);
  writeln(f,'Đặc biệt = ',spec);
  closse(f);
 end;

begin
 read;
 out;
end.    
