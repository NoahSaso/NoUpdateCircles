#import <Preferences/Preferences.h>

@interface NoUpdateCirclesListController: PSListController {
}
- (void)openTwitter;
- (void)openDonate;
- (void)openWebsite;

- (void)respringBn;

- (void)openPDPro;
- (void)openPD;
- (void)openAN;
@end

@implementation NoUpdateCirclesListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"NoUpdateCircles" target:self] retain];
	}
	return _specifiers;
}
- (void)openTwitter {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://twitter.com/Sassoty"]];
}
- (void)openDonate {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://bit.ly/sassotypp"]];
}
- (void)openWebsite {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://sassoty.com"]];
}
- (void)respringBn {
	system("killall -9 SpringBoard");
}
- (void)openPDPro {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"cydia://package/org.thebigboss.passdialpro"]];
}
- (void)openPD {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"cydia://package/com.sassoty.passdial"]];
}
- (void)openAN {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"cydia://package/com.sassoty.anynote"]];
}
@end

// vim:ft=objc
