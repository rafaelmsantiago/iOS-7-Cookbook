/*
 
 Erica Sadun, http://ericasadun.com
 iOS 7 Cookbook
 Use at your own risk. Do no harm.
 
 */

@import UIKit;
@import QuartzCore;
#import "Utility.h"
#import "UIDevice-Hardware.h"


#pragma mark - TestBedViewController

@interface TestBedViewController : UIViewController
@end

@implementation TestBedViewController

- (void)loadView
{
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIDevice *device = [UIDevice currentDevice];
    NSLog(@"Platform: %@", device.platform);
    NSLog(@"HWModel: %@", device.hwmodel);
    NSLog(@"Platform type: %d", device.platformType);
    NSLog(@"Platform string: %@", device.platformString);
    NSLog(@"Bus Freq: %d", device.busFrequency);
    NSLog(@"CPU Count: %d", device.cpuCount);
    NSLog(@"Total memory: %ud", device.totalMemory);
    NSLog(@"Mac address: %@", device.macaddress);
    NSLog(@"Retina display: %d", device.hasRetinaDisplay);
}

@end


#pragma mark - Application Setup

@interface TestBedAppDelegate : NSObject <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow *window;
@end

@implementation TestBedAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _window.tintColor = COOKBOOK_PURPLE_COLOR;
    TestBedViewController *tbvc = [[TestBedViewController alloc] init];
    tbvc.edgesForExtendedLayout = UIRectEdgeNone;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tbvc];
    _window.rootViewController = nav;
    [_window makeKeyAndVisible];
    return YES;
}

@end


#pragma mark - main

int main(int argc, char *argv[])
{
    @autoreleasepool
    {
        int retVal = UIApplicationMain(argc, argv, nil, @"TestBedAppDelegate");
        return retVal;
    }
}
