//
//  Image.m
//  InstaKilo2
//
//  Created by Alain  on 2015-05-23.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import "Image.h"

@implementation Image

-(instancetype)initWithTitle:(NSString*)title andImage:(UIImage*)image
{
    self = [super init];
    if (self) {
        _imageTitle = title;
        _image = image;
    }
    return self;
}

@end

