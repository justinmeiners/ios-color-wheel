//
//  NSString+SelectorName.h
//
//  Created by Darrel Wright on 5/2/14.
//  Copyright (c) 2014 Darrel Wright.
//  Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
//

#import <Foundation/Foundation.h>

@interface NSString (SelectorName)


//returns the selector name using NSASCIIStringEncoding
+(NSString*)stringWithNameOfSelector:(SEL)selector;

@end
