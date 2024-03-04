abstract interface class LoadData {
  Future<void> fetch();
}

class LoadDataFromFile implements LoadData {
  @override
  Future<void> fetch() async {
    print("Loading data from file");
  }
}
