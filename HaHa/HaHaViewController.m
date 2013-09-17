//
//  HaHaViewController.m
//  HaHa
//
//  Created by Student on 9/17/13.
//  Copyright (c) 2013 Nick Smith. All rights reserved.
//

#import "HaHaViewController.h"

#define HA_HA_FILE @"haha"
#define HA_HA_FORMAT @"mp3"

@interface HaHaViewController ()

@end

@implementation HaHaViewController

@synthesize player, label, counter;

-(id)initWithCoder:(NSCoder *)aDecoder
{
    NSLog(@"Hit initWithCoder label: %@", label);
    self = [super initWithCoder:aDecoder];
    if(self != nil)
    {
        self.label.text = @"";
        self.counter = 0;
        NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:HA_HA_FILE ofType:HA_HA_FORMAT];
        NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath];
        self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
        [self.player prepareToPlay];
    }
    
    return self;
}

#pragma mark -
#pragma mark - Action Methods

-(IBAction)playSound:(id)sender
{
    NSLog(@"snder = %@",sender);
    [self.player play];
    self.counter++;
    self.label.text = [NSString stringWithFormat:@"Ha Ha #%d",counter];
}

-(IBAction)stopSound:(id)sender
{
    NSLog(@"snder = %@", sender);
    [self.player stop];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.label.text = [NSString stringWithFormat:@"Ha Ha #%d",counter];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
