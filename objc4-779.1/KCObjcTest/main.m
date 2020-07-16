//
//  main.m
//  KCObjcTest
//
//  Created by Cooci on 2020/3/5.
//

#import <Foundation/Foundation.h>
#import "message.h"

@interface Person : NSObject

- (void)mainFunc;

@end

@implementation Person

- (void)mainFunc {
    NSLog(@"from mainFunc");
}

@end

@interface Person (Test)

- (void)mainFunc2;

@end

@implementation Person (Test)

- (void)mainFunc2 {
    NSLog(@"from mainFunc2");
}

@end


static Person *shared = nil;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"\n\n===============enter main==============\n\n");
        
//        NSObject *objc = [NSObject alloc];
//        objc = [objc init];
//        NSString *str = [objc description];
        
        shared = [[Person alloc] init];
        
//        ((void (*)(id,SEL))(void *)objc_msgSend)((id)shared, sel_registerName("mainFunc"));
//        ((void (*)(id,SEL))(void *)objc_msgSend)((id)shared, sel_registerName("mainFunc2"));
        [shared mainFunc];
//        [shared mainFunc2];
        
    }
    return 0;
}
