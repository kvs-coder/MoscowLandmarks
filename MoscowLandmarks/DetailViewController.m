//
//  DetailViewController.m
//  MoscowLandmarks
//
//  Created by Viktor Kachalov on 08.08.17.
//  Copyright © 2017 Viktor Kachalov. All rights reserved.
//

#import "DetailViewController.h"
#import "MapPin.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.detailTitle.text = _detailModal[0];
    self.detailDescription.text = _detailModal[1];
    self.detailImageView.image = [UIImage imageNamed: _detailModal[2]];
    
    self.navigationItem.title = _detailModal[0];
   
    self.detailTitle.textColor = [UIColor colorWithRed:35.0/255.0 green:90.0/255.0 blue:141.0/255.0 alpha:1.0];
    self.directionsButton.backgroundColor = [UIColor colorWithRed:35.0/255.0 green:90.0/255.0 blue:141.0/255.0 alpha:1.0];
   
    self.mapView.layer.cornerRadius = 5;
    self.directionsButton.layer.cornerRadius = 5;

    if ([self.detailTitle.text isEqualToString:@"Moscow Kremlin"]) {
        self.detailTextView.text = @"The Moscow Kremlin, usually referred to as the Kremlin, is a fortified complex at the heart of Moscow, overlooking the Moskva River to the south, Saint Basil's Cathedral and Red Square to the east, and the Alexander Garden to the west.";
        
        latitude = 55.75203052998113;
        longitude = 37.61748790740967;
    }
    if ([self.detailTitle.text isEqualToString:@"Red Square"]) {
        self.detailTextView.text = @"Red Square is a city square in Moscow, Russia. It separates the Kremlin, the former royal citadel and now the official residence of the President of Russia, from a historic merchant quarter known as Kitai-gorod.";
        
        latitude = 55.7536207;
        longitude = 37.62255989999994;
    }
    if ([self.detailTitle.text isEqualToString:@"Saint Basil's Cathedral"]) {
        self.detailTextView.text = @"The Cathedral of Vasily the Blessed, commonly known as Saint Basil's Cathedral, is a church in the Red Square in Moscow, Russia";
        
        latitude = 55.75252563689486;
        longitude = 37.623066902160645;
    }
    if ([self.detailTitle.text isEqualToString:@"GUM"]) {
        self.detailTextView.text = @"GUM is the name of the main department store in many cities of the former Soviet Union, known as State Department Store during the Soviet times. Similarly-named stores were found in some Soviet republics and post-Soviet states.";
        
        latitude = 55.754679;
        longitude = 37.62166100000002;
    }
    if ([self.detailTitle.text isEqualToString:@"Gorky Park"]) {
        self.detailTextView.text = @"Gorky Central Park of Culture and Leisure is a central park in Moscow, named after Maxim Gorky.";
        
        latitude = 55.7314847;
        longitude = 37.60339690000001;
    }
    if ([self.detailTitle.text isEqualToString:@"Bolshoi Theatre"]) {
        self.detailTextView.text = @"The Bolshoi Theatre is a historic theatre in Moscow, Russia, designed by architect Joseph Bové, which holds ballet and opera performances.";
        
        latitude = 55.7602381;
        longitude = 37.618596300000036;

    }
    if ([self.detailTitle.text isEqualToString:@"Novodevichy Convent"]) {
        self.detailTextView.text = @"Novodevichy Convent, also known as Bogoroditse-Smolensky Monastery, is probably the best-known cloister of Moscow.";
        
        latitude = 55.72783509242637;
        longitude = 37.55972385406494;
    }
    if ([self.detailTitle.text isEqualToString:@"Tretyakov Gallery"]) {
        self.detailTextView.text = @"The State Tretyakov Gallery is an art gallery in Moscow, Russia, the foremost depository of Russian fine art in the world.";
        
        latitude = 55.72783509242637;
        longitude = 37.55972385406494;
    }
    if ([self.detailTitle.text isEqualToString:@"VDNKh"]) {
        self.detailTextView.text = @"Vystavka Dostizheniy Narodnogo Khozyaystva is a permanent general purpose trade show and amusement park in Moscow, Russia. Between 1991 and 2014 it was also called the All-Russia Exhibition Centre. It is a state joint-stock company.";
        
        latitude = 55.831011063325626;
        longitude = 37.629783153533936;
    }
    if ([self.detailTitle.text isEqualToString:@"Pushkin Museum"]) {
        self.detailTextView.text = @"The Pushkin State Museum of Fine Arts is the largest museum of European art in Moscow, located in Volkhonka street, just opposite the Cathedral of Christ the Saviour.";
        
        latitude = 55.74729199999999;
        longitude = 37.605177000000026;
    }
    if ([self.detailTitle.text isEqualToString:@"Moscow Zoo"]) {
        self.detailTextView.text = @"The Moscow Zoo is a 21.5-hectare zoo founded in 1864 by professor-biologists, K.F. Rulje, S.A. Usov and A.P. Bogdanov, from the Moscow State University. In 1919, the zoo was nationalized.";
        
        latitude = 55.763235313824396;
        longitude = 37.576589584350586;
    }
    if ([self.detailTitle.text isEqualToString:@"Ostankino Tower"]) {
        self.detailTextView.text = @"Ostankino Tower is a television and radio tower in Moscow, Russia, owned by the Moscow branch of unitary enterprise Russian TV and Radio Broadcasting Network. Standing 540.1 metres tall, Ostankino was designed by Nikolai Nikitin.";
        
        latitude = 55.819693158491845;
        longitude = 37.61165142059326;
    }
    if ([self.detailTitle.text isEqualToString:@"Cathedral of Christ the Saviour"]) {
        self.detailTextView.text = @"The Cathedral of Christ the Savior is a Russian Orthodox cathedral in Moscow, Russia, on the northern bank of the Moskva River, a few hundred meters southwest of the Kremlin.";
        
        latitude = 55.74463940659971;
        longitude = 37.60549306869507;
    }
    if ([self.detailTitle.text isEqualToString:@"Sokolniki Park"]) {
        self.detailTextView.text = @"Sokolniki Park, named for the falcon hunt of the Grand Dukes of Muscovy formerly conducted there, is located in the eponymous Sokolniki District of Moscow. Sokolniki Park is not far from the center of the city, near Sokolnicheskaya Gate.";
        
        latitude = 55.79237922801342;
        longitude = 37.67662525177002;
    }
    
    MKCoordinateRegion region = {{0.0, 0.0}, {0.0, 0.0}};
    region.center.latitude = latitude;
    region.center.longitude = longitude;
    region.span.latitudeDelta = 0.05f;
    region.span.longitudeDelta = 0.05f;
    [self.mapView setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.title = _detailModal[0];
    ann.subtitle = _detailModal[1];
    ann.coordinate = region.center;
    [self.mapView addAnnotation:ann];
    
}


- (IBAction)directions:(id)sender {
    NSString *url = [NSString stringWithFormat:@"http://maps.apple.com/maps?daddr=%f,%f", latitude, longitude];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url] options:@{} completionHandler:nil];
    
}
@end
