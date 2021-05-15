#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    NSInteger count = 0;
    
    for (int n = 0; n < (array.count - 1); n ++) {
        
        NSInteger num = [[array objectAtIndex:n] intValue];
        
        for (int n1 = n + 1; n1 < (array.count); n1 ++) {
            NSInteger num1 = [[array objectAtIndex:n1] intValue];
            if (num1 == num + [number intValue] ) {
                count ++ ;
            }
        }
    }
    return count;
}

@end
