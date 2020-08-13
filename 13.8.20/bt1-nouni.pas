//Tinh tong cac so la uoc cua 3 va 5 tu 1 toi n

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
  writeln('Dang doc tu file bt1in.txt...');
  assign(f,filein);
  reset(f);
  readln(f,n);
  close(f);
 end;

procedure processnout;
 begin
  writeln('Dang xu ly va viet ket qua ra file bt1out.txt...');
  for i:=1 to n do if chkreqs(i) then t:=t+i;
  assign(f,fileout);
  rewrite(f);
  writeln(f,t);
  close(f);
 end;

begin
 fileread;
 processnout;
 writeln('Da xong');
end.   
