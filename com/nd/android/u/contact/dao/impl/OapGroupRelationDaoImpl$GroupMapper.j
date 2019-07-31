.bytecode 50.0
.class final synchronized com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl$GroupMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;"
.inner class private static final GroupMapper inner com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl$GroupMapper outer com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl$1;)V
aload 0
invokespecial com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl$GroupMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/product/android/commonInterface/contact/OapGroupRelation;
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
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
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 3
aload 1
aload 1
ldc "gid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
aload 3
aload 1
aload 1
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setUpdatetime(J)V
aload 3
aload 1
aload 1
ldc "nickname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setNickname(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "grade"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
aload 3
aload 1
aload 1
ldc "sex"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setSex(I)V
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
invokevirtual com/nd/android/u/contact/dao/impl/OapGroupRelationDaoImpl$GroupMapper/mapRow(Landroid/database/Cursor;I)Lcom/product/android/commonInterface/contact/OapGroupRelation;
areturn
.limit locals 3
.limit stack 3
.end method
