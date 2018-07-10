import 'package:path_provider/path_provider.dart';
import 'dart:async';

class FileService {

  Future<String> getApplicationDocsDirectoryPath() async =>
      (await getApplicationDocumentsDirectory()).path;
}
