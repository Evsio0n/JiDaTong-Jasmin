.bytecode 50.0
.class final synchronized com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UserInfoMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/product/android/business/login/BindUser;>;"
.inner class private static final UserInfoMapper inner com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UserInfoMapper outer com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$1;)V
aload 0
invokespecial com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UserInfoMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/product/android/business/login/BindUser;
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
new com/product/android/business/login/BindUser
dup
invokespecial com/product/android/business/login/BindUser/<init>()V
astore 3
aload 3
aload 1
aload 1
ldc "username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUsername(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "mobilephone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setMobilephone(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setType(I)V
aload 3
aload 1
aload 1
ldc "workid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setWorkid(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "studentid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setStudentid(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "mobilephone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setMobilephone(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "email"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setEmail(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "duty"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setDuty(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "unitid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setUnitid(I)V
aload 3
aload 1
aload 1
ldc "unitname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUnitname(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "unitshortname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUnitshortname(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "unitcode"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUnitcode(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/business/login/BindUser/setUid(J)V
aload 3
aload 1
aload 1
ldc "uap_uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setUap_uid(I)V
aload 3
aload 1
aload 1
ldc "nickname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setNickname(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "joindate"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setJoindate(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "telephone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setTelephone(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "signature"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setSignature(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "unit_updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/business/login/BindUser/setUpdatetime(J)V
aload 3
aload 1
aload 1
ldc "friend_updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/business/login/BindUser/setFriend_updatetime(J)V
aload 3
aload 1
aload 1
ldc "sysavatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setSysavatar(I)V
aload 3
aload 1
aload 1
ldc "gender"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setGender(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "birthday"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setBirthday(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "blood"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setBlood(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "site"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setSite(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "description"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setDescription(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "fax"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setFax(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "addr"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setAddr(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "postcode"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setPostcode(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "isadmin"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setIsadmin(I)V
aload 3
aload 1
aload 1
ldc "unittype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setUnittype(I)V
aload 3
aload 1
aload 1
ldc "isgetall"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setIsgetall(I)V
aload 3
aload 1
aload 1
ldc "isgetextinfo"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setIsgetextinfo(I)V
aload 3
aload 1
aload 1
ldc "receivegroupmsg"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setReceivegroupmsg(I)V
aload 3
aload 1
aload 1
ldc "deporcassid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setDeporcassid(I)V
aload 3
areturn
L0:
ldc "UserInfoAndOapUnitDaoImpl"
ldc "user is null"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic mapRow(Landroid/database/Cursor;I)Ljava/lang/Object;
aload 0
aload 1
iload 2
invokevirtual com/nd/android/u/contact/dao/impl/UserInfoAndOapUnitDaoImpl$UserInfoMapper/mapRow(Landroid/database/Cursor;I)Lcom/product/android/business/login/BindUser;
areturn
.limit locals 3
.limit stack 3
.end method
