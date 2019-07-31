.bytecode 50.0
.class final synchronized com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl$BirthdayRemindUserMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;>;"
.inner class private static final BirthdayRemindUserMapper inner com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl$BirthdayRemindUserMapper outer com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl$1;)V
aload 0
invokespecial com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl$BirthdayRemindUserMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;
new com/nd/android/u/contact/dataStructure/BirthdayRemindUser
dup
invokespecial com/nd/android/u/contact/dataStructure/BirthdayRemindUser/<init>()V
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
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setFid(J)V
aload 3
aload 1
aload 1
ldc "usertype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setUserType(I)V
aload 3
aload 1
aload 1
ldc "username"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setUserName(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "birthday"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setBirthday(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "workid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setWorkId(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "description"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/BirthdayRemindUser/setDescription(Ljava/lang/String;)V
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
invokevirtual com/nd/android/u/contact/dao/impl/BirthdayRemindHistoryDaoImpl$BirthdayRemindUserMapper/mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/BirthdayRemindUser;
areturn
.limit locals 3
.limit stack 3
.end method
