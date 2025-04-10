#import <Foundation/Foundation.h>

%hook NSBundle
- (NSURL *)appStoreReceiptURL {
    return [NSURL fileURLWithPath:@"/var/containers/Bundle/Application/sandboxReceipt"];
}
%end