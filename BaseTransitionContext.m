//
//  BaseTransitionContext.m
//  
//
//  Created by App Partner on 2/4/16.
//  Copyright © 2016 Joe Levin. All rights reserved.
//

#import "BaseTransitionContext.h"

@interface BaseTransitionContext ()

@property (nonatomic, strong) NSDictionary *privateViewControllers;
@property (nonatomic, weak) UIView *containerView;

@end

@implementation BaseTransitionContext

- (instancetype)initWithFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController
{
    self = [super init];
    if (self)
    {
        self.containerView = fromViewController.view;
        self.privateViewControllers = @{UITransitionContextFromViewControllerKey: fromViewController,
                                        UITransitionContextToViewControllerKey: toViewController};
    }
    
    return self;
}

- (UIModalPresentationStyle)presentationStyle
{
    return UIModalPresentationCustom;
}

- (UIViewController *)viewControllerForKey:(NSString *)key
{
    return self.privateViewControllers[key];
}

- (void)completeTransition:(BOOL)didComplete
{
    if (self.completionBlock) {
        self.completionBlock (didComplete);
    }
}

@end
