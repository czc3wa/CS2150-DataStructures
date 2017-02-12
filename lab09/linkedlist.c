//corey chen lab 107 11/16/2016
#include <stdio.h>
#include <stdlib.h>

struct node {
  int val;
  struct node *next;
};

int main() {
	int i = 0;
	struct node *head = NULL;
	head = malloc(sizeof(struct node));

	int numVal;
	printf("Enter how many values to input: ");
	scanf("%d", &numVal);

	struct node *tempNode = head;
	for(i = 0; i < numVal; i++) {
		int num;
		printf("Enter value %d: ", i+1);
		scanf("%d", &num);
		struct node *nextNode = malloc(sizeof (struct node));
		nextNode->val = num;
		tempNode->next = nextNode;
		tempNode = nextNode;
	}

	struct node *tempNode2 = head->next;
	for(i = 0; i < numVal; i++) {
		int num = tempNode2->val;
		printf("%d\n", num);
		tempNode2 = tempNode2->next;
	}

	
	for (i = 0; i < numVal; i++) {
		struct node *tempNode3 = head;
		//printf("%d\n", head->val);
		while(tempNode3->next->next != NULL) {
			tempNode3 = tempNode3->next;
		}
		printf("deleting node %d\n", tempNode3->next->val);
		free(tempNode3->next);
		tempNode3->next = NULL;
	}
	printf("deleting Dummy head\n");
	free(head);

return 0;
}	