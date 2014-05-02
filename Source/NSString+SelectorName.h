//
//  NSString+SelectorName.h
//  ColorWheel
//
//  Created by Darrel Wright on 5/2/14.
//  Copyright (c) 2014 Inline Studios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SelectorName)


//returns the selector name using NSASCIIStringEncoding
+(NSString*)stringWithNameOfSelector:(SEL)selector;

@end
