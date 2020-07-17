//
//  DetailViewController.h
//  MoscowLandmarks
//
//  Created by Viktor Kachalov on 08.08.17.
//  Copyright © 2017 Viktor Kachalov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface DetailViewController : UIViewController {
    
    double latitude;
    double longitude;
    
}

@property (strong, nonatomic) NSArray *detailModal;

@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UILabel *detailDescription;
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UIButton *directionsButton;

- (IBAction)directions:(id)sender;

@end
