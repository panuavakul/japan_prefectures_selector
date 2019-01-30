import Flutter
import UIKit

public class SwiftJapanPrefecturesSelectorPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "japan_prefectures_selector", binaryMessenger: registrar.messenger())
    let instance = SwiftJapanPrefecturesSelectorPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
