.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/OapFriendGroupPro
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/contact/business/OapFriendGroupPro;

.field private 'friendGroupCache' Ljava/util/HashMap; signature "Ljava/util/HashMap<Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;Ljava/util/List<Ljava/lang/Long;>;>;"

.method static <clinit>()V
new com/nd/android/u/contact/business/OapFriendGroupPro
dup
invokespecial com/nd/android/u/contact/business/OapFriendGroupPro/<init>()V
putstatic com/nd/android/u/contact/business/OapFriendGroupPro/instance Lcom/nd/android/u/contact/business/OapFriendGroupPro;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/contact/business/OapFriendGroupPro/friendGroupCache Ljava/util/HashMap;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business/OapFriendGroupPro;
getstatic com/nd/android/u/contact/business/OapFriendGroupPro/instance Lcom/nd/android/u/contact/business/OapFriendGroupPro;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getFriendGroupListByDB(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;>;"
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/searchFriendGroups()Ljava/util/List; 0
astore 3
aload 3
ifnull L0
aload 3
invokeinterface java/util/List/size()I 0
ifle L0
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapFriendGroup
astore 5
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/searchFriendRelation(I)Ljava/util/List; 1
astore 7
aload 7
ifnull L1
aload 7
invokeinterface java/util/List/size()I 0
ifle L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 7
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L2:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 6
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/FriendRelation
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
L3:
aload 5
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/addFids(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/business/OapFriendGroupPro/friendGroupCache Ljava/util/HashMap;
aload 5
aload 6
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
goto L1
L0:
aload 3
areturn
.limit locals 8
.limit stack 3
.end method

.method public initFriendGroup(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;>;"
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/SynOapFriendGroupPro/getInstance()Lcom/nd/android/u/contact/business/SynOapFriendGroupPro;
lload 1
invokevirtual com/nd/android/u/contact/business/SynOapFriendGroupPro/loadOapFriendGroups(J)V
aload 0
lload 1
invokevirtual com/nd/android/u/contact/business/OapFriendGroupPro/getFriendGroupListByDB(J)Ljava/util/List;
areturn
.limit locals 3
.limit stack 3
.end method
