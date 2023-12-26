import 'dart:typed_data';

import 'file_storage_service.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class FileStorageServiceImpl implements FileStorageService {
  FileStorageServiceImpl();

  Future<String> getExternalDocumentPath() async {
    final status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
    Directory directory = Directory('');
    directory = await getApplicationDocumentsDirectory();
    // if (Platform.isAndroid) {
    //   directory = Directory('/storage/emulated/0/Download/remusemaker');
    // } else {
    //   directory = await getApplicationDocumentsDirectory();
    // }

    final exPath = directory.path;
    await Directory(exPath).create(recursive: true);
    return exPath;
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
    // To get the external path from device of download folder
    // final String directory = await getExternalDocumentPath();
    // return directory;
  }

  @override
  Future<String?> saveDocument(Uint8List bytes, String name) async {
    final path = await _localPath;

    final File file = File('$path/$name');
    await file.writeAsBytes(bytes);
    return file.path;
    // return null;
  }

  @override
  Future<bool> deleteDocument(String path) async {
    try {
      final File file = File(path);
      if (await file.exists()) {
        await file.delete();
      }
      return true;
    } catch (e) {
      return false;
    }
  }
}
