const
  m = 8;

begin
  var b := new integer[m];
  var a := MatrRandomInteger(m, m, -1, 10);
  a.Println;
  println();
  var s := 0;
  for var i := 0 to a.rowcount - 1 do
  begin
    for var j := 0 to a.colcount - 2 do
    begin
      if (a[i, j] + a[i, j + 1]) = 7 then inc(s);//сумма соседних = 7 
    end;
    if s <> 0 then b[i] := 1 else b[i] := -1;
    s := 0;
  end;
  println(b);
end.