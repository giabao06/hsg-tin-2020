//Cho 1 sau ky tu; ma hoa xau thep cong thuc tinh tien len 3 kt tiep theo

program bt3;
const filein='bt3in.txt'; fileout='bt3out.txt';
var f:text; s0,s1:string;

procedure fread;
begin
 assign(f,filein);
 reset(f);
 readln(f,s0);
 close(f);
end;

procedure encode;
var i:longint;
begin
 for i:=1 to length(s0) do s1:=s1+chr(ord(s0[i])+3);
 assign(f,fileout);
 rewrite(f);
 writeln(f,s1);
 close(f);
end;

begin
 fread;
 encode;
end.
