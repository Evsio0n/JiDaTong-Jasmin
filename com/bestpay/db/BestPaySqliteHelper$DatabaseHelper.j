.bytecode 50.0
.class synchronized com/bestpay/db/BestPaySqliteHelper$DatabaseHelper
.super android/database/sqlite/SQLiteOpenHelper
.inner class private static DatabaseHelper inner com/bestpay/db/BestPaySqliteHelper$DatabaseHelper outer com/bestpay/db/BestPaySqliteHelper

.field private static 'mDatabaseHelper' Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;

.method static <clinit>()V
aconst_null
putstatic com/bestpay/db/BestPaySqliteHelper$DatabaseHelper/mDatabaseHelper Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
aload 1
ldc "msp.db"
aconst_null
iconst_1
invokespecial android/database/sqlite/SQLiteOpenHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return
.limit locals 2
.limit stack 5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;
getstatic com/bestpay/db/BestPaySqliteHelper$DatabaseHelper/mDatabaseHelper Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;
ifnonnull L0
new com/bestpay/db/BestPaySqliteHelper$DatabaseHelper
dup
aload 0
invokespecial com/bestpay/db/BestPaySqliteHelper$DatabaseHelper/<init>(Landroid/content/Context;)V
putstatic com/bestpay/db/BestPaySqliteHelper$DatabaseHelper/mDatabaseHelper Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;
L0:
getstatic com/bestpay/db/BestPaySqliteHelper$DatabaseHelper/mDatabaseHelper Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;
areturn
.limit locals 1
.limit stack 3
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
ldc "create table if not exists account(tid text primary key,key_index text,key_tid text,dt integer)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
aload 1
ldc "DROP TABLE IF EXISTS account"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 0
aload 1
invokevirtual com/bestpay/db/BestPaySqliteHelper$DatabaseHelper/onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 4
.limit stack 2
.end method
