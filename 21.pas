begin
  var b := new integer[6];
  var a := MatrRandomInteger(6, 8, 0, 10);// расширение и числа от 0 до 10
  a.println;
  println();
  for var i := 0 to a.rowcount - 1 {количество строк в дм массиве}do 
  begin
    if abs(a[i, 0]) > 4 then b[i] := a[i, 0]{Больше 4х тогда 0};
  end;
  b.println;
end.