//
//  BaseAnimator.h
//  
//
//  Created by App Partner on 2/4/16.
//  Copyright © 2016 Joe Levin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign, getter = isPresenting) BOOL presenting;

- (UIViewController *)fromViewControllerInContext:(id<UIViewControllerContextTransitioning>)context;
- (UIViewController *)toViewControllerInContext:(id<UIViewControllerContextTransitioning>)context;
- (CGRect)endFrame;


@end
