//In các số có ở  S

program bt5;

var f:text; str1:string;

const filein='bt5in.txt'; fileout='bt5out.txt';

procedure read;
 begin
  assign(f,filein);
  reset(f);
  readln(f,str1);
  close(f);
 end;

procedure out;
 var i,strstart,strend,copyamt:longint; str2:string;
 begin
  assign(f,fileout);
  rewrite(f);
  i:=1;
  while i<=length(str1) do
  begin
   if str1[i] in [#48 .. #57] then
   begin
    strstart:=i;
    while str1[i+1] in [#48 .. #57] do inc(i);
    strend:=i;
    copyamt:=(strend-strstart)+1;
    str2:= copy(str1,strstart,copyamt);
    writeln(f,str2);
    i:=strend+1;
   end
   else inc(i);
  end;
  close(f);
 end;
      
begin
 read;
 out;
end. 
