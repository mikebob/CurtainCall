//
//  SecondViewController.m
//  CurtianCall
//
//  Created by Mike Bobiney on 3/30/11.
//  Copyright 2011 NA. All rights reserved.
//

#import "SecondViewController.h"


@implementation SecondViewController

NSArray *wordListArray;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"contributors" ofType:@"txt"];
    NSString *fileContents = [NSString stringWithContentsOfFile:path encoding:NSMacOSRomanStringEncoding error:NULL];
    
    wordListArray = [[NSArray alloc] initWithArray:[fileContents componentsSeparatedByString:@"\n"]];
    table.dataSource = self;
    table.delegate = self;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:@"MyIdentifier"];
    
    if (cell == nil) 
    {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:@"MyIdentifier"] autorelease];
    }
    [cell.textLabel setText:[wordListArray objectAtIndex:indexPath.row]];
	return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [wordListArray count];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload
{
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc
{
    [super dealloc];
}

@end
