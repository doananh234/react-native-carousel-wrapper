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

@interface RNCarousel : iCarousel <iCarouselDataSource, iCarouselDelegate>

@property (nonatomic, strong) NSMutableArray *items;
@end

/* RNCarousel_h */
