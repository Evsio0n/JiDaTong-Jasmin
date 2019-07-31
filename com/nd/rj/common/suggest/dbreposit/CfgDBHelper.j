.bytecode 50.0
.class public synchronized com/nd/rj/common/suggest/dbreposit/CfgDBHelper
.super com/nd/rj/common/util/db/BaseDBHelper

.field private static final 'DB_NAME' Ljava/lang/String; = "Config_suggest.cfg"

.field private static final 'DB_VERSION' I = 1


.field private static 'mHelper' Lcom/nd/rj/common/util/db/IDataBaseRef;

.method private <init>()V
aload 0
invokespecial com/nd/rj/common/util/db/BaseDBHelper/<init>()V
aload 0
ldc "CfgDBHelper"
putfield com/nd/rj/common/suggest/dbreposit/CfgDBHelper/TAG Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)I
new java/lang/StringBuilder
dup
sipush 400
invokespecial java/lang/StringBuilder/<init>(I)V
astore 2
aload 2
ldc "Create  TABLE SUGGEST_INFO(          "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "[UAP_UID] bigint NOT NULL           "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc ",[QUEST_NO] VARCHAR(40) PRIMARY KEY "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc ",[QUEST] text                       "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc ",[ASK_TIME] datetime                "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc ",[ANSWER] text                      "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc ",[ANSWER_TIME] datetime             "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc ",[FLAG] int                         "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "                                    "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc ");                                  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
getstatic com/nd/rj/common/suggest/dbreposit/CfgDBHelper/mHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
ifnonnull L0
new com/nd/rj/common/suggest/dbreposit/CfgDBHelper
dup
invokespecial com/nd/rj/common/suggest/dbreposit/CfgDBHelper/<init>()V
putstatic com/nd/rj/common/suggest/dbreposit/CfgDBHelper/mHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
L0:
getstatic com/nd/rj/common/suggest/dbreposit/CfgDBHelper/mHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
areturn
.limit locals 0
.limit stack 2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
aload 1
ldc "SUGGEST_INFO"
invokevirtual com/nd/rj/common/suggest/dbreposit/CfgDBHelper/tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
ifne L0
aload 0
aload 1
invokespecial com/nd/rj/common/suggest/dbreposit/CfgDBHelper/createTable(Landroid/database/sqlite/SQLiteDatabase;)I
pop
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
return
.limit locals 4
.limit stack 0
.end method

.method protected openDB(Landroid/content/Context;Ljava/lang/String;)I
getstatic com/nd/rj/common/R$string/nd_open_db_error I
istore 3
aload 0
getfield com/nd/rj/common/suggest/dbreposit/CfgDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
ifnonnull L0
aload 0
invokevirtual com/nd/rj/common/suggest/dbreposit/CfgDBHelper/close()V
aload 0
new com/nd/rj/common/util/db/SqliteHelper
dup
aload 1
ldc "Config_suggest.cfg"
aconst_null
iconst_1
aload 0
invokespecial com/nd/rj/common/util/db/SqliteHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/nd/rj/common/util/db/IDataBaseRef;)V
putfield com/nd/rj/common/suggest/dbreposit/CfgDBHelper/mSqliteHelper Lcom/nd/rj/common/util/db/SqliteHelper;
aload 0
getfield com/nd/rj/common/suggest/dbreposit/CfgDBHelper/mSqliteHelper Lcom/nd/rj/common/util/db/SqliteHelper;
ifnull L1
aload 0
aload 0
getfield com/nd/rj/common/suggest/dbreposit/CfgDBHelper/mSqliteHelper Lcom/nd/rj/common/util/db/SqliteHelper;
invokevirtual com/nd/rj/common/util/db/SqliteHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
putfield com/nd/rj/common/suggest/dbreposit/CfgDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 0
ldc "Config_suggest.cfg"
putfield com/nd/rj/common/suggest/dbreposit/CfgDBHelper/mDBName Ljava/lang/String;
iconst_0
istore 3
L2:
aload 0
ldc "Config_suggest.cfg"
putfield com/nd/rj/common/suggest/dbreposit/CfgDBHelper/mDBName Ljava/lang/String;
iload 3
ireturn
L1:
aload 0
getfield com/nd/rj/common/suggest/dbreposit/CfgDBHelper/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/rj/common/suggest/dbreposit/CfgDBHelper/mDBName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Config_suggest.cfg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "open db error"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L2
L0:
aload 0
getfield com/nd/rj/common/suggest/dbreposit/CfgDBHelper/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/rj/common/suggest/dbreposit/CfgDBHelper/mDBName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " is already open !"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 3
ireturn
.limit locals 4
.limit stack 8
.end method
