//
//  MapPin.h
//  MoscowLandmarks
//
//  Created by Viktor Kachalov on 08.08.17.
//  Copyright © 2017 Viktor Kachalov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MapPin : NSObject <MKAnnotation> {
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
}
@property (nonatomic, assign)CLLocationCoordinate2D coordinate;
@property (nonatomic, copy)NSString *title;
@property (nonatomic, copy)NSString *subtitle;
@end
