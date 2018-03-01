//
//  OrderedMutableDictionary.h
//
//  Copyright (c) 2014年 ZhangHu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class OrderedDictionary;

@interface OrderedMutableDictionary <KeyType, ObjectType> : NSMutableDictionary

- (KeyType)keyAtIndex:(NSUInteger)keyIndex;
- (ObjectType)objectForKeyAtIndex:(NSUInteger)keyIndex;
- (NSArray<KeyType> *)allOrderedKeys;
- (NSArray<ObjectType> *)allOrderedValues;

- (OrderedDictionary *)immutableClone;

@end
