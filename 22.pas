const
  m = 8;
  n = 6;

begin
  var b := new integer[m];
  var a := MatrRandomInteger(m, n, -1, 10);
  a.println;
  println();
  var s := 0;
  for var i := 0 to a.rowcount - 1 do
  begin
    for var j := 0 to a.colcount{количество столбцов} - 1 do
    begin
      if a[i, j] < 0 then inc(s);
      if s <> 0 then b[i] := -1 else b[i] := 1;//-1 если етсь отриц 1 если нет
    end;
    s := 0;
  end;
  b.println;
end.