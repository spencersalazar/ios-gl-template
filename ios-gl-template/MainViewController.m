//
//  MainViewController.m
//  Poop
//
//  Created by Spencer Salazar on 9/5/17.
//  Copyright © 2017 Spencer Salazar. All rights reserved.
//

#import "MainViewController.h"
#import "GLViewController.h"

@interface MainViewController ()

@property GLViewController *glShit;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)showGLShit:(id)sender
{
    if(!self.glShit)
    {
        self.glShit = [GLViewController new];
    }
    
    [self presentViewController:self.glShit animated:YES completion:^{}];
}

@end
