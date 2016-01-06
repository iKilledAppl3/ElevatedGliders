// Created by BigTimeLegend
//Edited by iKilledAppl3

#import "ElevatedGliders.h"

@interface ElevatedActivator : NSObject <LAListener> 
@end

@implementation ElevatedActivator

- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {

elevatedWindowMain = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
	elevatedWindowMain.windowLevel = UIWindowLevelAlert;
	elevatedWindowMain.alpha = 0.0;
	elevatedWindowMain.hidden = YES;
	elevatedWindowMain.backgroundColor = [UIColor clearColor];

	 backGround = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
	backGround.image = [UIImage imageWithContentsOfFile:@"/Library/Application Support/ElevatedGliders/background.png"];
	[elevatedWindowMain addSubview:backGround];

	bird = [[UIImageView alloc] initWithFrame:CGRectMake(20,50,60,60)];
	bird.image = [UIImage imageWithContentsOfFile:@"/Library/Application Support/ElevatedGliders/bird.png"];
	[elevatedWindowMain addSubview:bird];


	birdFlying = [NSTimer scheduledTimerWithTimeInterval:0.05 
		target:self selector:@selector(birdMoving)
		userInfo:nil repeats:YES];

}

-(void)birdMoving {
bird.center = CGPointMake(bird.center.x, bird.center.y - birdFlight);
birdFlight = birdFlight - 5;
}



-(void)touchesBegan:(NSSet *) touches withEvent:(UIEvent *) event {

birdFlight = 30;
if (birdFlight <-15) {
birdFlight = -15;

}

if (birdFlight >0 ) {

bird.image = [UIImage imageWithContentsOfFile:@"Library/Application Support/ElevatedGliders/birdup.png"];




}



if (birdFlight <0) {

bird.image = [UIImage imageWithContentsOfFile:@"/Library/ Application Support/ElevatedGliders/birddown.png"];

}

}



+(void)load {

	NSAutoreleasePool *p = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.yourcompany.elevatedgliders"];
[p release];
}

- (NSArray *)activator:(LAActivator *)activator requiresCompatibleEventModesForListenerWithName:(NSString *)listenerName {
    return [NSArray arrayWithObjects:@"springboard", @"application", nil];
}

@end
