//
//  Image.h
//  InstaKilo2
//
//  Created by Alain  on 2015-05-23.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Image : NSObject
@property (nonatomic) NSString* imageTitle;
@property (nonatomic) UIImage* image;

-(instancetype)initWithTitle:(NSString*) imageTitle andImage:(UIImage*)image;

@end
