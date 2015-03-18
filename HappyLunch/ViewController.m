//
//  ViewController.m
//  HappyLunch
//
//  Created by Matt Larkin on 3/18/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

#import "ViewController.h"
#import "FoodTableViewCell.h"
#import "DrinkTableViewCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate,foodTableViewCellDelegate, drinkTableViewCellDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *selectedFoodImageView;

@property (strong, nonatomic) IBOutlet UIImageView *selectedDrinkImageView;


@end

@implementation ViewController

NSString * const kFoodCell = @"FoodCell";
NSString * const kDrinkCell = @"DrinkCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{   if (indexPath ==0){
    FoodTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kFoodCell];
    cell.delgate = self;
    return cell;
} else {
    DrinkTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kDrinkCell];
    cell.delegate = self;
    return cell;
}
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;

}

-(void)foodTableViewCell:(id)cell didTapButton:(UIButton *)button {

    self.selectedFoodImageView.image = button.imageView.image;
}

@end
