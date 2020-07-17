//
//  TableViewController.m
//  MoscowLandmarks
//
//  Created by Viktor Kachalov on 08.08.17.
//  Copyright © 2017 Viktor Kachalov. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "DetailViewController.h"
#import "Landmark.h"

@interface TableViewController () {
    NSArray <Landmark *> *landmarks; // array with certain type only
}
@end

@implementation TableViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    Landmark *kremlin = [[Landmark alloc] init];
    kremlin.title = @"Moscow Kremlin";
    kremlin.descript = @"Troitskaya Ulitsa, Moskva, Russia";
    kremlin.image = @"Kremlin";
    
    Landmark *redSquare = [[Landmark alloc] init];
    redSquare.title = @"Red Square";
    redSquare.descript = @"Red Square, Moskva, 109012";
    redSquare.image = @"RedSquare";
    
    Landmark *saintBasil = [[Landmark alloc] init];
    saintBasil.title = @"Saint Basil's Cathedral";
    saintBasil.descript = @"St. Basil's Cathedral, Moskva, Russia, 109012";
    saintBasil.image = @"SaintBasil";
    
    Landmark *gum = [[Landmark alloc] init];
    gum.title = @"GUM";
    gum.descript = @"Red Square, 3, Moskva, 109012";
    gum.image = @"GUM";
    
    Landmark *gorkyPark = [[Landmark alloc] init];
    gorkyPark.title = @"Gorky Park";
    gorkyPark.descript = @"Krimsky Val, 9, Moskva, 119049";
    gorkyPark.image = @"GorkyPark";
    
    Landmark *bolshTheater = [[Landmark alloc] init];
    bolshTheater.title = @"Bolshoi Theatre";
    bolshTheater.descript = @"Theatre Square, 1, Moskva, 125009";
    bolshTheater.image = @"BolshoiTheatre";
    
    Landmark *novodevConvent = [[Landmark alloc] init];
    novodevConvent.title = @"Novodevichy Convent";
    novodevConvent.descript = @"Novodevichy Passage, 1, Moskva, 119435";
    novodevConvent.image = @"NovodevichyConvent";
    
    Landmark *tretiakovGal = [[Landmark alloc] init];
    tretiakovGal.title = @"Tretyakov Gallery";
    tretiakovGal.descript = @"Lavrushinsky Ln, 10, Moskva, 119017";
    tretiakovGal.image = @"TretyakovGallery";
    
    Landmark *vdnkh = [[Landmark alloc] init];
    vdnkh.title = @"VDNKh";
    vdnkh.descript = @"Prospekt Mira, 119, Moskva, Russia, 129223";
    vdnkh.image = @"VDNKh";
    
    Landmark *pushkin = [[Landmark alloc] init];
    pushkin.title = @"Pushkin Museum";
    pushkin.descript = @"Ulitsa Volkhonka, 12, Moskva, 119019";
    pushkin.image = @"PushkinMuseum";
    
    Landmark *zoo = [[Landmark alloc] init];
    zoo.title = @"Moscow Zoo";
    zoo.descript = @"Bolshaya Gruzinskaya Street, 1, Moskva, 123242";
    zoo.image = @"MoscowZoo";
    
    Landmark *ostankino = [[Landmark alloc] init];
    ostankino.title = @"Ostankino Tower";
    ostankino.descript = @"Akademika Koroleva St, 15, Moskva, 127427";
    ostankino.image = @"OstankinoTower";
    
    Landmark *christ = [[Landmark alloc] init];
    christ.title = @"Cathedral of Christ the Saviour";
    christ.descript = @"Ulitsa Volkhonka, 15, Moskva, 119019";
    christ.image = @"Christ";
    
    Landmark *sokolniki = [[Landmark alloc] init];
    sokolniki.title = @"Sokolniki Park";
    sokolniki.descript = @"Ulitsa Sokol'nicheskiy Val, 1, стр. 1, Moskva";
    sokolniki.image = @"Sokolniki";
    
    landmarks = [NSArray arrayWithObjects:
                 kremlin,
                 redSquare,
                 saintBasil,
                 gum,
                 gorkyPark,
                 bolshTheater,
                 novodevConvent,
                 tretiakovGal,
                 vdnkh,
                 pushkin,
                 zoo,
                 ostankino,
                 christ,
                 sokolniki,
                 nil];
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //return title.count;
    return landmarks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.cellTitle.text = landmarks[indexPath.row].title;
    cell.cellDescription.text = landmarks[indexPath.row].descript;
    cell.cellImageView.image = [UIImage imageNamed: landmarks[indexPath.row].image];
    cell.cellTitle.textColor = [UIColor colorWithRed:35.0/255.0 green:90.0/255.0 blue:141.0/255.0 alpha:1.0];
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        DetailViewController *detailView = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        int row = (int) [myIndexPath row];
        detailView.detailModal = @[landmarks[row].title, landmarks[row].descript, landmarks[row].image];
    }
}
@end
