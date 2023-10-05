
import 'another_flushbar_platform_interface.dart';

class AnotherFlushbar {
  Future<String?> getPlatformVersion() {
    return AnotherFlushbarPlatform.instance.getPlatformVersion();
  }
}
