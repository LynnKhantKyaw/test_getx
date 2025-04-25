class CrudRepository {
  Future<List<String>> getList() async {
    await Future.delayed(Duration(seconds: 2));

    return [for (int i = 0; i < 10; i++) (i + 1).toString()];
  }
}
