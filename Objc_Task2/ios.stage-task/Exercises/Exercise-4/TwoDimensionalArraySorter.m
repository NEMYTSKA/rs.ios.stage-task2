#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
     NSMutableArray *arrayString = [NSMutableArray new];
       NSMutableArray *arrayNumber = [NSMutableArray new];
       
       for (NSArray *i in array) {
           if (![i isKindOfClass:NSArray.class]) {
               return @[];
           }
           
           for (id j in i) {
               if ([j isKindOfClass:NSString.class]) {
                   [arrayString addObject:j];
               }
               if ([j isKindOfClass:NSNumber.class]) {
                   [arrayNumber addObject:j];
               }
           }
       }
       
       [arrayString sortUsingSelector:@selector(compare:)];
       [arrayNumber sortUsingSelector:@selector(compare:)];
       
       NSMutableArray *resultArray = [NSMutableArray arrayWithArray:arrayNumber];
       [resultArray addObjectsFromArray:arrayString];
       
       
       
       return resultArray;
}

@end
