import 'dart:io';
import 'dart:convert';

class FileHelper {

  bool fileExists(String path) {
    return _getFile(path).existsSync();
  }

  String read(String path) {
    return _getFile(path).readAsStringSync();
  }

  Map<String, dynamic> readAsJson(String path) {
    return json.decode(read(path));
  }

  File _getFile(String path) {
    return File(path);
  }
}