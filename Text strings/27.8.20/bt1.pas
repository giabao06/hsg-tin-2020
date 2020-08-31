//Nhập xâu ký tự  gồm nhiều từ, in các từ có trong xâu

program bt1;

const filein='bt1in.txt'; fileout='bt1out.txt';

var f:text; s0:string;

procedure read;
 begin
  assign(f,filein);
  reset(f);
  readln(f,s0);
  close(f);
 end;
 
procedure out;
 var i,j,s1copy:longint; s1:string;
 begin
  assign(f,fileout);
  rewrite(f);
  i:=1;
  while i<=length(s0)-1 do
  begin
   j:=i+1;
   while j<=length(s0) do
   begin
    if s0[j] = #32 then 
    begin
    s1copy:=((j-1)-i)+1;
    s1:=copy(s0,i,s1copy);
    writeln(f,s1);
    inc(j);
    end
    else inc(j);
   end;
   inc(i);
  end;
  close(f);
 end;

begin
 read;
 out;
end.  
