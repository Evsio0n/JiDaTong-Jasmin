.bytecode 50.0
.class public synchronized com/nd/android/u/contact/db/table/UserInfoAndUnitTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_userInfoandunit (_id integer primary key autoincrement, uid BIGINT not null ,username text ,type integer, workid text, studentid text, duty text, mobilephone text, email text, unitid integer, unitname text,unitshortname text,unitcode text,unittype integer, deporcassid integer, isadmin integer, uap_uid integer ,nickname text ,joindate text ,telephone text ,signature text ,updatetime BIGINT ,friend_updatetime BIGINT ,isactive integer ,sysavatar integer ,gender text ,birthday text ,blood text ,site text ,description text ,fax text ,addr text ,postcode text ,isgetextinfo integer ,isgetall integer ,receivegroupmsg integer ,unit_updatetime BIGINT ,level integer, isleaf integer, parentId integer, usercount integer, seq integer)"

.field public static final 'FIELD_ADDR' Ljava/lang/String; = "addr"

.field public static final 'FIELD_BIRTHDAY' Ljava/lang/String; = "birthday"

.field public static final 'FIELD_BLOOD' Ljava/lang/String; = "blood"

.field public static final 'FIELD_DEPORCASSID' Ljava/lang/String; = "deporcassid"

.field public static final 'FIELD_DESCRIPTION' Ljava/lang/String; = "description"

.field public static final 'FIELD_DUTY' Ljava/lang/String; = "duty"

.field public static final 'FIELD_EMAIL' Ljava/lang/String; = "email"

.field public static final 'FIELD_FAX' Ljava/lang/String; = "fax"

.field public static final 'FIELD_FRIEND_UPDATETIME' Ljava/lang/String; = "friend_updatetime"

.field public static final 'FIELD_GENDER' Ljava/lang/String; = "gender"

.field public static final 'FIELD_ISACTIVE' Ljava/lang/String; = "isactive"

.field public static final 'FIELD_ISADMIN' Ljava/lang/String; = "isadmin"

.field public static final 'FIELD_ISGETALL' Ljava/lang/String; = "isgetall"

.field public static final 'FIELD_ISGETEXTINFO' Ljava/lang/String; = "isgetextinfo"

.field public static final 'FIELD_ISLEAF' Ljava/lang/String; = "isleaf"

.field public static final 'FIELD_JOINDATE' Ljava/lang/String; = "joindate"

.field public static final 'FIELD_LEVEL' Ljava/lang/String; = "level"

.field public static final 'FIELD_MOBILEPHONE' Ljava/lang/String; = "mobilephone"

.field public static final 'FIELD_NICKNAME' Ljava/lang/String; = "nickname"

.field public static final 'FIELD_PARENTID' Ljava/lang/String; = "parentId"

.field public static final 'FIELD_POSTCODE' Ljava/lang/String; = "postcode"

.field public static final 'FIELD_RECEIVEGROUPMSG' Ljava/lang/String; = "receivegroupmsg"

.field public static final 'FIELD_SEQ' Ljava/lang/String; = "seq"

.field public static final 'FIELD_SIGNATURE' Ljava/lang/String; = "signature"

.field public static final 'FIELD_SITE' Ljava/lang/String; = "site"

.field public static final 'FIELD_STUDENTID' Ljava/lang/String; = "studentid"

.field public static final 'FIELD_SYSAVATAR' Ljava/lang/String; = "sysavatar"

.field public static final 'FIELD_TELEPHONE' Ljava/lang/String; = "telephone"

.field public static final 'FIELD_TYPE' Ljava/lang/String; = "type"

.field public static final 'FIELD_UAP_UID' Ljava/lang/String; = "uap_uid"

.field public static final 'FIELD_UID' Ljava/lang/String; = "uid"

.field public static final 'FIELD_UNITCODE' Ljava/lang/String; = "unitcode"

.field public static final 'FIELD_UNITID' Ljava/lang/String; = "unitid"

.field public static final 'FIELD_UNITNAME' Ljava/lang/String; = "unitname"

.field public static final 'FIELD_UNITSHORTNAME' Ljava/lang/String; = "unitshortname"

.field public static final 'FIELD_UNITTYPE' Ljava/lang/String; = "unittype"

.field public static final 'FIELD_UNIT_UPDATETIME' Ljava/lang/String; = "unit_updatetime"

.field public static final 'FIELD_USERCOUNT' Ljava/lang/String; = "usercount"

.field public static final 'FIELD_USERNAME' Ljava/lang/String; = "username"

.field public static final 'FIELD_USER_UPDATETIME' Ljava/lang/String; = "updatetime"

.field public static final 'FIELD_WORKID' Ljava/lang/String; = "workid"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_userInfoandunit"

.field public static final 'TAG' Ljava/lang/String; = "BindUser"

.method static <clinit>()V
bipush 43
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "uid"
aastore
dup
iconst_2
ldc "username"
aastore
dup
iconst_3
ldc "mobilephone"
aastore
dup
iconst_4
ldc "type"
aastore
dup
iconst_5
ldc "workid"
aastore
dup
bipush 6
ldc "studentid"
aastore
dup
bipush 7
ldc "deporcassid"
aastore
dup
bipush 8
ldc "duty"
aastore
dup
bipush 9
ldc "mobilephone"
aastore
dup
bipush 10
ldc "email"
aastore
dup
bipush 11
ldc "unitid"
aastore
dup
bipush 12
ldc "unitname"
aastore
dup
bipush 13
ldc "unitshortname"
aastore
dup
bipush 14
ldc "unitcode"
aastore
dup
bipush 15
ldc "unittype"
aastore
dup
bipush 16
ldc "isadmin"
aastore
dup
bipush 17
ldc "uap_uid"
aastore
dup
bipush 18
ldc "nickname"
aastore
dup
bipush 19
ldc "joindate"
aastore
dup
bipush 20
ldc "telephone"
aastore
dup
bipush 21
ldc "signature"
aastore
dup
bipush 22
ldc "updatetime"
aastore
dup
bipush 23
ldc "friend_updatetime"
aastore
dup
bipush 24
ldc "isactive"
aastore
dup
bipush 25
ldc "sysavatar"
aastore
dup
bipush 26
ldc "gender"
aastore
dup
bipush 27
ldc "birthday"
aastore
dup
bipush 28
ldc "blood"
aastore
dup
bipush 29
ldc "site"
aastore
dup
bipush 30
ldc "description"
aastore
dup
bipush 31
ldc "fax"
aastore
dup
bipush 32
ldc "addr"
aastore
dup
bipush 33
ldc "postcode"
aastore
dup
bipush 34
ldc "isgetall"
aastore
dup
bipush 35
ldc "isgetextinfo"
aastore
dup
bipush 36
ldc "receivegroupmsg"
aastore
dup
bipush 37
ldc "unit_updatetime"
aastore
dup
bipush 38
ldc "level"
aastore
dup
bipush 39
ldc "isleaf"
aastore
dup
bipush 40
ldc "parentId"
aastore
dup
bipush 41
ldc "usercount"
aastore
dup
bipush 42
ldc "seq"
aastore
putstatic com/nd/android/u/contact/db/table/UserInfoAndUnitTable/TABLE_COLUMNS [Ljava/lang/String;
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

.method public static parseUnitCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/OapUnit;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "BindUser"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/nd/android/u/contact/dataStructure/OapUnit
dup
invokespecial com/nd/android/u/contact/dataStructure/OapUnit/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setUid(J)V
aload 1
aload 0
aload 0
ldc "unitcode"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setUnitcode(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "isleaf"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setIsleaf(I)V
aload 1
aload 0
aload 0
ldc "level"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setLevel(I)V
aload 1
aload 0
aload 0
ldc "parentId"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setParentId(I)V
aload 1
aload 0
aload 0
ldc "unitshortname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setShortname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "unitid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setUnitid(I)V
aload 1
aload 0
aload 0
ldc "unittype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setUnittype(I)V
aload 1
aload 0
aload 0
ldc "unit_updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setUpdatetime(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "seq"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setSeq(I)V
aload 1
aload 0
aload 0
ldc "usercount"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setUserCount(I)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method public static parseUserInfoCursor(Landroid/database/Cursor;)Lcom/product/android/business/login/BindUser;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "BindUser"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/product/android/business/login/BindUser
dup
invokespecial com/product/android/business/login/BindUser/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUsername(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "mobilephone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setMobilephone(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setType(I)V
aload 1
aload 0
aload 0
ldc "workid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setWorkid(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "studentid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setStudentid(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "mobilephone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setMobilephone(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "email"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setEmail(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "duty"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setDuty(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "unitid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setUnitid(I)V
aload 1
aload 0
aload 0
ldc "unitname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUnitname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "unitshortname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUnitshortname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "unitcode"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setUnitcode(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/business/login/BindUser/setUid(J)V
aload 1
aload 0
aload 0
ldc "uap_uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setUap_uid(I)V
aload 1
aload 0
aload 0
ldc "nickname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setNickname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "joindate"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setJoindate(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "telephone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setTelephone(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "signature"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setSignature(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/business/login/BindUser/setUpdatetime(J)V
aload 1
aload 0
aload 0
ldc "friend_updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/business/login/BindUser/setFriend_updatetime(J)V
aload 1
aload 0
aload 0
ldc "sysavatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setSysavatar(I)V
aload 1
aload 0
aload 0
ldc "gender"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setGender(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "birthday"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setBirthday(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "blood"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setBlood(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "site"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setSite(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "description"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setDescription(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "fax"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setFax(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "addr"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setAddr(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "postcode"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/business/login/BindUser/setPostcode(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "isadmin"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setIsadmin(I)V
aload 1
aload 0
aload 0
ldc "unittype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setUnittype(I)V
aload 1
aload 0
aload 0
ldc "isgetall"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setIsgetall(I)V
aload 1
aload 0
aload 0
ldc "isgetextinfo"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setIsgetextinfo(I)V
aload 1
aload 0
aload 0
ldc "receivegroupmsg"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setReceivegroupmsg(I)V
aload 1
aload 0
aload 0
ldc "deporcassid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/business/login/BindUser/setDeporcassid(I)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
