#import "JapanPrefecturesSelectorPlugin.h"
#import <japan_prefectures_selector/japan_prefectures_selector-Swift.h>

@implementation JapanPrefecturesSelectorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftJapanPrefecturesSelectorPlugin registerWithRegistrar:registrar];
}
@end
