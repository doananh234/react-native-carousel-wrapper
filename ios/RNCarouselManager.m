
#import "RNCarouselManager.h"
#import "RNCarousel.h"
#if __has_include(<React/RCTUIManager.h>)
#import <React/RCTUIManager.h>
#else
#import "RCTUIManager.h"
#endif

@implementation RNCarouselManager
RCT_EXPORT_MODULE()

@synthesize bridge = _bridge;
- (dispatch_queue_t)methodQueue {
  return dispatch_get_main_queue();
}

- (UIView *)view
{
  RNCarousel * carousel;
  carousel = [[RNCarousel alloc]  init];
  return carousel;
}

RCT_EXPORT_VIEW_PROPERTY(type, NSInteger)

RCT_EXPORT_VIEW_PROPERTY(vertical, BOOL)
RCT_EXPORT_VIEW_PROPERTY(bounces, BOOL)
RCT_EXPORT_VIEW_PROPERTY(scrollEnabled, BOOL)

RCT_EXPORT_VIEW_PROPERTY(wrap, BOOL)
RCT_EXPORT_VIEW_PROPERTY(perspective, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(decelerationRate, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(scrollSpeed, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(bounceDistance, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(autoscroll, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(onPressItem, RCTBubblingEventBlock)
- (NSDictionary *)constantsToExport
{
  return @{
           @"Type": @{
               @"iCarouselTypeLinear": @(iCarouselTypeLinear),
               @"iCarouselTypeRotary": @(iCarouselTypeRotary),
               @"iCarouselTypeInvertedRotary": @(iCarouselTypeInvertedRotary),
               @"iCarouselTypeCylinder": @(iCarouselTypeCylinder),
               @"iCarouselTypeInvertedCylinder": @(iCarouselTypeInvertedCylinder),
               @"iCarouselTypeWheel": @(iCarouselTypeWheel),
               @"iCarouselTypeInvertedWheel": @(iCarouselTypeInvertedWheel),
               @"iCarouselTypeCoverFlow": @(iCarouselTypeCoverFlow),
               @"iCarouselTypeCoverFlow2": @(iCarouselTypeCoverFlow2),
               @"iCarouselTypeTimeMachine": @(iCarouselTypeTimeMachine),
               @"iCarouselTypeInvertedTimeMachine": @(iCarouselTypeInvertedTimeMachine),
               @"iCarouselTypeCustom": @(iCarouselTypeCustom)
               }
           };
}
@end
