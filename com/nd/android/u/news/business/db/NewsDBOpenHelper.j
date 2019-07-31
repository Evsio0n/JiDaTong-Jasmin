.bytecode 50.0
.class public synchronized com/nd/android/u/news/business/db/NewsDBOpenHelper
.super android/database/sqlite/SQLiteOpenHelper

.field private static final 'CREATE_READ_LIST_TABLE' Ljava/lang/String;

.field public static final 'DATABASE_NAME_SUFFIX' Ljava/lang/String; = "xy_news"

.field public static final 'PRE_CREATE_INDEX' Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS "

.field public static final 'PRE_CREATE_TABLE' Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS "

.field public static final 'READ_LIST_COLUMN' Ljava/lang/StringBuilder;

.field public static final 'TABLE_READ_LIST' Ljava/lang/String; = "read_list"

.field private static final 'VERSION' I = 1


.method static <clinit>()V
new java/lang/StringBuilder
dup
ldc "news_id"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc " INTEGER PRIMARY KEY NOT NULL,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "read_time"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " TIMESTAMP,"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user_id"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " INTEGER"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
putstatic com/nd/android/u/news/business/db/NewsDBOpenHelper/READ_LIST_COLUMN Ljava/lang/StringBuilder;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "CREATE TABLE IF NOT EXISTS read_list("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/android/u/news/business/db/NewsDBOpenHelper/READ_LIST_COLUMN Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/news/business/db/NewsDBOpenHelper/CREATE_READ_LIST_TABLE Ljava/lang/String;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;J)V
aload 0
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "xy_news"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ".db3"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
iconst_1
invokespecial android/database/sqlite/SQLiteOpenHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return
.limit locals 4
.limit stack 5
.end method

.method private createTableInVersion1(Landroid/database/sqlite/SQLiteDatabase;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 1
getstatic com/nd/android/u/news/business/db/NewsDBOpenHelper/CREATE_READ_LIST_TABLE Ljava/lang/String;
invokevirtual java/lang/String/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
L1:
return
L2:
astore 1
ldc "createDb"
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L5 using L3
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 0
aload 1
invokespecial com/nd/android/u/news/business/db/NewsDBOpenHelper/createTableInVersion1(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L1:
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L2:
astore 2
L4:
ldc "onCreate"
aload 2
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L3:
astore 2
aload 1
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 2
athrow
.limit locals 3
.limit stack 2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
return
.limit locals 4
.limit stack 0
.end method
