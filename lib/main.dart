void main() {
  //Record
  (double x, double y, double z) data = (2.0, 5.0, 7.0);
  print("Old Value $data");
  data = (5.0, 9.0, 4.0);
  print("New Value $data");

  (double x, double y, double z) data2 = (5.0, 9.0, 4.0);
  if (data2 == data) print("Equality");

  ({double x, double y, double z}) data3 = (x: 5.0, y: 9.0, z: 4.0);
  print("Data 2 $data2");
  print("Data 3 $data3");
}
