//
//  GLViewController.m
//  Poop
//
//  Created by Spencer Salazar on 9/5/17.
//  Copyright © 2017 Spencer Salazar. All rights reserved.
//

#import "GLViewController.h"

@interface GLViewController ()

@property (strong, nonatomic) EAGLContext *context;

@end

@implementation GLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES1];
    
    if (!self.context) {
        NSLog(@"Failed to create ES context");
    }
    
    GLKView *view = (GLKView *) self.view;
    view.context = self.context;
    view.drawableDepthFormat = GLKViewDrawableDepthFormat24;
    
    [EAGLContext setCurrentContext:self.context];
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    glClearColor(1.0, 0.0, 0.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT);
}

@end
