#import "RNFirebaseInstanceId.h"

#if __has_include(<FirebaseInstanceID/FIRInstanceID.h>)
//#import <FirebaseMessaging/FirebaseMessaging.h>
#import <FirebaseInstanceID/FIRInstanceID.h>

@implementation RNFirebaseInstanceId
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(delete:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    // mod stat
    resolve(nil);
    // [[FIRInstanceID instanceID] deleteIDWithHandler:^(NSError * _Nullable error) {
    //     if (error) {
    //         reject(@"instance_id_error", @"Failed to delete instance id", error);
    //     } else {
    //         resolve(nil);
    //     }
    // }];
    // mod end
}

RCT_EXPORT_METHOD(get:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    // start mode
    resolve(@"FAKE");
    // [[FIRInstanceID instanceID] getIDWithHandler:^(NSString * _Nullable identity, NSError * _Nullable error) {
    //     if (error) {
    //         reject(@"instance_id_error", @"Failed to get instance id", error);
    //     } else {
    //         resolve(identity);
    //     }
    // }];
    // end mod
}

RCT_EXPORT_METHOD(getToken:(NSString *)authorizedEntity
                  scope:(NSString *)scope
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    //   mod start
    resolve(@"FAKE");
    // NSDictionary * options = nil;
    //  if ([FIRMessaging messaging].APNSToken) {
    //     options = @{@"apns_token": [FIRMessaging messaging].APNSToken};
    //  }
    // [[FIRInstanceID instanceID] tokenWithAuthorizedEntity:authorizedEntity scope:scope options:options handler:^(NSString * _Nullable identity, NSError * _Nullable error) {
    //     if (error) {
    //         reject(@"instance_id_error", @"Failed to getToken", error);
    //     } else {
    //         resolve(identity);
    //     }
    // }];
    // mod end
}

RCT_EXPORT_METHOD(deleteToken:(NSString *)authorizedEntity
                  scope:(NSString *)scope
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    // start mod
    resolve(nil);
    // [[FIRInstanceID instanceID] deleteTokenWithAuthorizedEntity:authorizedEntity scope:scope handler:^(NSError * _Nullable error) {
    //     if (error) {
    //         reject(@"instance_id_error", @"Failed to deleteToken", error);
    //     } else {
    //         resolve(nil);
    //     }
    // }];
    // end mod
}

@end

#else
@implementation RNFirebaseInstanceId
@end
#endif

