#import "app-delegate.h"
#import "game-view.h"
#import "game-view-controller.h"

@implementation AppDelegate

{
    GameView * game_view;
    GameViewController * game_view_controller;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    game_view = [[GameView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    game_view_controller = [[GameViewController alloc] init];
    game_view_controller.view = game_view;
    game_view.rootViewController = game_view_controller;
    [game_view makeKeyWindow];
    [game_view_controller viewDidLoad];
    [game_view makeKeyAndVisible];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
