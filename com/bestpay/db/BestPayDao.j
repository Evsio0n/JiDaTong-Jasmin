.bytecode 50.0
.class public synchronized com/bestpay/db/BestPayDao
.super java/lang/Object

.field public static final 'COUNT' Ljava/lang/String; = "count(0)"

.field public static final 'FIELD_DT' Ljava/lang/String; = "dt"

.field public static final 'FIELD_KEY_INDEX' Ljava/lang/String; = "key_index"

.field public static final 'FIELD_KEY_TID' Ljava/lang/String; = "key_tid"

.field public static final 'FIELD_TID' Ljava/lang/String; = "tid"

.field public static final 'TABLE_NAME' Ljava/lang/String; = "account"

.field private static 'bestPayDao' Lcom/bestpay/db/BestPayDao;

.field private 'mHelper' Lcom/bestpay/db/BestPaySqliteHelper;

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokestatic com/bestpay/db/BestPaySqliteHelper/getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPaySqliteHelper;
putfield com/bestpay/db/BestPayDao/mHelper Lcom/bestpay/db/BestPaySqliteHelper;
return
.limit locals 2
.limit stack 2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPayDao;
getstatic com/bestpay/db/BestPayDao/bestPayDao Lcom/bestpay/db/BestPayDao;
ifnonnull L0
new com/bestpay/db/BestPayDao
dup
aload 0
invokespecial com/bestpay/db/BestPayDao/<init>(Landroid/content/Context;)V
putstatic com/bestpay/db/BestPayDao/bestPayDao Lcom/bestpay/db/BestPayDao;
L0:
getstatic com/bestpay/db/BestPayDao/bestPayDao Lcom/bestpay/db/BestPayDao;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getLastAccount()Lcom/bestpay/db/AccountInfo;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L7 to L8 using L9
.catch all from L7 to L8 using L10
.catch all from L11 to L12 using L3
aconst_null
astore 5
aconst_null
astore 4
aload 0
getfield com/bestpay/db/BestPayDao/mHelper Lcom/bestpay/db/BestPaySqliteHelper;
invokevirtual com/bestpay/db/BestPaySqliteHelper/open()V
aconst_null
astore 2
aconst_null
astore 3
L0:
aload 0
getfield com/bestpay/db/BestPayDao/mHelper Lcom/bestpay/db/BestPaySqliteHelper;
ldc "account"
iconst_4
anewarray java/lang/String
dup
iconst_0
ldc "tid"
aastore
dup
iconst_1
ldc "key_index"
aastore
dup
iconst_2
ldc "key_tid"
aastore
dup
iconst_3
ldc "dt"
aastore
aconst_null
aconst_null
ldc "dt desc limit 0,1"
invokevirtual com/bestpay/db/BestPaySqliteHelper/findAll(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
L1:
aload 1
astore 3
aload 1
astore 2
L4:
aload 1
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L8
L5:
aload 1
astore 3
aload 1
astore 2
L6:
new com/bestpay/db/AccountInfo
dup
invokespecial com/bestpay/db/AccountInfo/<init>()V
astore 4
L7:
aload 4
aload 1
iconst_0
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/bestpay/db/AccountInfo/setTid(Ljava/lang/String;)V
aload 4
aload 1
iconst_1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/bestpay/db/AccountInfo/setKey_index(Ljava/lang/String;)V
aload 4
aload 1
iconst_2
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/bestpay/db/AccountInfo/setKey_tid(Ljava/lang/String;)V
aload 4
new java/util/Date
dup
aload 1
iconst_3
invokeinterface android/database/Cursor/getLong(I)J 1
invokespecial java/util/Date/<init>(J)V
invokevirtual com/bestpay/db/AccountInfo/setDt(Ljava/util/Date;)V
L8:
aload 4
astore 2
aload 1
ifnull L13
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 4
astore 2
L13:
aload 2
areturn
L2:
astore 1
aload 5
astore 4
aload 1
astore 5
aload 3
astore 1
L14:
aload 1
astore 2
L11:
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
L12:
aload 4
astore 2
aload 1
ifnull L13
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 4
areturn
L3:
astore 3
aload 2
astore 1
aload 3
astore 2
L15:
aload 1
ifnull L16
aload 1
invokeinterface android/database/Cursor/close()V 0
L16:
aload 2
athrow
L10:
astore 2
goto L15
L9:
astore 5
goto L14
.limit locals 6
.limit stack 6
.end method

.method public uptOrInsert(Lcom/bestpay/db/AccountInfo;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
aload 0
getfield com/bestpay/db/BestPayDao/mHelper Lcom/bestpay/db/BestPaySqliteHelper;
invokevirtual com/bestpay/db/BestPaySqliteHelper/open()V
L0:
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 0
getfield com/bestpay/db/BestPayDao/mHelper Lcom/bestpay/db/BestPaySqliteHelper;
astore 3
new java/lang/StringBuilder
dup
ldc "tid="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual com/bestpay/db/AccountInfo/getTid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 3
ldc "account"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "count(0)"
aastore
aload 4
aconst_null
aconst_null
invokevirtual com/bestpay/db/BestPaySqliteHelper/findAll(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L1
aload 2
ldc "key_index"
aload 1
invokevirtual com/bestpay/db/AccountInfo/getKey_index()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "key_tid"
aload 1
invokevirtual com/bestpay/db/AccountInfo/getKey_tid()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "dt"
invokestatic java/lang/System/currentTimeMillis()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 3
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
ifle L4
aload 0
getfield com/bestpay/db/BestPayDao/mHelper Lcom/bestpay/db/BestPaySqliteHelper;
astore 4
aload 1
invokevirtual com/bestpay/db/AccountInfo/getTid()Ljava/lang/String;
astore 1
aload 4
ldc "account"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "tid"
aastore
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
aload 2
invokevirtual com/bestpay/db/BestPaySqliteHelper/update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
pop
L1:
aload 3
invokeinterface android/database/Cursor/close()V 0
L3:
return
L4:
aload 2
ldc "tid"
aload 1
invokevirtual com/bestpay/db/AccountInfo/getTid()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/bestpay/db/BestPayDao/mHelper Lcom/bestpay/db/BestPaySqliteHelper;
ldc "account"
aconst_null
aload 2
invokevirtual com/bestpay/db/BestPaySqliteHelper/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
L5:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 5
.limit stack 7
.end method
