//
//  FadeAnimator.m
//  
//
//  Created by App Partner on 2/4/16.
//  Copyright © 2016 Joe Levin. All rights reserved.
//

#import "FadeAnimator.h"

@implementation FadeAnimator

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.25f;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *fromViewController = [self fromViewControllerInContext:transitionContext];
    UIViewController *toViewController = [self toViewControllerInContext:transitionContext];
    
    if (self.presenting)
    {
        fromViewController.view.userInteractionEnabled = NO;
        [transitionContext.containerView addSubview:toViewController.view];
        
        CGRect startFrame = [self endFrame];
        toViewController.view.frame = startFrame;
        toViewController.view.alpha = 0.0f;
        
        [UIView animateWithDuration:[self transitionDuration:transitionContext] delay:0.0f usingSpringWithDamping:0.95 initialSpringVelocity:0.0f options:0 animations:^{
            fromViewController.view.tintAdjustmentMode = UIViewTintAdjustmentModeDimmed;
            toViewController.view.alpha = 1.0f;
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }
    else
    {
        toViewController.view.userInteractionEnabled = YES;
        [transitionContext.containerView addSubview:fromViewController.view];
        
        fromViewController.view.alpha = 0.0f;
        [UIView animateWithDuration:[self transitionDuration:transitionContext] delay:0.0f usingSpringWithDamping:0.95 initialSpringVelocity:0.0f options:0 animations:^{
            toViewController.view.tintAdjustmentMode = UIViewTintAdjustmentModeAutomatic;
            fromViewController.view.alpha = 1.0f;
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }
}

@end
