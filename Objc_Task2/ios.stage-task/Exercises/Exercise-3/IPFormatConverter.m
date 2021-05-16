#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSMutableString *result = [NSMutableString stringWithString:@""];
    if (numbersArray.count > 0) {
        for (int i=0; i<4; i++) {
            if (i < numbersArray.count) {
                if ([numbersArray[i] integerValue] < 0) {
                    return @"Negative numbers are not valid for input.";
                }
                if ([numbersArray[i] integerValue] > 255) {
                    return @"The numbers in the input array can be in the range from 0 to 255.";
                }
                [result appendFormat:@"%@.", numbersArray[i]];
            } else {
                [result appendString:@"0."];
            }
        }
        [result deleteCharactersInRange:NSMakeRange(result.length-1, 1)];
        
        return result;
    }
    return @"";
}

@end
