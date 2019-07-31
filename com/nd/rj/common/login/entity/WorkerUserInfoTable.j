.bytecode 50.0
.class public synchronized com/nd/rj/common/login/entity/WorkerUserInfoTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_INDEX' Ljava/lang/String; = "CREATE INDEX uu_worker_userInfo_INDEX1 ON uu_worker_userInfo(OAP_UID)"

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_worker_userInfo (OAP_UID BIGINT primary key  ,UAP_UID BIGINT  ,USER_NAME  varchar(300) ,USER_NICK_NAME  varchar(300) ,USER_PASS  varchar(300) ,USER_PASS_MD5  varchar(300) ,USER_PASS_MIXED_MD5 varchar(300) ,BLOWFISH varchar(60) ,TICKET varchar(255) ,UNIT_CODE  varchar(300)  ,UNIT_ID BIGINT ,PWD_TIME  varchar(300) ,BIND_UAP_ACCOUNT  varchar(300) ,ISSAVEACCOUNT bit,ISAUTOLOGIN bit ,LAST_LOGIN_DT datetime ,VAR_EXT text,ISPHONE INT, IDENTITY INT DEFAULT -1)"

.field public static final 'FIELD_BIND_UAP_ACCOUNT' Ljava/lang/String; = "BIND_UAP_ACCOUNT"

.field public static final 'FIELD_BLOWFISH' Ljava/lang/String; = "BLOWFISH"

.field public static final 'FIELD_IDENTITY' Ljava/lang/String; = "IDENTITY"

.field public static final 'FIELD_ISAUTOLOGIN' Ljava/lang/String; = "ISAUTOLOGIN"

.field public static final 'FIELD_ISPHONE' Ljava/lang/String; = "ISPHONE"

.field public static final 'FIELD_ISSAVEACCOUNT' Ljava/lang/String; = "ISSAVEACCOUNT"

.field public static final 'FIELD_LAST_LOGIN_DT' Ljava/lang/String; = "LAST_LOGIN_DT"

.field public static final 'FIELD_OAP_UID' Ljava/lang/String; = "OAP_UID"

.field public static final 'FIELD_PWDTIME' Ljava/lang/String; = "PWD_TIME"

.field public static final 'FIELD_TICKET' Ljava/lang/String; = "TICKET"

.field public static final 'FIELD_UAP_UID' Ljava/lang/String; = "UAP_UID"

.field public static final 'FIELD_UNIT_CODE' Ljava/lang/String; = "UNIT_CODE"

.field public static final 'FIELD_UNIT_ID' Ljava/lang/String; = "UNIT_ID"

.field public static final 'FIELD_USER_NAME' Ljava/lang/String; = "USER_NAME"

.field public static final 'FIELD_USER_NICK_NAME' Ljava/lang/String; = "USER_NICK_NAME"

.field public static final 'FIELD_USER_PASS' Ljava/lang/String; = "USER_PASS"

.field public static final 'FIELD_USER_PASS_MD5' Ljava/lang/String; = "USER_PASS_MD5"

.field public static final 'FIELD_USER_PASS_MIXED_MD5' Ljava/lang/String; = "USER_PASS_MIXED_MD5"

.field public static final 'FIELD_VAR_EXT' Ljava/lang/String; = "VAR_EXT"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_worker_userInfo"

.method static <clinit>()V
bipush 19
anewarray java/lang/String
dup
iconst_0
ldc "OAP_UID"
aastore
dup
iconst_1
ldc "UAP_UID"
aastore
dup
iconst_2
ldc "USER_NAME"
aastore
dup
iconst_3
ldc "USER_NICK_NAME"
aastore
dup
iconst_4
ldc "USER_PASS"
aastore
dup
iconst_5
ldc "USER_PASS_MD5"
aastore
dup
bipush 6
ldc "USER_PASS_MIXED_MD5"
aastore
dup
bipush 7
ldc "BLOWFISH"
aastore
dup
bipush 8
ldc "TICKET"
aastore
dup
bipush 9
ldc "UNIT_CODE"
aastore
dup
bipush 10
ldc "UNIT_ID"
aastore
dup
bipush 11
ldc "PWD_TIME"
aastore
dup
bipush 12
ldc "BIND_UAP_ACCOUNT"
aastore
dup
bipush 13
ldc "ISSAVEACCOUNT"
aastore
dup
bipush 14
ldc "ISAUTOLOGIN"
aastore
dup
bipush 15
ldc "LAST_LOGIN_DT"
aastore
dup
bipush 16
ldc "VAR_EXT"
aastore
dup
bipush 17
ldc "ISPHONE"
aastore
dup
bipush 18
ldc "IDENTITY"
aastore
putstatic com/nd/rj/common/login/entity/WorkerUserInfoTable/TABLE_COLUMNS [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static DeleteUserInfo(Landroid/database/sqlite/SQLiteDatabase;J)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_worker_userInfo"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "OAP_UID = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
new com/common/android/utils/db/SqliteTemplate
dup
aload 0
invokespecial com/common/android/utils/db/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public static GetLastUserInfo()Lcom/product/android/business/login/JobNumberUserInfo;
new com/common/android/utils/db/Query
dup
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/getDb()Landroid/database/sqlite/SQLiteDatabase; 0
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 0
aload 0
ldc "uu_worker_userInfo"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
ldc " LAST_LOGIN_DT desc limit 1 "
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 0
new com/nd/rj/common/login/entity/WorkerUserInfo
dup
invokespecial com/nd/rj/common/login/entity/WorkerUserInfo/<init>()V
astore 1
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
L1:
aload 0
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L0
aload 1
aload 0
invokevirtual com/nd/rj/common/login/entity/WorkerUserInfo/LoadFormCursor(Landroid/database/Cursor;)Z
pop
goto L1
L0:
aload 0
ifnull L2
aload 0
invokeinterface android/database/Cursor/close()V 0
L2:
aload 1
invokevirtual com/nd/rj/common/login/entity/WorkerUserInfo/converToJobNumberUserInfo()Lcom/product/android/business/login/JobNumberUserInfo;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static GetUserByUserName(Ljava/lang/String;)Lcom/product/android/business/login/JobNumberUserInfo;
new com/common/android/utils/db/Query
dup
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/getDb()Landroid/database/sqlite/SQLiteDatabase; 0
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 1
aload 1
ldc "uu_worker_userInfo"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 1
ldc "USER_NAME = ?"
aload 0
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 1
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 2
new com/nd/rj/common/login/entity/WorkerUserInfo
dup
invokespecial com/nd/rj/common/login/entity/WorkerUserInfo/<init>()V
astore 1
aload 2
ifnull L0
aload 2
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
L1:
aload 1
astore 0
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L2
aload 1
aload 2
invokevirtual com/nd/rj/common/login/entity/WorkerUserInfo/LoadFormCursor(Landroid/database/Cursor;)Z
pop
goto L1
L0:
aconst_null
astore 0
L2:
aload 2
ifnull L3
aload 2
invokeinterface android/database/Cursor/close()V 0
L3:
aload 0
ifnonnull L4
aconst_null
areturn
L4:
aload 0
invokevirtual com/nd/rj/common/login/entity/WorkerUserInfo/converToJobNumberUserInfo()Lcom/product/android/business/login/JobNumberUserInfo;
areturn
.limit locals 3
.limit stack 3
.end method

.method public static GetUserInfo(J)Lcom/product/android/business/login/JobNumberUserInfo;
new com/common/android/utils/db/Query
dup
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/getDb()Landroid/database/sqlite/SQLiteDatabase; 0
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 2
aload 2
ldc "uu_worker_userInfo"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "OAP_UID = ?"
lload 0
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 2
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 2
new com/nd/rj/common/login/entity/WorkerUserInfo
dup
invokespecial com/nd/rj/common/login/entity/WorkerUserInfo/<init>()V
astore 3
aload 2
ifnull L0
aload 2
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
L1:
aload 2
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L0
aload 3
aload 2
invokevirtual com/nd/rj/common/login/entity/WorkerUserInfo/LoadFormCursor(Landroid/database/Cursor;)Z
pop
goto L1
L0:
aload 2
ifnull L2
aload 2
invokeinterface android/database/Cursor/close()V 0
L2:
aload 3
invokevirtual com/nd/rj/common/login/entity/WorkerUserInfo/converToJobNumberUserInfo()Lcom/product/android/business/login/JobNumberUserInfo;
areturn
.limit locals 4
.limit stack 4
.end method

.method public static SetUserInfo(Lcom/product/android/business/login/JobNumberUserInfo;)I
iconst_0
istore 1
aload 0
ifnull L0
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getOap_uid()J
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/isExists(J)Z
ifeq L1
aload 0
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/UpdateUserInfo(Lcom/product/android/business/login/JobNumberUserInfo;)Z
istore 1
L0:
iload 1
ifeq L2
iconst_0
ireturn
L1:
aload 0
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/insertUserInfo(Lcom/product/android/business/login/JobNumberUserInfo;)J
lconst_0
lcmp
ifle L3
iconst_1
istore 1
L4:
goto L0
L3:
iconst_0
istore 1
goto L4
L2:
iconst_m1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static UpdateUserInfo(Lcom/product/android/business/login/JobNumberUserInfo;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_worker_userInfo"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 1
ldc "OAP_UID = ?"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getOap_uid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "UNIT_ID = ?"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getUnit_id()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/workerUserInfoToValues(Lcom/product/android/business/login/JobNumberUserInfo;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
new com/common/android/utils/db/SqliteTemplate
dup
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/getDb()Landroid/database/sqlite/SQLiteDatabase; 0
invokespecial com/common/android/utils/db/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 5
.end method

.method public static clearAllPasswordFlag()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 0
aload 0
ldc "update uu_worker_userInfo set ISSAVEACCOUNT = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%b"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "', ISAUTOLOGIN = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%b"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "', USER_PASS = '', USER_PASS_MD5 = '', USER_PASS_MIXED_MD5 = ''"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/getDb()Landroid/database/sqlite/SQLiteDatabase; 0
aload 0
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 6
.end method

.method public static clearUserPassWord(J)Z
lload 0
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/GetUserInfo(J)Lcom/product/android/business/login/JobNumberUserInfo;
astore 2
aload 2
ldc ""
invokevirtual com/product/android/business/login/JobNumberUserInfo/setUser_pass(Ljava/lang/String;)V
aload 2
iconst_0
invokevirtual com/product/android/business/login/JobNumberUserInfo/setIs_save_account(Z)V
aload 2
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/UpdateUserInfo(Lcom/product/android/business/login/JobNumberUserInfo;)Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method public static clearUserSaveCount(J)Z
lload 0
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/GetUserInfo(J)Lcom/product/android/business/login/JobNumberUserInfo;
astore 2
aload 2
iconst_0
invokevirtual com/product/android/business/login/JobNumberUserInfo/setIs_save_account(Z)V
aload 2
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/UpdateUserInfo(Lcom/product/android/business/login/JobNumberUserInfo;)Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method public static deleteAllUsers()Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 0
aload 0
ldc "uu_worker_userInfo"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
new com/common/android/utils/db/SqliteTemplate
dup
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/getDb()Landroid/database/sqlite/SQLiteDatabase; 0
invokespecial com/common/android/utils/db/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
aload 0
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 1
.limit stack 3
.end method

.method public static getLastLoginDT(Landroid/database/sqlite/SQLiteDatabase;)I
.catch all from L0 to L1 using L2
aload 0
ldc "SELECT JULIANDAY(IFNULL(MAX(LAST_LOGIN_DT), 0)) FROM uu_worker_userInfo;"
invokevirtual java/lang/String/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 0
aload 0
ifnull L3
L0:
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifle L3
aload 0
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 0
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
L1:
aload 0
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
iload 1
ireturn
L3:
aload 0
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
iconst_0
ireturn
L2:
astore 2
aload 0
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method public static getUserList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/business/login/JobNumberUserInfo;>;"
new com/common/android/utils/db/Query
dup
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/getDb()Landroid/database/sqlite/SQLiteDatabase; 0
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 0
aload 0
ldc "uu_worker_userInfo"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
ldc " LAST_LOGIN_DT desc "
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
L1:
aload 0
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L0
new com/nd/rj/common/login/entity/WorkerUserInfo
dup
invokespecial com/nd/rj/common/login/entity/WorkerUserInfo/<init>()V
astore 2
aload 2
aload 0
invokevirtual com/nd/rj/common/login/entity/WorkerUserInfo/LoadFormCursor(Landroid/database/Cursor;)Z
pop
aload 1
aload 2
invokevirtual com/nd/rj/common/login/entity/WorkerUserInfo/converToJobNumberUserInfo()Lcom/product/android/business/login/JobNumberUserInfo;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L1
L0:
aload 0
ifnull L2
aload 0
invokeinterface android/database/Cursor/close()V 0
L2:
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public static insertUserInfo(Lcom/product/android/business/login/JobNumberUserInfo;)J
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_worker_userInfo"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/workerUserInfoToValues(Lcom/product/android/business/login/JobNumberUserInfo;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
new com/common/android/utils/db/SqliteTemplate
dup
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/getDb()Landroid/database/sqlite/SQLiteDatabase; 0
invokespecial com/common/android/utils/db/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
.limit locals 2
.limit stack 3
.end method

.method public static isExists(J)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/getDb()Landroid/database/sqlite/SQLiteDatabase; 0
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 3
aload 3
ldc "uu_worker_userInfo"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "OAP_UID = ?"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 3
aload 3
ifnull L0
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
iconst_1
istore 2
L1:
aload 3
ifnull L2
aload 3
invokeinterface android/database/Cursor/close()V 0
L2:
iload 2
ireturn
L0:
iconst_0
istore 2
goto L1
.limit locals 4
.limit stack 5
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/product/android/business/login/JobNumberUserInfo;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
aconst_null
areturn
L1:
new com/nd/rj/common/login/entity/WorkerUserInfo
dup
invokespecial com/nd/rj/common/login/entity/WorkerUserInfo/<init>()V
astore 1
aload 1
aload 0
invokevirtual com/nd/rj/common/login/entity/WorkerUserInfo/LoadFormCursor(Landroid/database/Cursor;)Z
pop
aload 1
invokevirtual com/nd/rj/common/login/entity/WorkerUserInfo/converToJobNumberUserInfo()Lcom/product/android/business/login/JobNumberUserInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public static setExtInfo(JLjava/lang/String;)V
lload 0
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/GetUserInfo(J)Lcom/product/android/business/login/JobNumberUserInfo;
astore 3
aload 3
aload 2
invokevirtual com/product/android/business/login/JobNumberUserInfo/setVar_ext(Ljava/lang/String;)V
aload 3
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/UpdateUserInfo(Lcom/product/android/business/login/JobNumberUserInfo;)Z
pop
return
.limit locals 4
.limit stack 2
.end method

.method public static updatePwdtime(JLjava/lang/String;)Z
lload 0
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/GetUserInfo(J)Lcom/product/android/business/login/JobNumberUserInfo;
astore 3
aload 3
aload 2
invokevirtual com/product/android/business/login/JobNumberUserInfo/setPwdtime(Ljava/lang/String;)V
aload 3
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/UpdateUserInfo(Lcom/product/android/business/login/JobNumberUserInfo;)Z
ireturn
.limit locals 4
.limit stack 2
.end method

.method private static workerUserInfoToValues(Lcom/product/android/business/login/JobNumberUserInfo;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 1
aload 1
ldc "OAP_UID"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getOap_uid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "UAP_UID"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getUap_uid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 1
ldc "USER_NAME"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getUser_name()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "USER_NICK_NAME"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getUser_nick_name()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "USER_PASS"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getUser_pass()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "USER_PASS_MD5"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getUser_pass_md5()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "USER_PASS_MIXED_MD5"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getUser_pass_mixed_md5()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "BLOWFISH"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getBlowfish()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "TICKET"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getTicket()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "UNIT_CODE"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getUnitcode()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "UNIT_ID"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getUnit_id()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "ISSAVEACCOUNT"
ldc "%b"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/isIs_save_account()Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "ISAUTOLOGIN"
ldc "%b"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/isIs_auto_login()Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "LAST_LOGIN_DT"
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/getDb()Landroid/database/sqlite/SQLiteDatabase; 0
invokestatic com/nd/rj/common/login/LoginPro/getNextLoginDT(Landroid/database/sqlite/SQLiteDatabase;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "VAR_EXT"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getVar_ext()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "ISPHONE"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getIs_phone()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
ldc "PWD_TIME"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getPwdtime()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "BIND_UAP_ACCOUNT"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getBindUapAccount()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "IDENTITY"
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getIdentity()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 1
areturn
.limit locals 2
.limit stack 7
.end method
