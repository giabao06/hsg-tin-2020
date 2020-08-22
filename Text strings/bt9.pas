//Tìm chuỗi đối xứng dài nhất

program bt9;
const filein='bt9in.txt'; fileout='bt9out.txt';
var f:text; str1:string;

function check(i,j:longint):boolean;
 var k,inv:longint;
 begin
  inv:=(j-i)+1;
  for k:=1 to inv div 2 do
  if str1[(k+i)-1]<>str1[(j-k)+1] then exit(false);
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
 var i,j,max,strstart,strend,copyamt,copyamt2:longint; str2,maxstr:string;
 begin
  assign(f,fileout);
  rewrite(f);
  i:=1; max:=0;
  while i<=length(str1)-1 do
  begin
   j:=i+1;
   while j<=length(str1) do
   begin
    if (Str1[i]<>#32) and (check(i,j)) then
    begin
     copyamt:=(j-i)+1;
     str2:=copy(str1,i,copyamt);
     if length(str2)>max then
     begin
      max:=length(str2);
      strstart:=i;
      strend:=j;
     end;
    end;
   inc(j);
   end;
  inc(i);
  end;
  copyamt2:=(strend-strstart)+1;
  maxstr:=copy(str1,strstart,copyamt2);
  writeln(f,maxstr);
  close(f);
 end;

begin
 read;
 out;
end.   
