//
//  OrderedDictionary.m
//  OrderedDictionary
//
//  Created by ZhangHu on 2018/2/27.
//

#import "OrderedDictionary.h"
#import "OrderedMutableDictionary.h"

@interface OrderedDictionary ()

@property (nonatomic) NSDictionary *contentDictionary;
@property (nonatomic) NSArray *keysArray;

@end

@implementation OrderedDictionary

- (instancetype)initWithObjects:(const id[])objects
                        forKeys:(const id<NSCopying>[])keys
                          count:(NSUInteger)count
{
    self = [super init];
    if (self) {
        self.contentDictionary = [[NSDictionary alloc] initWithObjects:objects forKeys:keys count:count];
        self.keysArray = [NSArray arrayWithObjects:keys count:count];
    }
    return self;
}

- (NSUInteger)count
{
    return self.contentDictionary.count;
}

- (id)objectForKey:(id)aKey
{
    return self.contentDictionary[aKey];
}

- (NSEnumerator *)keyEnumerator
{
    return [self.keysArray objectEnumerator];
}

- (id)objectForKeyAtIndex:(NSUInteger)keyIndex
{
    id key = self.keysArray[keyIndex];
    return self.contentDictionary[key];
}

- (id)keyAtIndex:(NSUInteger)keyIndex
{
    return self.keysArray[keyIndex];
}

- (NSArray *)allOrderedKeys
{
    return self.keysArray.copy;
}

- (id)objectForKeyedSubscript:(id)key
{
    return [self objectForKey:key];
}

- (NSArray *)allOrderedValues
{
    NSMutableArray *tmp = [NSMutableArray array];
    for (id key in self.keysArray) {
        [tmp addObject:self.contentDictionary[key]];
    }
    return tmp.copy;
}

- (OrderedMutableDictionary *)mutableClone
{
    return [OrderedMutableDictionary dictionaryWithObjects:self.allOrderedValues forKeys:self.allOrderedKeys];
}

#pragma mark <NSObject>

- (NSString *)description
{
    NSMutableString *result = [NSMutableString stringWithFormat:@"{\n"];

    NSEnumerator *enumerator = [self keyEnumerator];
    id key;
    while ((key = [enumerator nextObject])) {
        [result appendFormat:@"\t%@ : %@,\n", key, self[key]];
    }

    [result appendString:@"}"];
    return result;
}

- (NSString *)debugDescription
{
    return [self description];
}

- (NSUInteger)hash
{
    return self.keysArray.hash & self.contentDictionary.hash;
}

- (BOOL)isEqual:(id)object
{
    return [object isKindOfClass:self.class] &&
           [[(OrderedDictionary *)object keysArray] isEqualToArray:self.keysArray] &&
           [[(OrderedDictionary *)object contentDictionary] isEqualToDictionary:self.contentDictionary];
}

#pragma mark <NSCopying>

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

#pragma mark <NSMutableCopying>

- (id)mutableCopyWithZone:(NSZone *)zone
{
    return self.mutableClone;
}

#pragma mark <NSFastEnumeration>

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state
                                  objects:(id __unsafe_unretained[])stackbuf
                                    count:(NSUInteger)stackbufLength
{
    NSUInteger count = 0;
    unsigned long countOfItemsAlreadyEnumerated = state->state;

    if (countOfItemsAlreadyEnumerated == 0) {
        state->mutationsPtr = &state->extra[0];
    }
    if (countOfItemsAlreadyEnumerated < (count = self.allOrderedKeys.count)) {
        state->itemsPtr = (__unsafe_unretained id *)malloc(sizeof(id) * count);
        [self.allOrderedKeys getObjects:state->itemsPtr range:NSMakeRange(0, count)];
        countOfItemsAlreadyEnumerated = count;
    }
    else {
        count = 0;
        free(state->itemsPtr);
    }
    state->state = countOfItemsAlreadyEnumerated;

    return count;
}

#pragma mark <NSCoding>

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [super encodeWithCoder:aCoder];
    [aCoder encodeObject:self.keysArray forKey:@"keysArray"];
    [aCoder encodeObject:self.contentDictionary forKey:@"contentDictionary"];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.keysArray = [aDecoder decodeObjectForKey:@"keysArray"];
        self.contentDictionary = [aDecoder decodeObjectForKey:@"contentDictionary"];
    }
    return self;
}

@end
