#import "game-view-controller.h"

@implementation GameViewController {
    CADisplayLink* display_link;
    BOOL view_has_appeared;
}

-(void) viewDidLoad {
    [super viewDidLoad];
    self.view.contentScaleFactor = UIScreen.mainScreen.nativeScale;
    // initialize os app in here
    display_link = [CADisplayLink displayLinkWithTarget:self selector: @selector(renderFrame:)];
    [display_link setPreferredFramesPerSecond:30];
    [display_link addToRunLoop:NSRunLoop.currentRunLoop forMode: NSDefaultRunLoopMode];
    UITapGestureRecognizer* tapSelector = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(handleTapGesture:)];
    tapSelector.numberOfTapsRequired = 1;
    tapSelector.cancelsTouchesInView = YES;
    [self.view addGestureRecognizer: tapSelector];
    view_has_appeared = NO;
}

-(void) viewDidAppear: (BOOL) animated {
    [super viewDidAppear: animated];
    view_has_appeared = YES;
}

-(BOOL) canBecomeFirstResponder {
    return view_has_appeared;
}

-(void) renderFrame: (CADisplayLink*) link_display {
    // render a frame in here
}

-(void) dealloc {
    // deallocate os app
}

-(void) toggleKeyboard {
    if (self.isFirstResponder) {
        [self resignFirstResponder];
    } else {
        [self becomeFirstResponder];
    }
}

-(void) handleTapGesture: (UITapGestureRecognizer*) gestureRecognizer {
    if (gestureRecognizer.state == UIGestureRecognizerStateEnded) {
        [self toggleKeyboard];
    }
}

-(void) handleKeyboardInput: (unichar) keycode {
    // key event
}


#pragma mark UIKeyInput methods

-(BOOL) hasText { return YES; }

-(void) insertText: (NSString*) text {
    unichar keycode = (text.length > 0) ? [text characterAtIndex: 0] : 0;
    [self handleKeyboardInput: keycode];
}

-(void) deleteBackward {
    [self handleKeyboardInput: 0x33];
}

@end
