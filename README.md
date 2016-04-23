# SQLiteSave
1.一行代码存储model类,面向对象存储，无需写一句sqli语句\n
2.指定返回模型转换  class - model \n
3.便捷开发，高效工作\n

-(instancetype)initWithdbPath:(NSString *)dbPath;
- (BOOL)opendb;
- (BOOL)closedb; 
- (BOOL)checkTable:(NSString *)tableName;
- (BOOL)createTableWithName:(NSString *)tableName;
- (BOOL)insertObject:(id)object intoTableName:(NSString *)tableName  intoSaveID:(NSString *)saveID;
- (NSArray *)getAllObjectfromTableName:(NSString *)tableName;
- (NSArray *)getAllObjectfromTableName:(NSString *)tableName withClass:(Class)cl;
- (NSArray *)getAllOjbectsfromTableName:(NSString *)tableName sql:(NSString *)sql;
- (id)getObjectfromTableName:(NSString *)tableName intoSaveID:(NSString *)saveID withClass:(Class)cl;
- (BOOL)deleteAllObjectfromTableName:(NSString *)tableName;
- (BOOL)deleteObjectfromTableName:(NSString *)tableName  SaveID:(NSString *)saveID; 
- (void)deleteObjectsfromTableName:(NSString *)tableName saveIDs:(NSArray *)saveIDs completion:(void(^)(BOOL isSuccess))completion;  

##SQliteObject
- (BOOL)dd_insertDataWithId:(NSString *)ID;
- (NSArray *)dd_getAllData;
+ (NSArray *)dd_getAllData;
- (id)dd_getDataFromId:(NSString *)ID;
- (BOOL)dd_deleteAll;
+ (BOOL)dd_deleteAll;
- (BOOL)dd_deleteFromId:(NSString *)ID;
+ (BOOL)dd_deleteFromId:(NSString *)ID;







