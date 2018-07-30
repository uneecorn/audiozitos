import 'dart:async';
import 'package:path_provider/path_provider.dart';

class FileService {

  Future<String> getApplicationDocsDirectoryPath() async =>
      (await getApplicationDocumentsDirectory()).path;
}
