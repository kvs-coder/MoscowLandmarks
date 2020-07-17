//
//  Lanmark.m
//  MoscowLandmarks
//
//  Created by Victor Kachalov on 14/01/2018.
//  Copyright © 2018 Viktor Kachalov. All rights reserved.
//

#import "Landmark.h"

@implementation Landmark

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.title = @"Moscow Landmark";
        self.descript = @"Moscow Landmark";
        self.image = @"MoscowLandmark";
    }
    return self;
}

@end
