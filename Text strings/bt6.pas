//In các số nguyên tố có trong s

program bt6;

var f:text; str1:string;

const filein='bt6in.txt'; fileout='bt6out.txt';

function chkprime(x:int64):boolean;
 var i:longint;
 begin
  if x<2 then exit(false);
  for i:=2 to trunc(sqrt(x)) do if x mod i = 0 then exit(false);
  exit(true);
 end;

procedure read;
 begin
  assign(f,filein);
  reset(f);
  readln(f,str1);
  close(f);
 end;

procedure out;
 var i,strstart,strend,copyamt,code,n:longint; str2:string;
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
    str2:= copy(str1,strstart,copyamt); val(str2,n,code);
    if chkprime(n) then writeln(f,n);
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
