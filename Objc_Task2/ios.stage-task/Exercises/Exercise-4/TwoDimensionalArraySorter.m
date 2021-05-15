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
     
     
     if (arrayString.count != 0 && arrayNumber.count != 0) {
         NSMutableArray *reversStringArray = [NSMutableArray arrayWithArray:[[arrayString reverseObjectEnumerator] allObjects]];
         NSMutableArray *resultArray = [NSMutableArray arrayWithObjects:arrayNumber,reversStringArray, nil];
         return resultArray;
     }
     
     NSMutableArray *resultArray = [NSMutableArray new];
     
     if (arrayString.count == 0) {
         [resultArray addObjectsFromArray:arrayNumber];
     }
     if (arrayNumber.count == 0) {
         [resultArray addObjectsFromArray:arrayString];
     }

     return resultArray;
}

@end
