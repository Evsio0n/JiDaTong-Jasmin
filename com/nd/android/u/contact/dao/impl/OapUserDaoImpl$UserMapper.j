.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/dao/impl/OapUserDaoImpl$UserMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/product/android/commonInterface/contact/OapUser;>;"
.inner class public static final UserMapper inner com/nd/android/u/contact/dao/impl/OapUserDaoImpl$UserMapper outer com/nd/android/u/contact/dao/impl/OapUserDaoImpl

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/product/android/commonInterface/contact/OapUser;
new com/product/android/commonInterface/contact/OapUser
dup
invokespecial com/product/android/commonInterface/contact/OapUser/<init>()V
astore 3
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 3
aload 1
aload 1
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setFid(J)V
aload 3
aload 1
aload 1
ldc "depts"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setDepts(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "email"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setEmail(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "gender"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setGender(I)V
aload 3
aload 1
aload 1
ldc "joindate"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setJoindate(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "mobilehone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setMobilehone(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "nickname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setNickname(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "signature"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setSignature(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "telephone"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setTelephone(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "uap_uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
invokevirtual com/product/android/commonInterface/contact/OapUser/setUap_uid(J)V
aload 3
aload 1
aload 1
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setUpdatetime(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "unitid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitid(I)V
aload 3
aload 1
aload 1
ldc "note"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setNote(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setUsername(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "workid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setWorkid(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setType(I)V
aload 3
aload 1
aload 1
ldc "duty"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setDuty(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "isactive"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setIsactive(I)V
aload 3
aload 1
aload 1
ldc "sysavatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setSysavatar(I)V
aload 3
aload 1
aload 1
ldc "unitname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitName(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "birthday"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setBirthday(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "site"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setSite(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "description"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setDescription(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "fax"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setFax(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "addr"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setAddress(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "postcode"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setPostcode(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "spell1"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setSpell1(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "spell2"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setSpell2(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "studentid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setStudentid(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "contact_open"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setContactOpen(I)V
aload 3
aload 1
aload 1
ldc "province"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setProvince(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "city"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setCity(Ljava/lang/String;)V
L0:
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic mapRow(Landroid/database/Cursor;I)Ljava/lang/Object;
aload 0
aload 1
iload 2
invokevirtual com/nd/android/u/contact/dao/impl/OapUserDaoImpl$UserMapper/mapRow(Landroid/database/Cursor;I)Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 3
.limit stack 3
.end method
