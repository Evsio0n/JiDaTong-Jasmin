.bytecode 50.0
.class final synchronized com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl$FriendRelationMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/nd/android/u/contact/dataStructure/FriendRelation;>;"
.inner class private static final FriendRelationMapper inner com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl$FriendRelationMapper outer com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/dao/impl/FriendRelationDaoImpl$1;)V
aload 0
invokespecial com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl$FriendRelationMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/FriendRelation;
new com/nd/android/u/contact/dataStructure/FriendRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/FriendRelation/<init>()V
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
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/setFgid(I)V
aload 3
aload 1
aload 1
ldc "fid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/setFid(J)V
aload 3
aload 1
aload 1
ldc "note"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/setNoTe(Ljava/lang/String;)V
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
invokevirtual com/nd/android/u/contact/dao/impl/FriendRelationDaoImpl$FriendRelationMapper/mapRow(Landroid/database/Cursor;I)Lcom/nd/android/u/contact/dataStructure/FriendRelation;
areturn
.limit locals 3
.limit stack 3
.end method
