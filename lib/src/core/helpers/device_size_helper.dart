import 'package:flutterguide/src/core/core.dart';

class DeviceSizeHelper {
  static bool isMobile(BuildContext context) {
    // Check if the device is mobile
    final width = context.width;

    if (width < 600) {
      return true;
    } else {
      return false;
    }
  }
}
