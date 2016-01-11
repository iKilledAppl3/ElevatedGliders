//Original by BigTimeLegend
//Modified by iKilledAppl3

//headers needed
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <libactivator/libactivator.h>


static UIWindow *elevatedWindowMain; //Window for background view 
UIImageView *bird; //bird image that shows on the screen
UIImageView *backGround; //background image for Window
int birdFlight; //integers for flight of the bird
UIButton *myButton; //Exit button for user to tap to make the game view disappear
NSTimer *birdFlying; //time that the bird takes flight in air

//SpringBoard (Homescreen) View
@interface SpringBoard 
-(void)applicationDidFinishLaunching:(id)launching;
@end 



