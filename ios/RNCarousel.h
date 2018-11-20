//
//  RNCarousel.h
//  testicarousel
//
//  Created by DoanAnh on 11/8/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#if __has_include(<iCarousel/iCarousel.h>)
#import <iCarousel/iCarousel.h>
#else
#import "iCarousel.h"
#endif

#if __has_include(<React/RCTComponent.h>)
#import <React/RCTComponent.h>
#else
#import "RCTComponent.h"
#endif
#if __has_include(<React/RCTView.h>)
#import <React/RCTView.h>
#else
#import "RCTView.h"
#endif
@interface RNCarousel : iCarousel <iCarouselDataSource, iCarouselDelegate>

@property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic, copy) RCTBubblingEventBlock onPressItem;

@end

/* RNCarousel_h */
