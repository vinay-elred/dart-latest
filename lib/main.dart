void main() {
  final loadData = LoadData();
  final data = loadData(val: "String");
  print(data);
}

class LoadData {
  String call({String? val}) {
    if (val != null) {
      final data = val;
      // data is not-nullable as if val nullcheck is there
      return 'My Call $data';
    }
    return "null val";
  }
}
