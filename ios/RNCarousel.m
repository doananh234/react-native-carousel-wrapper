#import "RNCarousel.h"
#import <React/RCTConvert.h>
#import <React/RCTBridgeModule.h>
#import <React/UIView+React.h>
#import <React/RCTLog.h>
#import "AudioToolbox/AudioServices.h"

@implementation RNCarousel
- (instancetype)init {
  self = [super init];
  if (self) {
    self.dataSource = self;
    self.delegate = self;
    self.items = [[NSMutableArray alloc] init];
//    for (int i = 0; i < 10; i++)
//    {
//      [self.items addObject:@(i)];
//    }
//    [self setCurrentItemIndex:0];
//    [self reloadData];
  }
  return self;
}

//- (void)setItems:(NSMutableArray *)items {
////  self.items = [[NSMutableArray alloc] init];
//  for (int i = 0; i < items.count; i++)
//  {
//    [self.items addObject:(items[i])];
//  }
//  [self setCurrentItemIndex:0];
//  [self reloadData];
//}


//#pragma clang diagnostic push
//#pragma clang diagnostic ignored "-Wobjc-missing-super-calls"
- (void)insertReactSubview:(id<RCTComponent>)subview atIndex:(NSInteger)atIndex {
//  [super insertReactSubview:subview atIndex:atIndex];
  
   [self.items addObject:subview];
  
   [self setCurrentItemIndex:0];
  [self reloadData];
  if (atIndex == 0) {
  }
}

- (NSInteger)numberOfItemsInCarousel:(iCarousel *)carousel {
  
  return [self.items count];
}

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view {
  NSString *path = [[NSBundle bundleWithIdentifier:@"com.apple.UIKit"] pathForResource:@"Tock" ofType:@"aiff"];
  SystemSoundID soundID;
  if (path != nil) {
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:path], &soundID);
    AudioServicesPlaySystemSound(soundID);
    AudioServicesDisposeSystemSoundID(soundID);
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
  }
  return [self.items objectAtIndex:index];
}

@end
