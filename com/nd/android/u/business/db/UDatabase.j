.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/UDatabase
.super java/lang/Object
.inner class private static DatabaseHelper inner com/nd/android/u/business/db/UDatabase$DatabaseHelper outer com/nd/android/u/business/db/UDatabase

.field private static final 'DATABASE_NAME' Ljava/lang/String; = "91uchat"

.field private static final 'DATABASE_VERSION' I = 13


.field private static 'instance' Lcom/nd/android/u/business/db/UDatabase;

.field private static 'mDataBaseName' Ljava/lang/String;

.field private static 'mDatabase' Landroid/database/sqlite/SQLiteDatabase;

.field private static 'mOpenHelper' Lcom/nd/android/u/business/db/UDatabase$DatabaseHelper;

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/business/db/UDatabase/instance Lcom/nd/android/u/business/db/UDatabase;
aconst_null
putstatic com/nd/android/u/business/db/UDatabase/mOpenHelper Lcom/nd/android/u/business/db/UDatabase$DatabaseHelper;
ldc "91uchat"
putstatic com/nd/android/u/business/db/UDatabase/mDataBaseName Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(J)V
aload 0
invokespecial java/lang/Object/<init>()V
new java/lang/StringBuilder
dup
ldc "91uchat_"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic com/nd/android/u/business/db/UDatabase/mDataBaseName Ljava/lang/String;
new com/nd/android/u/business/db/UDatabase$DatabaseHelper
dup
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
invokespecial com/nd/android/u/business/db/UDatabase$DatabaseHelper/<init>(Landroid/content/Context;)V
putstatic com/nd/android/u/business/db/UDatabase/mOpenHelper Lcom/nd/android/u/business/db/UDatabase$DatabaseHelper;
getstatic com/nd/android/u/business/db/UDatabase/mOpenHelper Lcom/nd/android/u/business/db/UDatabase$DatabaseHelper;
invokevirtual com/nd/android/u/business/db/UDatabase$DatabaseHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
putstatic com/nd/android/u/business/db/UDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$0()Ljava/lang/String;
getstatic com/nd/android/u/business/db/UDatabase/mDataBaseName Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/android/u/business/db/UDatabase;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
ldc com/nd/android/u/business/db/UDatabase
monitorenter
L0:
getstatic com/nd/android/u/business/db/UDatabase/instance Lcom/nd/android/u/business/db/UDatabase;
ifnonnull L4
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lstore 0
L1:
lload 0
lconst_0
lcmp
ifne L3
aconst_null
astore 2
L6:
ldc com/nd/android/u/business/db/UDatabase
monitorexit
aload 2
areturn
L3:
new com/nd/android/u/business/db/UDatabase
dup
lload 0
invokespecial com/nd/android/u/business/db/UDatabase/<init>(J)V
putstatic com/nd/android/u/business/db/UDatabase/instance Lcom/nd/android/u/business/db/UDatabase;
L4:
getstatic com/nd/android/u/business/db/UDatabase/instance Lcom/nd/android/u/business/db/UDatabase;
astore 2
L5:
goto L6
L2:
astore 2
ldc com/nd/android/u/business/db/UDatabase
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 4
.end method

.method public clearDatabase()Z
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
getstatic com/nd/android/u/business/db/UDatabase/mDataBaseName Ljava/lang/String;
invokevirtual android/content/Context/getDatabasePath(Ljava/lang/String;)Ljava/io/File;
invokevirtual java/io/File/delete()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public close()V
getstatic com/nd/android/u/business/db/UDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
getstatic com/nd/android/u/business/db/UDatabase/mOpenHelper Lcom/nd/android/u/business/db/UDatabase$DatabaseHelper;
invokevirtual com/nd/android/u/business/db/UDatabase$DatabaseHelper/close()V
aconst_null
putstatic com/nd/android/u/business/db/UDatabase/instance Lcom/nd/android/u/business/db/UDatabase;
return
.limit locals 1
.limit stack 1
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
getstatic com/nd/android/u/business/db/UDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDbName()Ljava/lang/String;
getstatic com/nd/android/u/business/db/UDatabase/mDataBaseName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
