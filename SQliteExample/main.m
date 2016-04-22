//
//  main.m
//  SQliteExample
//  示例demo  参考



#import <Foundation/Foundation.h>
#import "Persion.h"
#import "SQLObject.h"    //存储管理    分类


//存储一个简单的人类   和读取
void test(){
    
//    //初始化一个模型
//    Persion *per = [[Persion alloc] init];
//    per.age = 10;
//    per.name = @"DumengDemo";
//    per.girlfriend = @"范冰冰";
//    per.price = 100000;
//   
//    //存入数据库  通过一个key
//    [per dd_insertDataWithId:@"per1"];
    
    Persion *per = [[Persion alloc] init];
    
    id per1  =  [per dd_getDataFromId:@"per1"];
    
    
    NSLog(@"%@",per1);
    
    
    
//    NSLog(@"age = %d name = %@ girlfriend  = %@ price=%f",per1.age,per1.name,per1.girlfriend,per1.price);
    
    
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test();
        
        
        
        
     
        
        
        
    }
    return 0;
}
