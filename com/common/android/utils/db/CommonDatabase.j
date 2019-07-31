.bytecode 50.0
.class public final synchronized enum com/common/android/utils/db/CommonDatabase
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/common/android/utils/db/CommonDatabase;>;"
.inner class private DatabaseHelper inner com/common/android/utils/db/CommonDatabase$DatabaseHelper outer com/common/android/utils/db/CommonDatabase

.field private static final synthetic '$VALUES' [Lcom/common/android/utils/db/CommonDatabase;

.field public static final enum 'INSTANCE' Lcom/common/android/utils/db/CommonDatabase;

.field private final 'DATABASE_NAME' Ljava/lang/String;

.field private final 'DATABASE_VERSION' I

.field private 'mDataBaseName' Ljava/lang/String;

.field private 'mDatabase' Landroid/database/sqlite/SQLiteDatabase;

.field private 'mOpenHelper' Lcom/common/android/utils/db/CommonDatabase$DatabaseHelper;

.method static <clinit>()V
new com/common/android/utils/db/CommonDatabase
dup
ldc "INSTANCE"
iconst_0
invokespecial com/common/android/utils/db/CommonDatabase/<init>(Ljava/lang/String;I)V
putstatic com/common/android/utils/db/CommonDatabase/INSTANCE Lcom/common/android/utils/db/CommonDatabase;
iconst_1
anewarray com/common/android/utils/db/CommonDatabase
dup
iconst_0
getstatic com/common/android/utils/db/CommonDatabase/INSTANCE Lcom/common/android/utils/db/CommonDatabase;
aastore
putstatic com/common/android/utils/db/CommonDatabase/$VALUES [Lcom/common/android/utils/db/CommonDatabase;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
ldc "91uchat_common"
putfield com/common/android/utils/db/CommonDatabase/DATABASE_NAME Ljava/lang/String;
aload 0
iconst_1
putfield com/common/android/utils/db/CommonDatabase/DATABASE_VERSION I
aload 0
aconst_null
putfield com/common/android/utils/db/CommonDatabase/mOpenHelper Lcom/common/android/utils/db/CommonDatabase$DatabaseHelper;
aload 0
ldc "91uchat_common"
putfield com/common/android/utils/db/CommonDatabase/mDataBaseName Ljava/lang/String;
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/common/android/utils/db/CommonDatabase;)Ljava/lang/String;
aload 0
getfield com/common/android/utils/db/CommonDatabase/mDataBaseName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/common/android/utils/db/CommonDatabase;
ldc com/common/android/utils/db/CommonDatabase
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/common/android/utils/db/CommonDatabase
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/common/android/utils/db/CommonDatabase;
getstatic com/common/android/utils/db/CommonDatabase/$VALUES [Lcom/common/android/utils/db/CommonDatabase;
invokevirtual [Lcom/common/android/utils/db/CommonDatabase;/clone()Ljava/lang/Object;
checkcast [Lcom/common/android/utils/db/CommonDatabase;
areturn
.limit locals 0
.limit stack 1
.end method

.method public close()V
aload 0
getfield com/common/android/utils/db/CommonDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
ifnull L0
aload 0
getfield com/common/android/utils/db/CommonDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
L0:
aload 0
aconst_null
putfield com/common/android/utils/db/CommonDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 0
getfield com/common/android/utils/db/CommonDatabase/mOpenHelper Lcom/common/android/utils/db/CommonDatabase$DatabaseHelper;
ifnull L1
aload 0
getfield com/common/android/utils/db/CommonDatabase/mOpenHelper Lcom/common/android/utils/db/CommonDatabase$DatabaseHelper;
invokevirtual com/common/android/utils/db/CommonDatabase$DatabaseHelper/close()V
L1:
aload 0
aconst_null
putfield com/common/android/utils/db/CommonDatabase/mOpenHelper Lcom/common/android/utils/db/CommonDatabase$DatabaseHelper;
return
.limit locals 1
.limit stack 2
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
aload 0
getfield com/common/android/utils/db/CommonDatabase/mOpenHelper Lcom/common/android/utils/db/CommonDatabase$DatabaseHelper;
ifnull L0
aload 0
getfield com/common/android/utils/db/CommonDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
ifnonnull L1
L0:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "91uchat_common_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/common/android/utils/db/CommonDatabase/mDataBaseName Ljava/lang/String;
aload 0
new com/common/android/utils/db/CommonDatabase$DatabaseHelper
dup
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokespecial com/common/android/utils/db/CommonDatabase$DatabaseHelper/<init>(Lcom/common/android/utils/db/CommonDatabase;Landroid/content/Context;)V
putfield com/common/android/utils/db/CommonDatabase/mOpenHelper Lcom/common/android/utils/db/CommonDatabase$DatabaseHelper;
aload 0
aload 0
getfield com/common/android/utils/db/CommonDatabase/mOpenHelper Lcom/common/android/utils/db/CommonDatabase$DatabaseHelper;
invokevirtual com/common/android/utils/db/CommonDatabase$DatabaseHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
putfield com/common/android/utils/db/CommonDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
L1:
aload 0
getfield com/common/android/utils/db/CommonDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
areturn
.limit locals 1
.limit stack 5
.end method

.method public getDbName()Ljava/lang/String;
aload 0
getfield com/common/android/utils/db/CommonDatabase/mDataBaseName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
