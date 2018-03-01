//
//  OrderedDictionary.h
//  OrderedDictionary
//
//  Created by ZhangHu on 2018/2/27.
//

#import <Foundation/Foundation.h>
@class OrderedMutableDictionary;

/**
 Immutable(static) ordered dictionary.
 The class is the subclass of NSDictionary, so all the properties and methods of NSDictionary are all inherited and available besides the extended.
 */
@interface OrderedDictionary <KeyType, ObjectType> : NSDictionary

/**
 An array containing all the keys of the dictionary, the order of the elements in the array is the same as the order of the addings of entries.
 */
@property (readonly, copy) NSArray<KeyType> *allOrderedKeys;

/**
 A new array containing all the values of the dictionary, the order of the elements in the array is the same as the order of the addings of entries.
 */
@property (readonly) NSArray<ObjectType> *allOrderedValues;

/**
 A mutable(dynamic) clone of the receiver. The clone is an instance of OrderedMutableDictionary class and containes all the ordered entries of the receiver.
 */
@property (readonly) OrderedMutableDictionary *mutableClone;

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
