.bytecode 50.0
.class public synchronized com/nd/android/u/contact/db/NDDatabase
.super java/lang/Object

.field private static final 'DATABASE_NAME' Ljava/lang/String; = "91cloud_"

.field private static 'instance' Lcom/nd/android/u/contact/db/NDDatabase;

.field private static 'mDataBaseName' Ljava/lang/String;

.field private static 'mDatabase' Landroid/database/sqlite/SQLiteDatabase;

.field private 'mOpenHelper' Lcom/nd/android/u/contact/db/ContactDBHelper;

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/contact/db/NDDatabase/instance Lcom/nd/android/u/contact/db/NDDatabase;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>(J)V
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/db/NDDatabase/mOpenHelper Lcom/nd/android/u/contact/db/ContactDBHelper;
lload 1
invokestatic com/nd/android/u/contact/db/NDDatabase/getDBName(J)Ljava/lang/String;
putstatic com/nd/android/u/contact/db/NDDatabase/mDataBaseName Ljava/lang/String;
aload 0
new com/nd/android/u/contact/db/ContactDBHelper
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/db/NDDatabase/mDataBaseName Ljava/lang/String;
invokespecial com/nd/android/u/contact/db/ContactDBHelper/<init>(Landroid/content/Context;Ljava/lang/String;)V
putfield com/nd/android/u/contact/db/NDDatabase/mOpenHelper Lcom/nd/android/u/contact/db/ContactDBHelper;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
if_icmpne L3
L0:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpeq L3
L1:
aload 0
getfield com/nd/android/u/contact/db/NDDatabase/mOpenHelper Lcom/nd/android/u/contact/db/ContactDBHelper;
invokevirtual com/nd/android/u/contact/db/ContactDBHelper/createDataBase()V
L3:
aload 0
getfield com/nd/android/u/contact/db/NDDatabase/mOpenHelper Lcom/nd/android/u/contact/db/ContactDBHelper;
invokevirtual com/nd/android/u/contact/db/ContactDBHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
putstatic com/nd/android/u/contact/db/NDDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
return
L2:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
goto L3
.limit locals 4
.limit stack 5
.end method

.method public static getDBName(J)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "91cloud_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
ldc com/nd/android/u/contact/db/NDDatabase
monitorenter
L0:
getstatic com/nd/android/u/contact/db/NDDatabase/instance Lcom/nd/android/u/contact/db/NDDatabase;
ifnonnull L4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 0
L1:
lload 0
lconst_0
lcmp
ifne L3
aconst_null
astore 2
L6:
ldc com/nd/android/u/contact/db/NDDatabase
monitorexit
aload 2
areturn
L3:
new com/nd/android/u/contact/db/NDDatabase
dup
lload 0
invokespecial com/nd/android/u/contact/db/NDDatabase/<init>(J)V
putstatic com/nd/android/u/contact/db/NDDatabase/instance Lcom/nd/android/u/contact/db/NDDatabase;
L4:
getstatic com/nd/android/u/contact/db/NDDatabase/instance Lcom/nd/android/u/contact/db/NDDatabase;
astore 2
L5:
goto L6
L2:
astore 2
ldc com/nd/android/u/contact/db/NDDatabase
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 4
.end method

.method public clearData()V
aload 0
getfield com/nd/android/u/contact/db/NDDatabase/mOpenHelper Lcom/nd/android/u/contact/db/ContactDBHelper;
invokevirtual com/nd/android/u/contact/db/ContactDBHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
astore 1
aload 1
ldc "DELETE FROM uu_userInfoandunit"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_friendgroup"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_group"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_grouprelation"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_depart"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_user"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_friendrelation"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_class"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_classrelation"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_header"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_unitrelation"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_app"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_app"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_appupdatetime"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_smsquerydetail"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_ability"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_visitor"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_blacklist"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "DELETE FROM uu_senior"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public close()V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
L0:
getstatic com/nd/android/u/contact/db/NDDatabase/instance Lcom/nd/android/u/contact/db/NDDatabase;
ifnull L3
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
ifnull L1
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
invokevirtual com/nd/android/u/contact/business/OapDepartManager/close()V
L1:
getstatic com/nd/android/u/contact/db/NDDatabase/mDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/close()V
aload 0
getfield com/nd/android/u/contact/db/NDDatabase/mOpenHelper Lcom/nd/android/u/contact/db/ContactDBHelper;
invokevirtual com/nd/android/u/contact/db/ContactDBHelper/close()V
aconst_null
putstatic com/nd/android/u/contact/db/NDDatabase/instance Lcom/nd/android/u/contact/db/NDDatabase;
L3:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 1
.end method

.method public getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/contact/db/NDDatabase/mOpenHelper Lcom/nd/android/u/contact/db/ContactDBHelper;
invokevirtual com/nd/android/u/contact/db/ContactDBHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
areturn
L0:
aload 0
getfield com/nd/android/u/contact/db/NDDatabase/mOpenHelper Lcom/nd/android/u/contact/db/ContactDBHelper;
invokevirtual com/nd/android/u/contact/db/ContactDBHelper/getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getSQLiteOpenHelper()Landroid/database/sqlite/SQLiteOpenHelper;
aload 0
getfield com/nd/android/u/contact/db/NDDatabase/mOpenHelper Lcom/nd/android/u/contact/db/ContactDBHelper;
areturn
.limit locals 1
.limit stack 1
.end method
