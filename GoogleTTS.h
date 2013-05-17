//
//  GoogleTTS.h
//  OnSchedule
//
//  Created by Neil Monday on 5/14/13.
//
//

#import <Cordova/CDV.h>

@interface GoogleTTS : CDVPlugin

- (NSArray *)listFileAtPath:(NSString *)path;

- (void)speak:(CDVInvokedUrlCommand*)command;

@end