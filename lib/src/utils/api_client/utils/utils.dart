import 'package:mime/mime.dart';

class Utils {
  static String getMimeType(String filePath) {
    return lookupMimeType(filePath) ?? "application/octet-stream";
  }
}
