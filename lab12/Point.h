#import <Foundation/NSObject.h>

@interface Point : NSObject
{
@private
   double x;
   double y;
}

- (id) x: (double) x_value;
- (double) x;
- (id) y: (double) y_value;
- (double) y;
- (double) magnitude;
@end