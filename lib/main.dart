void main() {
  final loadData = LoadData();
  final data = loadData("from file");
  print(data);
}

class LoadData {
  String call(String val) {
    return 'My Call $val';
  }
}
