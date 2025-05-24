import 'package:get_storage/get_storage.dart';

class CLocalStorage {
  static final CLocalStorage _instance = CLocalStorage._internal();

  factory CLocalStorage() {
    return _instance;
  }

  CLocalStorage._internal();

  final _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Method to clear all data
  Future<void> clearAll() async {
    await _storage.erase();
  }

  // Method to check if key exists
  bool hasData(String key) {
    return _storage.hasData(key);
  }
}