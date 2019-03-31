@interface SSSScreenshotsViewController : NSObject
- (NSArray *)visibleScreenshots;
@end

@interface SSSContainerViewController : NSObject
- (void)screenshotsViewController:(SSSScreenshotsViewController *)viewController requestsDeleteForScreenshots:(NSArray *)screenshots forReason:(NSUInteger)reason;
@end

%hook SSSContainerViewController

%new
- (void)_updateFlashViewFrame {

}

%new
- (void)_stopCurrentFlash {

}

%new
- (void)deleteRequestedForAllScreenshotsFromScreenshotsViewController:(SSSScreenshotsViewController *)viewController animatingDeletion:(BOOL)animated {
	[self screenshotsViewController:viewController requestsDeleteForScreenshots:[viewController visibleScreenshots] forReason:0];
}

%end