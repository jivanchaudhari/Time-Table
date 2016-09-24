//
//  ViewController.h
//  JCTimeTable
//
//  Created by Student P_02 on 20/09/16.
//  Copyright © 2016 Jivan Chaudhari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *allValues;
    
}
- (IBAction)calculateButton:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *numberTextFeild;
@property (strong, nonatomic) IBOutlet UITextField *limitTextFeild;

@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end

