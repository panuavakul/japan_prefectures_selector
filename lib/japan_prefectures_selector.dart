import 'dart:async';

import 'package:flutter/services.dart';

class JapanPrefecturesSelector {
  static const MethodChannel _channel =
      const MethodChannel('japan_prefectures_selector');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
