#import <Foundation/NSObject.h>
#import <math.h>
#import <stdio.h>

@interface ListNode : NSObject
{
@private
   int val;
   ListNode *next;
}

- (id) val: (int) value;
- (int) val;
- (id) next: (ListNode*) nextNode;
- (ListNode*) next;
@end

@implementation ListNode

- (id) val: (int) value {
  val = value;
  return self;
}

- (int) val {
  return val;
}

- (id) next: (ListNode*) nextNode {
  next = nextNode;
  return self;
}

- (ListNode*) next {
  return next;
}

@end

int main(void) {
  int i = 0;
  ListNode *head = [ListNode new];
  
  int numVal;
  printf("Enter How many values to input: ");
  scanf("%d", &numVal);

  ListNode *tempNode = head;
  for(i = 0; i < numVal; i++) {
    int num;
    printf("Enter value %d: ", i+1);
    scanf("%d", &num);
    ListNode *nextNode = [ListNode new];
    [nextNode val:num];
    [tempNode next:nextNode];
    tempNode = nextNode;
  }

  ListNode *tempNode2 = [head next];
  for (i = 0; i < numVal; ++i) {
    int num = [tempNode2 val];
    printf("%d\n", num);
    tempNode2 = [tempNode2 next];
  }

  for (i = 0; i < numVal; i++) {
    ListNode *tempNode3 = head;
    while ([[tempNode3 next] next] != nil) {
      tempNode3 = [tempNode3 next];
    }
    printf("deleting node %d\n", [[tempNode3 next] val]);
    [[tempNode3 next] release];
    [tempNode3 next:nil];
  }
  printf("deleting Dummy head\n");
  [head release];


  return 0;

}







