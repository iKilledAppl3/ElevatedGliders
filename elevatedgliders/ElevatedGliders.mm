#import <Preferences/Preferences.h>

@interface ElevatedGlidersListController: PSListController {
}
@end

@implementation ElevatedGlidersListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"ElevatedGliders" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
