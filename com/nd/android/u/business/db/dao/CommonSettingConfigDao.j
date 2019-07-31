.bytecode 50.0
.class public synchronized com/nd/android/u/business/db/dao/CommonSettingConfigDao
.super java/lang/Object
.inner class private static final CommonSettingConfigMapper inner com/nd/android/u/business/db/dao/CommonSettingConfigDao$CommonSettingConfigMapper outer com/nd/android/u/business/db/dao/CommonSettingConfigDao

.field private 'sqliteTemplate' Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/android/u/business/db/dbUtils/SqliteTemplate
dup
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/nd/android/u/business/db/dbUtils/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
putfield com/nd/android/u/business/db/dao/CommonSettingConfigDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
return
.limit locals 1
.limit stack 4
.end method

.method private commonSettingConfigToValues(Lcom/nd/android/u/controller/bean/CommonSettingConfig;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "Landscape_mode"
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getLandscape_mode()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "touchVibrate"
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getTouchVibrate()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "silent"
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getSilent()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "popup_reminder"
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getPopup_reminder()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "recmsg_background"
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getRecmsg_background()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "newmsg_notification"
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getNewmsg_notification()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "receivestarthour"
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getReceivestart_hour()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "receivestartminute"
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getReceivestart_minute()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "receiveendhour"
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getReceiveend_hour()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "receiveednminute"
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getReceiveend_minute()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "lightReminder"
aload 1
invokevirtual com/nd/android/u/controller/bean/CommonSettingConfig/getLightReminder()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private isExists()Z
new com/nd/android/u/business/db/dbUtils/Query
dup
invokestatic com/nd/android/u/business/db/UDatabase/getInstance()Lcom/nd/android/u/business/db/UDatabase;
invokevirtual com/nd/android/u/business/db/UDatabase/getDb()Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 2
aload 2
ldc "uu_commonsettinconfig"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/Query/select()Landroid/database/Cursor;
astore 2
aload 2
ifnull L0
aload 2
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
iconst_1
istore 1
L1:
aload 2
ifnull L2
aload 2
invokeinterface android/database/Cursor/close()V 0
L2:
iload 1
ireturn
L0:
iconst_0
istore 1
goto L1
.limit locals 3
.limit stack 6
.end method

.method private updateCommonSettingConfig(Landroid/content/ContentValues;)I
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
aload 2
ldc "uu_commonsettinconfig"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/setTable(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/values(Landroid/content/ContentValues;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/CommonSettingConfigDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/upload(Lcom/nd/android/u/business/db/dbUtils/Query;)I
ireturn
.limit locals 3
.limit stack 2
.end method

.method public findCommonSettingConfig()Lcom/nd/android/u/controller/bean/CommonSettingConfig;
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 1
aload 1
ldc "uu_commonsettinconfig"
getstatic com/nd/android/u/business/db/table/CommonSettingConfigTable/TABLE_COLUMNS [Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
iconst_1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/limit(I)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/CommonSettingConfigDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 1
new com/nd/android/u/business/db/dao/CommonSettingConfigDao$CommonSettingConfigMapper
dup
aconst_null
invokespecial com/nd/android/u/business/db/dao/CommonSettingConfigDao$CommonSettingConfigMapper/<init>(Lcom/nd/android/u/business/db/dao/CommonSettingConfigDao$CommonSettingConfigMapper;)V
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForObject(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/business/db/dbUtils/RowMapper;)Ljava/lang/Object;
checkcast com/nd/android/u/controller/bean/CommonSettingConfig
areturn
.limit locals 2
.limit stack 5
.end method

.method public findinitCommonSettingConfig()Lcom/nd/android/u/controller/bean/CommonSettingConfig;
aload 0
invokespecial com/nd/android/u/business/db/dao/CommonSettingConfigDao/isExists()Z
ifeq L0
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 1
aload 1
ldc "uu_commonsettinconfig"
getstatic com/nd/android/u/business/db/table/CommonSettingConfigTable/TABLE_COLUMNS [Ljava/lang/String;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
iconst_1
invokevirtual com/nd/android/u/business/db/dbUtils/Query/limit(I)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/CommonSettingConfigDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 1
new com/nd/android/u/business/db/dao/CommonSettingConfigDao$CommonSettingConfigMapper
dup
aconst_null
invokespecial com/nd/android/u/business/db/dao/CommonSettingConfigDao$CommonSettingConfigMapper/<init>(Lcom/nd/android/u/business/db/dao/CommonSettingConfigDao$CommonSettingConfigMapper;)V
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/queryForObject(Lcom/nd/android/u/business/db/dbUtils/Query;Lcom/nd/android/u/business/db/dbUtils/RowMapper;)Ljava/lang/Object;
checkcast com/nd/android/u/controller/bean/CommonSettingConfig
areturn
L0:
new com/nd/android/u/controller/bean/CommonSettingConfig
dup
invokespecial com/nd/android/u/controller/bean/CommonSettingConfig/<init>()V
astore 1
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
ldc "uu_commonsettinconfig"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/into(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
invokespecial com/nd/android/u/business/db/dao/CommonSettingConfigDao/commonSettingConfigToValues(Lcom/nd/android/u/controller/bean/CommonSettingConfig;)Landroid/content/ContentValues;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/values(Landroid/content/ContentValues;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 1
areturn
.limit locals 2
.limit stack 5
.end method

.method public insertCommonSettingConfig(Lcom/nd/android/u/controller/bean/CommonSettingConfig;)J
aload 0
invokespecial com/nd/android/u/business/db/dao/CommonSettingConfigDao/isExists()Z
ifeq L0
aload 0
aload 1
invokevirtual com/nd/android/u/business/db/dao/CommonSettingConfigDao/updateCommonSettingConfig(Lcom/nd/android/u/controller/bean/CommonSettingConfig;)I
i2l
lreturn
L0:
new com/nd/android/u/business/db/dbUtils/Query
dup
invokespecial com/nd/android/u/business/db/dbUtils/Query/<init>()V
astore 2
aload 2
ldc "uu_commonsettinconfig"
invokevirtual com/nd/android/u/business/db/dbUtils/Query/into(Ljava/lang/String;)Lcom/nd/android/u/business/db/dbUtils/Query;
aload 0
aload 1
invokespecial com/nd/android/u/business/db/dao/CommonSettingConfigDao/commonSettingConfigToValues(Lcom/nd/android/u/controller/bean/CommonSettingConfig;)Landroid/content/ContentValues;
invokevirtual com/nd/android/u/business/db/dbUtils/Query/values(Landroid/content/ContentValues;)Lcom/nd/android/u/business/db/dbUtils/Query;
pop
aload 0
getfield com/nd/android/u/business/db/dao/CommonSettingConfigDao/sqliteTemplate Lcom/nd/android/u/business/db/dbUtils/SqliteTemplate;
aload 2
invokevirtual com/nd/android/u/business/db/dbUtils/SqliteTemplate/insert(Lcom/nd/android/u/business/db/dbUtils/Query;)J
lreturn
.limit locals 3
.limit stack 3
.end method

.method public updateCommonSettingConfig(Lcom/nd/android/u/controller/bean/CommonSettingConfig;)I
aload 0
aload 0
aload 1
invokespecial com/nd/android/u/business/db/dao/CommonSettingConfigDao/commonSettingConfigToValues(Lcom/nd/android/u/controller/bean/CommonSettingConfig;)Landroid/content/ContentValues;
invokespecial com/nd/android/u/business/db/dao/CommonSettingConfigDao/updateCommonSettingConfig(Landroid/content/ContentValues;)I
ireturn
.limit locals 2
.limit stack 3
.end method
