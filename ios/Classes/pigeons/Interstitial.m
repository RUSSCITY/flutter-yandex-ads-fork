// Autogenerated from Pigeon (v4.1.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import "Interstitial.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSDictionary<NSString *, id> *wrapResult(id result, FlutterError *error) {
  NSDictionary *errorDict = (NSDictionary *)[NSNull null];
  if (error) {
    errorDict = @{
        @"code": (error.code ?: [NSNull null]),
        @"message": (error.message ?: [NSNull null]),
        @"details": (error.details ?: [NSNull null]),
        };
  }
  return @{
      @"result": (result ?: [NSNull null]),
      @"error": errorDict,
      };
}
static id GetNullableObject(NSDictionary* dict, id key) {
  id result = dict[key];
  return (result == [NSNull null]) ? nil : result;
}
static id GetNullableObjectAtIndex(NSArray* array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}



@interface YandexAdsInterstitialCodecReader : FlutterStandardReader
@end
@implementation YandexAdsInterstitialCodecReader
@end

@interface YandexAdsInterstitialCodecWriter : FlutterStandardWriter
@end
@implementation YandexAdsInterstitialCodecWriter
@end

@interface YandexAdsInterstitialCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation YandexAdsInterstitialCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[YandexAdsInterstitialCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[YandexAdsInterstitialCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *YandexAdsInterstitialGetCodec() {
  static dispatch_once_t sPred = 0;
  static FlutterStandardMessageCodec *sSharedObject = nil;
  dispatch_once(&sPred, ^{
    YandexAdsInterstitialCodecReaderWriter *readerWriter = [[YandexAdsInterstitialCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}


void YandexAdsInterstitialSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<YandexAdsInterstitial> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.YandexAdsInterstitial.load"
        binaryMessenger:binaryMessenger
        codec:YandexAdsInterstitialGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(loadId:error:)], @"YandexAdsInterstitial api (%@) doesn't respond to @selector(loadId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_id = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api loadId:arg_id error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.YandexAdsInterstitial.show"
        binaryMessenger:binaryMessenger
        codec:YandexAdsInterstitialGetCodec()        ];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(showWithError:)], @"YandexAdsInterstitial api (%@) doesn't respond to @selector(showWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api showWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
}
