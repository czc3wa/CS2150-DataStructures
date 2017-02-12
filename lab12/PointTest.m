#import "Point.h"
#import <math.h>
#import <stdio.h>

int main(void)
{
   Point *point = [Point new];
   [point x:10.0];
   [point y:12.0];
   printf("The distance from the point (%g, %g) to the origin is %g.\n",
      [point x], [point y], [point magnitude]);
    
   return 0;
}