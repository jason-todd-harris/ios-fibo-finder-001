//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)arrayWithFibonacciSequenceToIndex: (NSUInteger)index {
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    [sequence addObject:@0];
    
    if(index == 0){
        return sequence;
    } else if (index != 0 ) {
        [sequence addObject:@1];
    }
    
    for (NSUInteger i=2; i <= index; i++){
        NSUInteger newNumber = [sequence[i-2] integerValue] + ([sequence[i-1] integerValue]);
        [sequence addObject:@(newNumber)];
        NSLog(@"asd");
        
    }
    
    
    
    return sequence;
}



@end

/*
 Create an if statement that checks when i is equal to 0. If it is, call the addObject: method on the sequence array with @0 submitted as the argument.
 Chain an else if statement that checks when i is equal to 1. If it is, call the addObject: method on the sequence array with @1 submitted as the argument.
 If you wish to inspect your sequence, insert an NSLog() right before the return statement that prints the sequence array to the console.
 Run the tests with ⌘ U to see that the first two tests pass.
 Now it's time to implement the algorithm. Chain an else statement to the if and else if statements to set a default behavior for every iteration of the loop after the first two. In order to calculate the next fibonacci number in the sequence, we're going to need to:
 
 pull the previous two numbers out of the sequence array,
 Hint: You can subscript an array with an operation, such as i-2.
 convert them from NSNumbers to integer primitives,
 calculate the next fibonacci number in the sequence by the finding the sum of the two converted integers, and
 add the new fibonacci number to the sequence array.
 Use the tests and NSLog()ing to help you determine when your implementation is correct.
 */