#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    int  result = 0;
    int  byte_len = 8;
    
    while (byte_len--) {
        result = (result << 1) | (n & 1);
        n >>= 1;
    }
    return result;
}


