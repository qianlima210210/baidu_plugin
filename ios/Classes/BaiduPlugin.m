#import "BaiduPlugin.h"
#if __has_include(<baidu_plugin/baidu_plugin-Swift.h>)
#import <baidu_plugin/baidu_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "baidu_plugin-Swift.h"
#endif

@implementation BaiduPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBaiduPlugin registerWithRegistrar:registrar];
}
@end
