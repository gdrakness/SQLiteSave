# SQLiteSave
SQLliteSaveTool
#初始化数据库
-(instancetype)initWithdbPath:(NSString *)dbPath;
#打开数据库
- (BOOL)opendb;  - 

#关闭数据库
- (BOOL)closedb; 
- 
#检测某数据库  是否纯在 此表
- (BOOL)checkTable:(NSString *)tableName;

#创建表
- (BOOL)createTableWithName:(NSString *)tableName;
/**插入数据  object 是插入数据 json格式的字符串  或者是集成NSObject 自定义的model类
   系统的类，比如NSArray NSString NSDictionary 等等是不支持插入的
           tableName    插入数据的表明
           saveID    是标识这条记录的id   （切记不是自动增长的id ， 如果每次的id都是相同的，会替换
    之前保存的相同id的数据） 更新某个数据 也用这个方法  
 
 */
- (BOOL)insertObject:(id)object intoTableName:(NSString *)tableName  intoSaveID:(NSString *)saveID;

/**查找某个表的全部的数据 默认返回的数组里面是没有转模型类的*/

- (NSArray *)getAllObjectfromTableName:(NSString *)tableName;
/*查找某个表的全部数据     cl 指定转模型的类 返回的数组里面会装的转好模型的类*/
- (NSArray *)getAllObjectfromTableName:(NSString *)tableName withClass:(Class)cl;
/** sql 是自定义查询语句  默认不会转好模型*/
- (NSArray *)getAllOjbectsfromTableName:(NSString *)tableName sql:(NSString *)sql;
/**返回一个 指定id的数据*/
- (id)getObjectfromTableName:(NSString *)tableName intoSaveID:(NSString *)saveID withClass:(Class)cl;

/**删除表 （不是删除 表里面所有数据）*/
- (BOOL)deleteAllObjectfromTableName:(NSString *)tableName;
/**删除表里面的某换一个id 的数据*/
- (BOOL)deleteObjectfromTableName:(NSString *)tableName  SaveID:(NSString *)saveID;
/**可以把你要删除的id 放在数组里面删除 completion 是个block回调 删除一个都会调用*/
- (void)deleteObjectsfromTableName:(NSString *)tableName saveIDs:(NSArray *)saveIDs completion:(void(^)(BOOL isSuccess))completion;  
- 


SQliteObject
/**
 *  传入进去一个ID 保存当前对象的值
 *  @return 返回成功 失败
 */
- (BOOL)dd_insertDataWithId:(NSString *)ID;

/**
 *  获取全部的信息
 */
- (NSArray *)dd_getAllData;
+ (NSArray *)dd_getAllData;

/**
   @return 返回传入进去ID 对应的数据
 */
- (id)dd_getDataFromId:(NSString *)ID;

/**
 *  @return 全部删除  这个删除是把表直接删除
 */
- (BOOL)dd_delegateAll;
+ (BOOL)dd_delegateAll;
/**
  @return 删除对应ID的数据
 */
- (BOOL)dd_delegateFromId:(NSString *)ID;
+ (BOOL)dd_delegateFromId:(NSString *)ID;







