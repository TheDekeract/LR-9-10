const
  m = 8;

begin
  var b := new integer[m];
  var a := MatrRandomInteger(m, m, -1, 10);
  a.println;
  println();
  var max: integer;
  var s := 0;
  for var i := 0 to a.rowcount - 1 do
  begin
    max := a[i, 0];
    for var j := 0 to a.colcount - 1 do
    begin
      if a[i, j] > max then max := a[i, j]
    end;
    for var p := 0 to a.colcount - 1 do
    begin
      if max = a[i, p] then Inc(s);
    end;
    if s = 1 then b[i] := 1 else b[i] := -1;// максимум 1 тогда 1 иначе максимум >1 и пишем -1
    s := 0;
  end;
  print(b);
end.