//
//  ViewController.m
//  datePicker
//
//  Created by qianfeng on 15-8-21.
//  Copyright (c) 2015年 daihanqi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *year;
@property (weak, nonatomic) IBOutlet UILabel *month;
@property (weak, nonatomic) IBOutlet UILabel *day;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.datePicker.backgroundColor = [UIColor yellowColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)datePicker:(UIDatePicker *)sender {
    NSDate * date = sender.date;
    
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy:MM:dd";
    
    NSString * dateStr = [formatter stringFromDate:date];
    
    NSArray * dateArray = [dateStr componentsSeparatedByString:@":"];
    
    self.year.text = dateArray[0];
    self.month.text = dateArray[1];
    self.day.text = dateArray[2];
}

@end
