//
//  TableViewCell.h
//  MoscowLandmarks
//
//  Created by Viktor Kachalov on 08.08.17.
//  Copyright © 2017 Viktor Kachalov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UILabel *cellTitle;
@property (weak, nonatomic) IBOutlet UILabel *cellDescription;
@end
