import 'dart:typed_data';

import 'file_storage_service_impl.dart';

abstract class FileStorageService {
  Future<String?> saveDocument(Uint8List bytes, String name);
  Future<void> deleteDocument(String path);

  factory FileStorageService() {
    return FileStorageServiceImpl();
  }
}
