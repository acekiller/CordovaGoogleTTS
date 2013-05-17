//
//  GoogleTTS.m
//  OnSchedule
//
//  Created by Neil Monday on 5/14/13.
//
//

#import "GoogleTTS.h"
#import <Cordova/CDV.h>

@implementation GoogleTTS

- (void)speak:(CDVInvokedUrlCommand*)command
{
    
    CDVPluginResult* pluginResult = nil;
    NSLog(@"GoogleTTS Native Code!");
    NSString* text = [command.arguments objectAtIndex:0];
    NSLog(@"GoogleTTS Text: %@", text);
    
    NSString* userAgent = @"Mozilla/5.0";
    
    NSURL *url = [NSURL URLWithString:[[NSString stringWithFormat:@"http://www.translate.google.com/translate_tts?tl=en&q=%@", text]
                                       stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    
    NSMutableURLRequest* request = [[[NSMutableURLRequest alloc] initWithURL:url] autorelease];
    
    [request setValue:userAgent forHTTPHeaderField:@"User-Agent"];
    
    
    NSURLResponse* response = nil;
    NSError* error = nil;
    NSData* data = [NSURLConnection sendSynchronousRequest:request
                                         returningResponse:&response
                                                     error:&error];
    
    [self listFileAtPath:[NSHomeDirectory() stringByAppendingPathComponent:@"www"]];
    
    [data writeToFile:@"tmp/tts.mp3" atomically:YES];
    
    if (text != nil && [text length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:text];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (NSArray *)listFileAtPath:(NSString *)path
{
    //-----> LIST ALL FILES <-----//
    NSLog(@"LISTING ALL FILES FOUND");
    
    int count;
    
    NSArray *directoryContent = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:path error:NULL];
    for (count = 0; count < (int)[directoryContent count]; count++)
    {
        NSLog(@"File %d: %@", (count + 1), [directoryContent objectAtIndex:count]);
    }
    return directoryContent;
}

@end