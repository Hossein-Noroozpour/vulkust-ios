#import "app-delegate.h"
#import "game-view.h"
#import "game-view-controller.h"

@implementation AppDelegate

{
    GameView * game_view;
    GameViewController * game_view_controller;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    CGRect frame = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:frame];
    self.window.backgroundColor = [UIColor redColor];
    game_view = [[GameView alloc] initWithFrame:frame];
    game_view_controller = [[GameViewController alloc] init];
    game_view_controller.view = game_view;
    self.window.rootViewController = game_view_controller;
    [self.window makeKeyWindow];
    [game_view_controller viewDidLoad];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
