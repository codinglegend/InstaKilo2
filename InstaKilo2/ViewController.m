//
//  ViewController.m
//  InstaKilo2
//
//  Created by Alain  on 2015-05-23.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import "ViewController.h"
#import "ImageCollectionViewCell.h"
#import "Image.h"
#import "DetailImageCellViewController.h"

#import <UIKit/UIKit.h>
#import <UIKit/UIViewController.h>
#import <UIKit/UICollectionView.h>
#import <UIKit/UIKitDefines.h>

@interface ViewController ()

@property NSMutableArray *objects;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Image *image1 = [[Image alloc] initWithTitle:@"1" andImage:[UIImage imageNamed:@"1.jpg"]];
    Image *image2 = [[Image alloc] initWithTitle:@"2" andImage:[UIImage imageNamed:@"2.jpeg"]];
    Image *image3 = [[Image alloc] initWithTitle:@"3" andImage:[UIImage imageNamed:@"3.jpg"]];
    Image *image4 = [[Image alloc] initWithTitle:@"4" andImage:[UIImage imageNamed:@"4.jpg"]];
    Image *image5 = [[Image alloc] initWithTitle:@"5" andImage:[UIImage imageNamed:@"5.jpg"]];
    Image *image6 = [[Image alloc] initWithTitle:@"6" andImage:[UIImage imageNamed:@"6.jpg"]];
    Image *jokeName7 = [[Image alloc] initWithTitle:@"7" andImage:[UIImage imageNamed:@"7.jpg"]];
    Image *randomName8 = [[Image alloc] initWithTitle:@"8" andImage:[UIImage imageNamed:@"8.jpg"]];
    Image *image9 = [[Image alloc] initWithTitle:@"9" andImage:[UIImage imageNamed:@"9.jpeg"]];
    Image *image10 = [[Image alloc] initWithTitle:@"10" andImage:[UIImage imageNamed:@"10.jpg"]];
    
    self.objects = [[NSMutableArray alloc] init]; //this line needs some conceptual work...I guess the variable already exists so we don't need to create it again? it's being stored in the variable listed above?
    
    [self.objects addObject:image1];
    [self.objects addObject:image2];
    [self.objects addObject:image3];
    [self.objects addObject:image4];
    [self.objects addObject:image5];
    [self.objects addObject:image6];
    [self.objects addObject:jokeName7];
    [self.objects addObject:randomName8];
    [self.objects addObject:image9];
    [self.objects addObject:image10];

    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    [self.collectionView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.objects.count;
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    ImageCollectionViewCell *cell =[collectionView dequeueReusableCellWithReuseIdentifier:@"imageIdentifier" forIndexPath:indexPath];
    
    cell.imageLabel.image =[self.objects[indexPath.row] image];
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"zoomInSegue"]){
        NSIndexPath *selectedIndexPath = [[self.collectionView indexPathsForSelectedItems] objectAtIndex:0];
        
        Image *myImage = self.objects[selectedIndexPath.item];
        
        DetailImageCellViewController *detailViewController = [segue destinationViewController];
        detailViewController.image = myImage;
        
        
    }
    
}




@end
