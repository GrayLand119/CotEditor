/*
 
 CECharacterInfo.h
 
 CotEditor
 http://coteditor.com
 
 Created by 1024jp on 2015-11-19.
 
 ------------------------------------------------------------------------------
 
 © 2015 1024jp
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */

@import Foundation;
#import "CEUnicodeCharacter.h"


@interface CECharacterInfo : NSObject

@property (nonatomic, readonly, getter=isComplexChar) BOOL complexChar;
@property (nonatomic, readonly, nonnull, copy) NSString *string;
@property (nonatomic, readonly, nonnull, copy) NSString *pictureString;
@property (nonatomic, readonly, nonnull, copy) NSArray<CEUnicodeCharacter *> *unicodes;
@property (nonatomic, readonly, nonnull, copy) NSString *prettyDescription;


+ (nullable CECharacterInfo *)characterInfoWithString:(nonnull NSString *)string;

/// designated initializer
- (nullable instancetype)initWithString:(nonnull NSString *)string NS_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init NS_UNAVAILABLE;

@end
