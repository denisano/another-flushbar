import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'another_flushbar_platform_interface.dart';

/// An implementation of [AnotherFlushbarPlatform] that uses method channels.
class MethodChannelAnotherFlushbar extends AnotherFlushbarPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('another_flushbar');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
