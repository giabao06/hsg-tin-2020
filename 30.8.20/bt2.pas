//Nhập S in xâu con là số có length dài nhất

program bt2;

const filein='bt2in.txt'; fileout='bt2out.txt';

var f:text; s0:string;

procedure read;
 begin
  assign(f,filein);
  reset(f);
  readln(f,s0);
  close(f);
 end;

procedure out;
 var s1start,s1end,s1copy,i,LargestLength:longint; s1:string;
 begin
  assign(f,fileout);
  rewrite(f);
  i:=1; LargestLength:=0;
  while i<=length(s0) do
  begin
   if s0[i] in [#48 .. #57] then
   begin
    s1start:=i;
    while s0[i+1] in [#48 .. #57] do inc(i);
     s1end:=i;
     s1copy:=(s1end-s1start)+1;
     if s1copy > LargestLength then 
     begin
      largestlength:=s1copy;
      s1:=copy(s0,s1start,LargestLength);
     end;
     i:=s1end+1;
   end
   else inc(i);
   inc(i);
  end; 
  writeln(f,s1);
  close(f);
 end;

begin
 read;
 out;
end.   
