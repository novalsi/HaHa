//
//  HaHaViewController.h
//  HaHa
//
//  Created by Student on 9/17/13.
//  Copyright (c) 2013 Nick Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface HaHaViewController : UIViewController

@property (nonatomic, strong) AVAudioPlayer *player;
@property (nonatomic, strong) IBOutlet UILabel *label;
@property (nonatomic, assign) int counter;

-(IBAction)playSound:(id)sender;
-(IBAction)stopSound:(id)sender;

@end
