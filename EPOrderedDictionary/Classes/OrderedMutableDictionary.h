//
//  OrderedMutableDictionary.h
//
//  Copyright (c) 2014年 ZhangHu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class OrderedDictionary;

/**
 Mutable(dynamic) ordered dictionary.
 The class is the subclass of NSMutableDictionary, so all the properties and methods of NSMutableDictionary are all inherited and available besides the extended.
 */
@interface OrderedMutableDictionary <KeyType, ObjectType> : NSMutableDictionary

/**
 An array containing all the keys of the dictionary, the order of the elements in the array is the same as the order of the addings of entries.
 */
@property (readonly, copy) NSArray<KeyType> *allOrderedKeys;

/**
 A new array containing all the values of the dictionary, the order of the elements in the array is the same as the order of the addings of entries.
 */
@property (readonly) NSArray<ObjectType> *allOrderedValues;

/**
 A immutable(static) clone of the receiver. The clone is an instance of OrderedDictionary class and containes all the ordered entries of the receiver.
 */
@property (readonly) OrderedDictionary *immutableClone;

/**
 Returns the key of the entry located at specified index.
 
 @param keyIndex An index started with 0
 @return The key of the entry located at `keyIndex`
 */
- (KeyType)keyAtIndex:(NSUInteger)keyIndex;

/**
 Returns the value of the entry located at specified index.
 
 @param keyIndex An index started with 0
 @return The value of the entry located at `keyIndex`
 */
- (ObjectType)objectForKeyAtIndex:(NSUInteger)keyIndex;

@end
