#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    UInt8 result = 0;
    
    for (int i = 0; i < 8; i ++) {
        
        result = result << 1;
        
        if ((n & 1) == 1) {
            
            result = result ^ 1;
            
        }
        
        n = n >> 1;
    }
    
    return result;
}
