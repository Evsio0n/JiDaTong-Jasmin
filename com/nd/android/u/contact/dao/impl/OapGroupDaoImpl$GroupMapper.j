.bytecode 50.0
.class final synchronized com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/product/android/commonInterface/contact/OapGroup;>;"
.inner class private static final GroupMapper inner com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper outer com/nd/android/u/contact/dao/impl/OapGroupDaoImpl

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/dao/impl/OapGroupDaoImpl$1;)V
aload 0
invokespecial com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/product/android/commonInterface/contact/OapGroup;
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
astore 3
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 3
aload 1
aload 1
ldc "gid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
i2l
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGid(J)V
aload 3
aload 1
aload 1
ldc "groupname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupname(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "avatar"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setAvatar(I)V
aload 3
aload 1
aload 1
ldc "imageUrl"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setImageUrl(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "introduction"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setIntroduction(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "notice"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setNotice(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "creatorid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCreatorid(J)V
aload 3
aload 1
aload 1
ldc "joinerm"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setJoinperm(I)V
aload 3
aload 1
aload 1
ldc "type"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
aload 3
aload 1
aload 1
ldc "falg"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setFalg(I)V
aload 3
aload 1
aload 1
ldc "catagory"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCategory(I)V
aload 3
aload 1
aload 1
ldc "spell1"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setSpell1(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "spell2"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setSpell2(Ljava/lang/String;)V
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
invokevirtual com/nd/android/u/contact/dao/impl/OapGroupDaoImpl$GroupMapper/mapRow(Landroid/database/Cursor;I)Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 3
.limit stack 3
.end method
