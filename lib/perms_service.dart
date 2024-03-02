import 'package:permission_handler/permission_handler.dart';

locationPerms() async {
  await Permission.location.request();
}

storagePerms() async {
  await Permission.storage.request();
}

extStoragePerms() async {
  await Permission.manageExternalStorage.request();
}
