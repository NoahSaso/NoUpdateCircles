%hook SBApplication

- (BOOL)iconIsRecentlyUpdated:(id)arg1 {
	NSString *filePath = [NSHomeDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.sassoty.noupdatecircles.plist"];
    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:filePath];

    BOOL isEnabled = [[prefs objectForKey:@"enabled"] boolValue];

    if(isEnabled){
    	return NO;
    }

	return %orig(arg1);
}

%end