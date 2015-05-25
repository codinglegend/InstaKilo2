//
//  DetailImageCellViewController.m
//  InstaKilo2
//
//  Created by Alain  on 2015-05-24.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import "DetailImageCellViewController.h"
#import "ImageCollectionViewCell.h"

@interface DetailImageCellViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageLabel;

@end

@implementation DetailImageCellViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.imageLabel.image = self.image.image;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
