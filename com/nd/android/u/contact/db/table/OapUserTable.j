.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/OapUserTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_INDEX' Ljava/lang/String; = "CREATE INDEX uu_user_INDEX1 ON uu_user(fid,unitid)"

.field public static final 'CREATE_INDEX2' Ljava/lang/String; = "CREATE INDEX uu_user_INDEX2 ON uu_user(fid,username)"

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_user (_id integer, fid integer  ,unitid integer  ,uap_uid integer , username text, nickname text, signature text, updatetime text, joindate text, gender integer, telephone text, mobilehone text, email text, note text, depts text, workid text, type integer, duty text, isactive integer, sysavatar integer, unitname text, birthday text, site text, description text, fax text, studentid text, addr text, usercount integer, postcode text , spell1 text , spell2 text , contact_open integer, province text , city text ,  constraint pk_t3 primary key (fid))"

.field public static final 'FIELD_ADDR' Ljava/lang/String; = "addr"

.field public static final 'FIELD_BIRTHDAY' Ljava/lang/String; = "birthday"

.field public static final 'FIELD_BLOOD' Ljava/lang/String; = "blood"

.field public static final 'FIELD_CITY' Ljava/lang/String; = "city"

.field public static final 'FIELD_CONTACT_OPEN' Ljava/lang/String; = "contact_open"

.field public static final 'FIELD_DEPTS' Ljava/lang/String; = "depts"

.field public static final 'FIELD_DESCRIPTION' Ljava/lang/String; = "description"

.field public static final 'FIELD_DUTY' Ljava/lang/String; = "duty"

.field public static final 'FIELD_EMAIL' Ljava/lang/String; = "email"

.field public static final 'FIELD_FAX' Ljava/lang/String; = "fax"

.field public static final 'FIELD_FID' Ljava/lang/String; = "fid"

.field public static final 'FIELD_GENDER' Ljava/lang/String; = "gender"

.field public static final 'FIELD_ISACTIVE' Ljava/lang/String; = "isactive"

.field public static final 'FIELD_JOINDATE' Ljava/lang/String; = "joindate"

.field public static final 'FIELD_MOBILEHOME' Ljava/lang/String; = "mobilehone"

.field public static final 'FIELD_NICKNAME' Ljava/lang/String; = "nickname"

.field public static final 'FIELD_NOTE' Ljava/lang/String; = "note"

.field public static final 'FIELD_POSTCODE' Ljava/lang/String; = "postcode"

.field public static final 'FIELD_PROVINCE' Ljava/lang/String; = "province"

.field public static final 'FIELD_SIGNATURE' Ljava/lang/String; = "signature"

.field public static final 'FIELD_SITE' Ljava/lang/String; = "site"

.field public static final 'FIELD_SPELL1' Ljava/lang/String; = "spell1"

.field public static final 'FIELD_SPELL2' Ljava/lang/String; = "spell2"

.field public static final 'FIELD_STUDENTID' Ljava/lang/String; = "studentid"

.field public static final 'FIELD_SYSAVATAR' Ljava/lang/String; = "sysavatar"

.field public static final 'FIELD_TELEPHONE' Ljava/lang/String; = "telephone"

.field public static final 'FIELD_TYPE' Ljava/lang/String; = "type"

.field public static final 'FIELD_UAPUID' Ljava/lang/String; = "uap_uid"

.field public static final 'FIELD_UNITID' Ljava/lang/String; = "unitid"

.field public static final 'FIELD_UNITNAME' Ljava/lang/String; = "unitname"

.field public static final 'FIELD_UPDATETIME' Ljava/lang/String; = "updatetime"

.field public static final 'FIELD_USERCOUNT' Ljava/lang/String; = "usercount"

.field public static final 'FIELD_USERNAME' Ljava/lang/String; = "username"

.field public static final 'FIELD_WORKID' Ljava/lang/String; = "workid"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_user"

.field public static final 'TAG' Ljava/lang/String; = "UserInfo"

.method static <clinit>()V
bipush 35
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "fid"
aastore
dup
iconst_2
ldc "unitid"
aastore
dup
iconst_3
ldc "uap_uid"
aastore
dup
iconst_4
ldc "username"
aastore
dup
iconst_5
ldc "nickname"
aastore
dup
bipush 6
ldc "signature"
aastore
dup
bipush 7
ldc "updatetime"
aastore
dup
bipush 8
ldc "joindate"
aastore
dup
bipush 9
ldc "gender"
aastore
dup
bipush 10
ldc "telephone"
aastore
dup
bipush 11
ldc "mobilehone"
aastore
dup
bipush 12
ldc "email"
aastore
dup
bipush 13
ldc "depts"
aastore
dup
bipush 14
ldc "note"
aastore
dup
bipush 15
ldc "workid"
aastore
dup
bipush 16
ldc "type"
aastore
dup
bipush 17
ldc "duty"
aastore
dup
bipush 18
ldc "isactive"
aastore
dup
bipush 19
ldc "sysavatar"
aastore
dup
bipush 20
ldc "unitname"
aastore
dup
bipush 21
ldc "birthday"
aastore
dup
bipush 22
ldc "blood"
aastore
dup
bipush 23
ldc "site"
aastore
dup
bipush 24
ldc "description"
aastore
dup
bipush 25
ldc "fax"
aastore
dup
bipush 26
ldc "addr"
aastore
dup
bipush 27
ldc "usercount"
aastore
dup
bipush 28
ldc "postcode"
aastore
dup
bipush 29
ldc "spell1"
aastore
dup
bipush 30
ldc "spell2"
aastore
dup
bipush 31
ldc "studentid"
aastore
dup
bipush 32
ldc "contact_open"
aastore
dup
bipush 33
ldc "province"
aastore
dup
bipush 34
ldc "city"
aastore
putstatic com/nd/android/u/contact/db/table/OapUserTable/TABLE_COLUMNS [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "UserInfo"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/product/android/commonInterface/contact/OapUser
dup
invokespecial com/product/android/commonInterface/contact/OapUser/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setFid(J)V
aload 1
aload 0
aload 0
ldc "depts"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setDepts(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "email"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setEmail(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "gender"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setGender(I)V
aload 1
aload 0
aload 0
ldc "joindate"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setJoindate(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "mobilehone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setMobilehone(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "nickname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setNickname(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "signature"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setSignature(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "telephone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setTelephone(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "uap_uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
invokevirtual com/product/android/commonInterface/contact/OapUser/setUap_uid(J)V
aload 1
aload 0
aload 0
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setUpdatetime(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "unitid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitid(I)V
aload 1
aload 0
aload 0
ldc "note"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setNote(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setUsername(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "workid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setWorkid(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "workid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setWorkid(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setType(I)V
aload 1
aload 0
aload 0
ldc "duty"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setDuty(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "isactive"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setIsactive(I)V
aload 1
aload 0
aload 0
ldc "sysavatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setSysavatar(I)V
aload 1
aload 0
aload 0
ldc "unitname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitName(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "birthday"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setBirthday(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "site"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setSite(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "description"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setDescription(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "fax"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setFax(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "addr"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setAddress(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "postcode"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setPostcode(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "usercount"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setUsercount(I)V
aload 1
aload 0
aload 0
ldc "spell1"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setSpell1(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "spell2"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setSpell2(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "studentid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setStudentid(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "contact_open"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setContactOpen(I)V
aload 1
aload 0
aload 0
ldc "province"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setProvince(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "city"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setCity(Ljava/lang/String;)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
