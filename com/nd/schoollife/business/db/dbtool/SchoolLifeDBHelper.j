.bytecode 50.0
.class public final synchronized com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper
.super android/database/sqlite/SQLiteOpenHelper

.field public static final 'DB_NAME' Ljava/lang/String; = "school_life_"

.field private static final 'DB_VERSION' I = 1


.field public static final 'PREFIX' Ljava/lang/String; = "sl_"

.field private static final 'TAG' Ljava/lang/String;

.field private static 'mDBName' Ljava/lang/String;

.field private static 'mHelper' Lcom/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper;

.field private static 'mSQLiteDatabase' Landroid/database/sqlite/SQLiteDatabase;

.method static <clinit>()V
ldc com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/TAG Ljava/lang/String;
aconst_null
putstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aconst_null
putstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mDBName Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
aload 2
aconst_null
iconst_1
invokespecial android/database/sqlite/SQLiteOpenHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return
.limit locals 3
.limit stack 5
.end method

.method public static getDB()Landroid/database/sqlite/SQLiteDatabase;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
ldc com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper
monitorenter
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "school_life_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ".db"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
getstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
ifnull L1
getstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L1
getstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mDBName Ljava/lang/String;
ifnull L9
getstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mDBName Ljava/lang/String;
aload 3
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifne L9
L1:
getstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mHelper Lcom/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper;
ifnull L3
getstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mHelper Lcom/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper;
invokevirtual com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/close()V
L3:
aconst_null
putstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mDBName Ljava/lang/String;
aconst_null
putstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
new com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper
dup
aload 2
aload 3
invokespecial com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/<init>(Landroid/content/Context;Ljava/lang/String;)V
putstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mHelper Lcom/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper;
getstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mHelper Lcom/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper;
ifnull L7
getstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mHelper Lcom/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper;
invokevirtual com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
putstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
L4:
aload 3
putstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mDBName Ljava/lang/String;
L5:
getstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
astore 2
L6:
ldc com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper
monitorexit
aload 2
areturn
L7:
getstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mDBName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "open db error"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L8:
goto L4
L2:
astore 2
ldc com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper
monitorexit
aload 2
athrow
L9:
getstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/schoollife/business/db/dbtool/SchoolLifeDBHelper/mDBName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " is already open !"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L10:
goto L5
.limit locals 4
.limit stack 4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokestatic com/nd/schoollife/business/db/table/SquareBannerTable/create(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokestatic com/nd/schoollife/business/db/table/SquareCommunitiesTable/create(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokestatic com/nd/schoollife/business/db/table/SquarePostsTable/create(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokestatic com/nd/schoollife/business/db/table/SquareTeamsTable/create(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 2
.limit stack 1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
return
.limit locals 4
.limit stack 0
.end method
