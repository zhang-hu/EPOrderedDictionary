//
//  OrderedDictionary.h
//  OrderedDictionary
//
//  Created by ZhangHu on 2018/2/27.
//

#import <Foundation/Foundation.h>
@class OrderedMutableDictionary;

@interface OrderedDictionary <KeyType, ObjectType> : NSDictionary

- (KeyType)keyAtIndex:(NSUInteger)keyIndex;
- (ObjectType)objectForKeyAtIndex:(NSUInteger)keyIndex;
- (NSArray<KeyType> *)allOrderedKeys;
- (NSArray<ObjectType> *)allOrderedValues;

- (OrderedMutableDictionary *)mutableClone;

@end
