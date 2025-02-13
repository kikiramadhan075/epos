import 'dart:developer';
import 'dart:io';

import 'package:permission_handler/permission_handler.dart';

class PermessionHelper {
  Future<PermissionStatus> checkPermission() async {
    PermissionStatus status;

    if (Platform.isAndroid) {
      int sdkInt = (await Permission.storage.status).isGranted ? 32 : 33;

      if (sdkInt >= 33) {
        // Android 13+ (Gunakan Permission.photos)
        status = await Permission.photos.request();
      } else {
        // Android 12 ke bawah (Gunakan Permission.storage)
        status = await Permission.storage.request();
      }
    } else {
      return PermissionStatus.denied;
    }

    if (status.isDenied) {
      await Permission.storage.request();
    } else if (status.isPermanentlyDenied) {
      openAppSettings(); // Arahkan ke pengaturan jika izin diblokir
    }

    return status;
  }

  void permessionPrinter() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.bluetooth,
      Permission.bluetoothScan,
      Permission.bluetoothAdvertise,
      Permission.bluetoothConnect,
    ].request();

    log("statuses: $statuses");
  }
}
