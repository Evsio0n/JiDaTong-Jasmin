.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/BirthdayRemindHistoryDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl$1
.inner class private static final BirthdayRemindUserMapper inner com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl$BirthdayRemindUserMapper outer com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl

.field private 'sqliteTemplate' Lcom/common/android/utils/db/SqliteTemplate;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/db/SqliteTemplate
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
putfield com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private albumToValues(Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "fid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "usertype"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getUserType()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "username"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getUserName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "workid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getWorkId()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "birthday"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getBirthday()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "description"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/getDescription()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public final getHistoryList(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_birthdaymindhistory"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/limit(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "_id desc "
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl$BirthdayRemindUserMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl$BirthdayRemindUserMapper/<init>(Lcom/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 5
.end method

.method public final insertList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;>;)V"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
aload 1
ifnull L6
aload 1
invokeinterface java/util/List/size()I 0
ifne L7
L6:
return
L7:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
astore 2
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
ldc "uu_birthdaymindhistory"
aconst_null
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/BirthdayRemindUser
invokespecial com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl/albumToValues(Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;)Landroid/content/ContentValues;
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
L3:
goto L1
L2:
astore 1
L8:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L4:
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L5:
goto L8
.limit locals 3
.limit stack 5
.end method
