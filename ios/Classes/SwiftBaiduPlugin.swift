import Flutter
import UIKit

public class SwiftBaiduPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "baidu_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftBaiduPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      
      if call.method == "getPlatformVersion" {
          result("iOS " + UIDevice.current.systemVersion);
      }else if call.method == "getAddNum"{
          if let arguments = call.arguments as? [String:Any], let num = arguments["num"] as? Int{
              result(num + 1);
          }else{
              result(-1);
          }
      }
  }
}
