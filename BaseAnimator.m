//
//  BaseAnimator.m
//  
//
//  Created by App Partner on 2/4/16.
//  Copyright © 2016 Joe Levin. All rights reserved.
//

#import "BaseAnimator.h"

@implementation BaseAnimator

- (UIViewController *)fromViewControllerInContext:(id<UIViewControllerContextTransitioning>)context
{
    return [context viewControllerForKey:UITransitionContextFromViewControllerKey];
}

- (UIViewController *)toViewControllerInContext:(id<UIViewControllerContextTransitioning>)context
{
    return [context viewControllerForKey:UITransitionContextToViewControllerKey];
}

- (CGRect)endFrame
{
    return [[UIScreen mainScreen] bounds];
}

@end
