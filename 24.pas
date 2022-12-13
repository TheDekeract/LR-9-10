const
  m = 8;

begin
  var b := new integer[m];
  var a := MatrRandomInteger(m, m, -1, 10);
  var s := 0; var k := 0; var sod:=0;
  a.println;
  println();
  var min: integer;
  for var i := 0 to a.rowcount - 1 do
  begin
    min := a[0, 0];
    for var j := 0 to a.colcount - 1 do
    begin
      if a[i, j] < min then min := a[i, j]
    end;
    b[i] := min;
  end;
  print(b);
  for var i := 0 to m - 1 do s += b[i];
  for var i := 0 to m - 1 do if b[i] = round(s / m) then Inc(k);
  for var i := 0 to m - 1 do if k =b[i] then sod+=1;
   if sod>0 then print('Содержит') else print('Не содержит');
  println();
  println('Среднее арифметическое = ',k);
end.