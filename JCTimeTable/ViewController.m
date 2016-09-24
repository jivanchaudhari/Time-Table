//
//  ViewController.m
//  JCTimeTable
//
//  Created by Student P_02 on 20/09/16.
//  Copyright © 2016 Jivan Chaudhari. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.numberTextFeild.keyboardType = UIKeyboardTypeNumberPad;
    self.limitTextFeild.keyboardType = UIKeyboardTypeNumberPad;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateButton:(id)sender {
    
    NSString *numberString = self. numberTextFeild.text;
    NSString *limitString = self.limitTextFeild.text;
    if(numberString.length>0 && limitString.length>0) {
        
        int number = numberString.intValue;
        int limit = limitString.intValue;
        
        allValues = [[NSMutableArray alloc]init];
        for (int index = 1; index <= limit; index++) {
            NSString *text = [NSString stringWithFormat:@" %d   *   %d  =   %d",number,index,number*index];
            [allValues addObject:text];
            
        }
        
        [self.myTableView reloadData];
        [self .view endEditing:YES];
        
    }
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  allValues.count;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    NSString *result = [allValues objectAtIndex:indexPath.row];
    cell.textLabel.text = result;
    return  cell;
    
}
@end
