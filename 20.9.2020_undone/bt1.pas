//Cho mang vuong n phan tu,  sap xep mang giam dan

program bt1;
const filein='bt1in.txt'; fileout='bt1out.txt';
var f:text; n:longint; a1:array[1..100, 1..100] of LONGINT; a2:array[1..100] of LONGINT;

procedure aread;
var i,j:longint;
begin
  assign(f,filein);
  reset(f);
  readln(f,n);
  for i:=1 to n do
    for j:=1 to n do read(f,a1[i,j]);
  close(f);
end;

procedure ftransform;
var i,j,c:longint;
begin
  c:=1;
  for i:=1 to n*n do
    for j:=1 to n do
      begin
        a2[c]:=a1[i,j];
        inc(c);
      end;
end;

procedure org;
var i,j,tmp:LONGINT;
  begin
    i:=1;
    while i<=n*n-1 do
    begin
      j:=i+1;
      while j<=n*n do
      begin
        if a2[i]<a2[j] then
            begin
              tmp:=a2[i];
              a2[i]:=a2[j];
              a2[j]:=tmp;
            end;
            inc(j);
      end;
      inc(i);
    end;
  end;

  procedure out;
  var i,j,c:longint;
    begin
      assign(f,fileout);
      rewrite(f);
      c:=1;
      for i:=1 to n do
        for j:=1 to n do
          begin
            a1[i,j]:=a2[c];
            inc(c);
          end;
      for i:=1 to n do
        begin
          for j:=1 to n do write(f,a1[i,j],#32);
          writeln(f);
        end;
        close(f);
    end;

  begin
    aread;
    ftransform;
    org;
    out;
  end.
