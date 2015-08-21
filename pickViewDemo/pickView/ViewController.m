//
//  ViewController.m
//  pickView
//
//  Created by qianfeng on 15-8-20.
//  Copyright (c) 2015年 daihanqi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIPickerView *pickView;

@property (nonatomic, strong) NSArray * pickerArray;

@end

@implementation ViewController

- (NSArray *)pickerArray{
    if (!_pickerArray) {
        _pickerArray = [NSArray arrayWithObjects:@"动物",@"植物",@"石头",@"天空", nil];
    }
    return _pickerArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [super viewDidLoad];
//    textField.inputView = selectPicker;
//    textField.inputAccessoryView = doneToolbar;
//    textField.delegate = self;
    self.pickView.delegate = self;
    self.pickView.dataSource = self;
    self.pickView.frame = CGRectMake(0, 480, 320, 216);
    
    self.pickView.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAction:(UIButton *)sender {
    static BOOL state = YES;
    
    state = !state;
    
    self.pickView.hidden = state;
    
}

#pragma mark - delegate
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.pickerArray count];
}
-(NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self.pickerArray objectAtIndex:row];
}

//选中后触发事件
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.label.text = self.pickerArray[row];
}

@end
