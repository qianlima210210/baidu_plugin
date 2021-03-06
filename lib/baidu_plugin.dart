
import 'dart:async';

import 'package:flutter/services.dart';

class BaiduPlugin {
  static const MethodChannel _channel = MethodChannel('baidu_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  //getAddNum
  static Future<int> getAddNum(int num)async {
    var map = {"num":num};
    return await _channel.invokeMethod('getAddNum', map);
  }
}
