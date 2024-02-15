
class StorageService {
  late final _sharedPrefereces;

  Future<void> init() async {
    _sharedPrefereces = 'teste';
  }

  String get value => _sharedPrefereces;
}