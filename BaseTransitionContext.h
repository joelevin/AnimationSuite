//
//  BaseTransitionContext.h
//  
//
//  Created by App Partner on 2/4/16.
//  Copyright © 2016 Joe Levin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseTransitionContext : NSObject <UIViewControllerContextTransitioning>

- (instancetype)initWithFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController;

@property (nonatomic, copy) void (^completionBlock)(BOOL didComplete);

@end
