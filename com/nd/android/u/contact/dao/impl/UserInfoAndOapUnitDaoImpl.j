.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/UserInfoDao
.implements com/nd/android/u/contact/dao/OapUnitDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$1
.inner class private static final UnitMapper inner com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UnitMapper outer com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl
.inner class private static final UserInfoMapper inner com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UserInfoMapper outer com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl

.field private static final 'TAG' Ljava/lang/String; = "UserInfoAndOapUnitDaoImpl"

.field private 'sqliteTemplate' Lcom/common/android/utils/db/SqliteTemplate;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/db/SqliteTemplate
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
putfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private unitToValues(Lcom/nd/android/u/contact/dataStructure/OapUnit;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "isleaf"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getIsleaf()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "parentId"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getParentId()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "unitcode"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitcode()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "unitid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "unittype"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnittype()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "unit_updatetime"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUpdatetime()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "level"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getLevel()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "seq"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getSeq()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "usercount"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUserCount()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private updateUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;Landroid/content/ContentValues;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_userInfoandunit"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 2
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method private userInfoToValues(Lcom/product/android/business/login/BindUser;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "username"
aload 1
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "type"
aload 1
invokevirtual com/product/android/business/login/BindUser/getType()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "workid"
aload 1
invokevirtual com/product/android/business/login/BindUser/getWorkid()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "studentid"
aload 1
invokevirtual com/product/android/business/login/BindUser/getStudentid()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "duty"
aload 1
invokevirtual com/product/android/business/login/BindUser/getDuty()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "mobilephone"
aload 1
invokevirtual com/product/android/business/login/BindUser/getMobilephone()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "email"
aload 1
invokevirtual com/product/android/business/login/BindUser/getEmail()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "unitid"
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "unitname"
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "unitshortname"
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnitshortname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "unitcode"
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnitcode()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "uid"
aload 1
invokevirtual com/product/android/business/login/BindUser/getUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "uap_uid"
aload 1
invokevirtual com/product/android/business/login/BindUser/getUap_uid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "nickname"
aload 1
invokevirtual com/product/android/business/login/BindUser/getNickname()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "joindate"
aload 1
invokevirtual com/product/android/business/login/BindUser/getJoindate()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "telephone"
aload 1
invokevirtual com/product/android/business/login/BindUser/getTelephone()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "signature"
aload 1
invokevirtual com/product/android/business/login/BindUser/getSignature()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "updatetime"
aload 1
invokevirtual com/product/android/business/login/BindUser/getUpdatetime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "friend_updatetime"
aload 1
invokevirtual com/product/android/business/login/BindUser/getFriend_updatetime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "sysavatar"
aload 1
invokevirtual com/product/android/business/login/BindUser/getSysavatar()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "gender"
aload 1
invokevirtual com/product/android/business/login/BindUser/getGender()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "birthday"
aload 1
invokevirtual com/product/android/business/login/BindUser/getBirthday()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "blood"
aload 1
invokevirtual com/product/android/business/login/BindUser/getBlood()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "site"
aload 1
invokevirtual com/product/android/business/login/BindUser/getSite()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "description"
aload 1
invokevirtual com/product/android/business/login/BindUser/getDescription()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "fax"
aload 1
invokevirtual com/product/android/business/login/BindUser/getFax()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "addr"
aload 1
invokevirtual com/product/android/business/login/BindUser/getAddr()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "postcode"
aload 1
invokevirtual com/product/android/business/login/BindUser/getPostcode()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "isadmin"
aload 1
invokevirtual com/product/android/business/login/BindUser/getIsadmin()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "unittype"
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnittype()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "isgetall"
aload 1
invokevirtual com/product/android/business/login/BindUser/getIsgetall()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "isgetextinfo"
aload 1
invokevirtual com/product/android/business/login/BindUser/getIsgetextinfo()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "receivegroupmsg"
aload 1
invokevirtual com/product/android/business/login/BindUser/getReceivegroupmsg()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "deporcassid"
aload 1
invokevirtual com/product/android/business/login/BindUser/getDeporcassid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public deleteUnit(I)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_userInfoandunit"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "unitid"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 3
.limit stack 6
.end method

.method public deleteUnits()Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_userInfoandunit"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 2
.limit stack 6
.end method

.method public deleteUserInfo()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public deleteUserInfos()Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_userInfoandunit"
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public deletegroupUserInfos()Z
ldc "UserInfoAndOapUnitDaoImpl"
ldc "DELETE FROM uu_userInfo"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "DELETE FROM uu_userInfo"
invokevirtual android/database/sqlite/SQLiteDatabase/execSQL(Ljava/lang/String;)V
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public findCurrerUser(Ljava/lang/String;)Lcom/product/android/business/login/BindUser;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_userInfoandunit"
getstatic com/nd/android/u/contact/db/table/UserInfoAndUnitTable/TABLE_COLUMNS [Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "username = ?"
aload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
iconst_1
invokevirtual com/common/android/utils/db/Query/limit(I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UserInfoMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UserInfoMapper/<init>(Lcom/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/product/android/business/login/BindUser
areturn
.limit locals 3
.limit stack 5
.end method

.method public findFriendUpdate()J
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_userInfoandunit"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "friend_updatetime"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "unit_updatetime DESC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
iconst_1
invokevirtual com/common/android/utils/db/Query/limit(I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForLong(Lcom/common/android/utils/db/Query;)J
lreturn
.limit locals 2
.limit stack 6
.end method

.method public findUpdateTime()[J
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_userInfoandunit"
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "unit_updatetime"
aastore
dup
iconst_1
ldc "friend_updatetime"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "unit_updatetime DESC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
iconst_1
invokevirtual com/common/android/utils/db/Query/limit(I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForLongArray(Lcom/common/android/utils/db/Query;)[J
areturn
.limit locals 2
.limit stack 6
.end method

.method public findUserInfo()Lcom/product/android/business/login/BindUser;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_userInfoandunit"
getstatic com/nd/android/u/contact/db/table/UserInfoAndUnitTable/TABLE_COLUMNS [Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
iconst_1
invokevirtual com/common/android/utils/db/Query/limit(I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UserInfoMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UserInfoMapper/<init>(Lcom/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/product/android/business/login/BindUser
areturn
.limit locals 2
.limit stack 5
.end method

.method public findUserInfoUpdate()J
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_userInfoandunit"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "unit_updatetime"
aastore
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "unit_updatetime DESC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
iconst_1
invokevirtual com/common/android/utils/db/Query/limit(I)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForLong(Lcom/common/android/utils/db/Query;)J
lreturn
.limit locals 2
.limit stack 6
.end method

.method public forceUpdateUserInfo(Lcom/product/android/business/login/BindUser;)Z
aload 0
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/userInfoToValues(Lcom/product/android/business/login/BindUser;)Landroid/content/ContentValues;
invokevirtual com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/updateUserInfo(Landroid/content/ContentValues;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method public getMaxUpdatetime()I
iconst_0
istore 1
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
ldc "select max(%s) as maxupdatetime from %s"
iconst_2
anewarray java/lang/Object
dup
iconst_0
ldc "unit_updatetime"
aastore
dup
iconst_1
ldc "uu_userInfoandunit"
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 3
aload 2
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForCursor(Lcom/common/android/utils/db/Query;Ljava/lang/String;)Landroid/database/Cursor;
astore 2
aload 2
ifnull L0
aload 2
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L0
aload 2
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
aload 2
invokeinterface android/database/Cursor/close()V 0
L1:
iload 1
ireturn
L0:
aload 2
ifnull L1
aload 2
invokeinterface android/database/Cursor/close()V 0
iconst_0
ireturn
.limit locals 4
.limit stack 5
.end method

.method public insertUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
invokevirtual com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/isExists(I)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_userInfoandunit"
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "uu_userInfoandunit"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/unitToValues(Lcom/nd/android/u/contact/dataStructure/OapUnit;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/updateUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 3
.end method

.method public insertUnits(Ljava/util/List;)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;)I"
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
aload 1
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapUnit
invokevirtual com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/insertUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)J
pop2
L1:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public insertUserInfo(Lcom/product/android/business/login/BindUser;)J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/isExists(Lcom/product/android/business/login/BindUser;)Z
ifne L0
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_userInfoandunit"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/userInfoToValues(Lcom/product/android/business/login/BindUser;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/updateUserInfo(Lcom/product/android/business/login/BindUser;)Z
pop
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 3
.end method

.method public isExists(I)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 3
aload 3
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
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
.limit stack 4
.end method

.method public isExists(Lcom/product/android/business/login/BindUser;)Z
iconst_0
istore 3
aload 1
ifnull L0
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 1
aload 1
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 1
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 1
aload 1
ifnull L1
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
iconst_1
istore 2
L2:
iload 2
istore 3
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/close()V 0
iload 2
istore 3
L0:
iload 3
ireturn
L1:
iconst_0
istore 2
goto L2
.limit locals 4
.limit stack 4
.end method

.method public searchUnit()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "seq ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UnitMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UnitMapper/<init>(Lcom/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 5
.end method

.method public searchUnitByLevel(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "level = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "seq ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UnitMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UnitMapper/<init>(Lcom/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 3
.limit stack 5
.end method

.method public searchUnitByParentId(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "parentId = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "seq ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UnitMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UnitMapper/<init>(Lcom/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 3
.limit stack 5
.end method

.method public searchUnitByUnitid(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
.signature "(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_userInfoandunit"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "unitid = ?"
iload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "seq ASC"
invokevirtual com/common/android/utils/db/Query/orderBy(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
aload 3
new com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UnitMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UnitMapper/<init>(Lcom/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForList(Landroid/database/sqlite/SQLiteDatabase;Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/List;
areturn
.limit locals 4
.limit stack 6
.end method

.method public searcheUnitUsercount(I)I
.catch all from L0 to L1 using L2
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_userInfoandunit"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "usercount"
aastore
ldc "unitid=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
iload 1
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
iconst_0
istore 2
iconst_0
istore 1
aload 3
ifnull L3
L0:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
new com/nd/android/u/contact/dataStructure/OapUnit
dup
invokespecial com/nd/android/u/contact/dataStructure/OapUnit/<init>()V
astore 4
aload 4
aload 3
aload 3
ldc "usercount"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setUserCount(I)V
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUserCount()I
istore 1
L1:
goto L0
L4:
iload 1
istore 2
aload 3
ifnull L3
aload 3
invokeinterface android/database/Cursor/close()V 0
iload 1
istore 2
L3:
iload 2
ireturn
L2:
astore 4
aload 3
ifnull L5
aload 3
invokeinterface android/database/Cursor/close()V 0
L5:
aload 4
athrow
.limit locals 5
.limit stack 8
.end method

.method public updateReceivegroupmsg(I)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 3
aload 3
ldc "receivegroupmsg"
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "uu_userInfoandunit"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 3
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public updateUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
aload 0
aload 1
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/unitToValues(Lcom/nd/android/u/contact/dataStructure/OapUnit;)Landroid/content/ContentValues;
invokespecial com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/updateUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;Landroid/content/ContentValues;)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method public updateUserInfo(Landroid/content/ContentValues;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_userInfoandunit"
invokevirtual com/common/android/utils/db/Query/setTable(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 1
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public updateUserInfo(Lcom/product/android/business/login/BindUser;)Z
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/isExists(Lcom/product/android/business/login/BindUser;)Z
ifeq L0
iconst_0
ireturn
L0:
aload 0
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/userInfoToValues(Lcom/product/android/business/login/BindUser;)Landroid/content/ContentValues;
invokevirtual com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl/updateUserInfo(Landroid/content/ContentValues;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method public updateUsercount(I)V
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "usercount"
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_userInfoandunit"
aload 2
ldc "level=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "1"
aastore
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 8
.end method
