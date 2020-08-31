//Nhập S in số có số đối xứng hệ 2 có trong xâu

program bt7;

const filein='bt7in.txt'; fileout='bt7out.txt';

var f:text; s0:string;

function change2(x:int64):int64;
 var rem,res,code:byte; s1,s2:string;
 begin
  s2:=''; s1:='';
  repeat
   rem:= x mod 2;
   x:=x div 2;
   str(rem,s1);
   s2:=s2+s1;
  until x=0;
  val(s2,res,code);
  change2:=res;
 end;

function checkinv(x:int64):boolean;
 var inv,y,rem:int64;
 begin
  y:=x; inv:=0;
  repeat
   rem:= y mod 10;
   y:= y div 10;
   inv:=(inv*10)+rem;
  until y=0;
  if inv = x then exit(true) else exit(false);
 end;

procedure read;
 begin
  assign(f,filein);
  reset(f);
  readln(f,s0);
  close(f);
 end;

procedure out;
 var i,count,s1start,s1end,code,s1copy:longint; s1:string; x:int64;
 begin
  assign(f,fileout);
  rewrite(f);
  i:=1; count:=0;
  while i<=length(s0) do
  begin
   if s0[i] in [#48 .. #57] then
   begin
    s1start:=i;
    while s0[i+1] in [#48 .. #57] do inc(i);
    s1end:=i;
    s1copy:=(s1end-s1start)+1;
    s1:=copy(s0,s1start,s1copy);
    val(s1,x,code);
    if checkinv(change2(x)) then
    begin
     writeln(f,'String = ',s1);
     writeln(f,'Binary = ',change2(x));
     writeln(f,'');
     inc(count);
    end
    i:=s1end+1;
   end
   else inc(i);
   inc(i);
  end;
  if count=0 then writeln(f,'No result');
  close(f);
 end;

begin
 read;
 out;
end.  
     
      
    
