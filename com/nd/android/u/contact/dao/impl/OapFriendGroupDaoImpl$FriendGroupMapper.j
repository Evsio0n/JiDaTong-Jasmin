.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl$FriendGroupMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;>;"
.inner class public static final FriendGroupMapper inner com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl$FriendGroupMapper outer com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
new com/nd/android/u/contact/dataStructure/OapFriendGroup
dup
invokespecial com/nd/android/u/contact/dataStructure/OapFriendGroup/<init>()V
astore 3
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 3
aload 1
aload 1
ldc "fgid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setFgid(I)V
aload 3
aload 1
aload 1
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setName(Ljava/lang/String;)V
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
invokevirtual com/nd/android/u/contact/dao/impl/OapFriendGroupDaoImpl$FriendGroupMapper/mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
areturn
.limit locals 3
.limit stack 3
.end method
