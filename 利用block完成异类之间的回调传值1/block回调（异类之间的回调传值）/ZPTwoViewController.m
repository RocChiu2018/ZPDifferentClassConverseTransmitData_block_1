//
//  ZPTwoViewController.m
//  block回调（异类之间的回调传值）
//
//  Created by apple on 16/7/5.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZPTwoViewController.h"
#import "ZPStudent.h"

@interface ZPTwoViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *sexTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;

@end

@implementation ZPTwoViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark ————— 点击“更新”按钮 —————
- (IBAction)clickUpdateButton
{
    [self.navigationController popViewControllerAnimated:YES];
    
    ZPStudent *student = [[ZPStudent alloc] init];
    student.name = self.nameTextField.text;
    student.sex = self.sexTextField.text;
    student.age = self.ageTextField.text;
    
    //block函数的调用：通过block函数的调用把需要逆传的数据传递过去
    self.transferBlock(student);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
