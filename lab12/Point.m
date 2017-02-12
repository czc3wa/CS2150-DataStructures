#import "Point.h"
#import <math.h>

@implementation Point

- (id) x: (double) x_value
{
   x = x_value;
   return self;
}

- (double) x
{
   return x;
}

- (id) y: (double) y_value
{
   y = y_value;
   return self;
}

- (double) y
{
   return y;
}

- (double) magnitude
{
   return sqrt(x*x+y*y);
}

@end

