//
//  Persion.h
//  SQliteExample
//

#import <Foundation/Foundation.h>
//存储人的信息

@interface Persion : NSObject

@property (assign , nonatomic)  int age;
@property (copy   , nonatomic)  NSString *name;
@property (copy   , nonatomic)  NSString *word;
@property (copy   , nonatomic)  NSString *girlfriend;
@property (assign , nonatomic)  CGFloat  price;

@end
