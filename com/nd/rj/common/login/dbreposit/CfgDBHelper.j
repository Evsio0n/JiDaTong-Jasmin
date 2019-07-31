.bytecode 50.0
.class public synchronized com/nd/rj/common/login/dbreposit/CfgDBHelper
.super com/nd/rj/common/util/db/BaseDBHelper

.field private static final 'DB_NAME' Ljava/lang/String; = "Config.cfg"

.field private static final 'DB_VERSION' I = 2


.field private static 'mHelper' Lcom/nd/rj/common/util/db/IDataBaseRef;

.method private <init>()V
aload 0
invokespecial com/nd/rj/common/util/db/BaseDBHelper/<init>()V
aload 0
ldc "CfgDBHelper"
putfield com/nd/rj/common/login/dbreposit/CfgDBHelper/TAG Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method private createNewUserTables(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
ldc "create table if not exists uap_user('id' integer primary key autoincrement,'uid' varchar,'ticket' varchar,'nick_name' varchar,'account' varchar,'blow_fish' varchar,'last_login_time' varchar,'is_auto_login' integer,'is_save_pwd' integer,'is_current_user' integer)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table if not exists oap_user('id' integer primary key autoincrement,'uap_uid' varchar,'ticket' varchar,'nick_name' varchar,'account' varchar,'blow_fish' varchar,'oap_uid' varchar,'oap_unitid' varchar,'pwd_time' varchar,'bind_uap_account' varchar,'last_login_time' varchar,'is_org_admin' integer,'type' integer,'is_auto_login' integer,'is_save_pwd' integer,'is_current_user' integer,'login_type' integer)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table if not exists bind_user('id' integer primary key autoincrement,'uap_uid' varchar,oap_uid varchar,'joindate' varchar,'telephone' varchar,'signature' varchar,'update_time' varchar,'is_active' integer,'sys_avatar' integer default 1,'user_name' varchar,'work_id' varchar,'duty' varchar,'mobile_phone' varchar,'email' varchar,'unit_name' varchar,'unit_shortname' varchar,'studend_id' varchar,'depporcass_id' varchar,'gender' integer,'birthday' varchar,'blood' varchar,'site' varchar,'description' varchar,'fax' varchar,'addr' varchar,'post_code' varchar,'unit_type' integer,'is_getall' integer,'is_get_extinfo' integer,'friend_updatetime' varchar)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
aload 1
ldc "create table if not exists user_dictionary('id' integer,'attr_id' varchar,'value' varchar)"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/nd/rj/common/login/dbreposit/CfgDBHelper
monitorenter
L0:
getstatic com/nd/rj/common/login/dbreposit/CfgDBHelper/mHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
ifnonnull L1
new com/nd/rj/common/login/dbreposit/CfgDBHelper
dup
invokespecial com/nd/rj/common/login/dbreposit/CfgDBHelper/<init>()V
putstatic com/nd/rj/common/login/dbreposit/CfgDBHelper/mHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
L1:
getstatic com/nd/rj/common/login/dbreposit/CfgDBHelper/mHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
astore 0
L3:
ldc com/nd/rj/common/login/dbreposit/CfgDBHelper
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/nd/rj/common/login/dbreposit/CfgDBHelper
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
aload 1
invokespecial com/nd/rj/common/login/dbreposit/CfgDBHelper/createNewUserTables(Landroid/database/sqlite/SQLiteDatabase;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
iload 2
iconst_2
if_icmpge L0
aload 0
aload 1
invokespecial com/nd/rj/common/login/dbreposit/CfgDBHelper/createNewUserTables(Landroid/database/sqlite/SQLiteDatabase;)V
aconst_null
astore 4
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
new com/nd/rj/common/login/impl/JmeiUNewLoginDataMove
dup
invokespecial com/nd/rj/common/login/impl/JmeiUNewLoginDataMove/<init>()V
astore 4
L2:
aload 4
ifnull L0
aload 4
aload 1
invokeinterface com/nd/rj/common/login/interfaces/INewLoginDataMove/moveData(Landroid/database/sqlite/SQLiteDatabase;)V 1
L0:
return
L1:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
new com/nd/rj/common/login/impl/NdUNewLoginDataMove
dup
invokespecial com/nd/rj/common/login/impl/NdUNewLoginDataMove/<init>()V
astore 4
goto L2
.limit locals 5
.limit stack 2
.end method

.method protected openDB(Landroid/content/Context;Ljava/lang/String;)I
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
aload 0
monitorenter
L0:
getstatic com/nd/rj/common/R$string/nd_open_db_error I
istore 3
aload 0
getfield com/nd/rj/common/login/dbreposit/CfgDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
ifnull L1
aload 0
getfield com/nd/rj/common/login/dbreposit/CfgDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifne L8
L1:
aload 0
invokevirtual com/nd/rj/common/login/dbreposit/CfgDBHelper/close()V
aload 0
new com/nd/rj/common/util/db/SqliteHelper
dup
aload 1
ldc "Config.cfg"
aconst_null
iconst_2
aload 0
invokespecial com/nd/rj/common/util/db/SqliteHelper/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/nd/rj/common/util/db/IDataBaseRef;)V
putfield com/nd/rj/common/login/dbreposit/CfgDBHelper/mSqliteHelper Lcom/nd/rj/common/util/db/SqliteHelper;
aload 0
getfield com/nd/rj/common/login/dbreposit/CfgDBHelper/mSqliteHelper Lcom/nd/rj/common/util/db/SqliteHelper;
ifnull L6
aload 0
aload 0
getfield com/nd/rj/common/login/dbreposit/CfgDBHelper/mSqliteHelper Lcom/nd/rj/common/util/db/SqliteHelper;
invokevirtual com/nd/rj/common/util/db/SqliteHelper/getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
putfield com/nd/rj/common/login/dbreposit/CfgDBHelper/mSQLiteDatabase Landroid/database/sqlite/SQLiteDatabase;
aload 0
ldc "Config.cfg"
putfield com/nd/rj/common/login/dbreposit/CfgDBHelper/mDBName Ljava/lang/String;
L3:
iconst_0
istore 3
L4:
aload 0
ldc "Config.cfg"
putfield com/nd/rj/common/login/dbreposit/CfgDBHelper/mDBName Ljava/lang/String;
L5:
aload 0
monitorexit
iload 3
ireturn
L6:
aload 0
getfield com/nd/rj/common/login/dbreposit/CfgDBHelper/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/rj/common/login/dbreposit/CfgDBHelper/mDBName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Config.cfg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "open db error"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
goto L4
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L8:
aload 0
getfield com/nd/rj/common/login/dbreposit/CfgDBHelper/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/rj/common/login/dbreposit/CfgDBHelper/mDBName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " is already open !"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L9:
goto L5
.limit locals 4
.limit stack 8
.end method
