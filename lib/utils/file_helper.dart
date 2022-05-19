import 'dart:io';

class FileHelper {

  bool fileExists(String path) {
    final File file = File(path);
    return file.existsSync();
  }
}