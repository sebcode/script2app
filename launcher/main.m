
#import <Cocoa/Cocoa.h>

int main(int argc, char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	NSString *arg = [[NSBundle mainBundle] pathForResource:@"script" ofType:@"sh"];
	
	if (arg) {
		NSTask *task = [[NSTask alloc] init];
		[task setLaunchPath: @"/bin/sh"];
		
		NSArray *arguments = [NSArray arrayWithObjects: arg, nil];
		[task setArguments: arguments];
		
		[task launch];
		[task release];
	}
	
	[pool drain];
	return 0;
}

