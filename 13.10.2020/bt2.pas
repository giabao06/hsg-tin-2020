program bt2;
const filein='bt2in.txt'; fileout='bt2out.txt';
var f:text; s0:string;

procedure fread;
begin
 assign(f,filein);
 reset(f);
 readln(f,s0);
 close(f);
end;

procedure out;
var tword,word:string; count,large:longint;
begin
 s0:=s0+#32; large:=0; word:=''; tword:='';
 repeat
  count:=1;
  tword:=copy(s0,1,pos(#32,s0)-1);
  delete(s0,1,length(tword)+1);
  while pos(tword,s0)>0 do
  begin
   inc(count);
   delete(s0,pos(tword,s0),length(tword));
  end;
  if large<count then
  begin
   large:=count;
   word:=tword;
  end;
 until length(s0)=0;
 assign(f,fileout);
 rewrite(f);
 writeln(f,word);
 writeln(f,large);
 close(f);
end;
begin
  fread;
  out;
end.

