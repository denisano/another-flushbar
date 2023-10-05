import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'another_flushbar_method_channel.dart';

abstract class AnotherFlushbarPlatform extends PlatformInterface {
  /// Constructs a AnotherFlushbarPlatform.
  AnotherFlushbarPlatform() : super(token: _token);

  static final Object _token = Object();

  static AnotherFlushbarPlatform _instance = MethodChannelAnotherFlushbar();

  /// The default instance of [AnotherFlushbarPlatform] to use.
  ///
  /// Defaults to [MethodChannelAnotherFlushbar].
  static AnotherFlushbarPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AnotherFlushbarPlatform] when
  /// they register themselves.
  static set instance(AnotherFlushbarPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
