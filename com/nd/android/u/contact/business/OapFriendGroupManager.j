.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/OapFriendGroupManager
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/contact/business/OapFriendGroupManager;

.method static <clinit>()V
new com/nd/android/u/contact/business/OapFriendGroupManager
dup
invokespecial com/nd/android/u/contact/business/OapFriendGroupManager/<init>()V
putstatic com/nd/android/u/contact/business/OapFriendGroupManager/instance Lcom/nd/android/u/contact/business/OapFriendGroupManager;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business/OapFriendGroupManager;
getstatic com/nd/android/u/contact/business/OapFriendGroupManager/instance Lcom/nd/android/u/contact/business/OapFriendGroupManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public saveFriendGroupsToDB(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;>;)V"
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapFriendGroup
astore 2
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/insertFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)J 1
pop2
goto L2
.limit locals 3
.limit stack 2
.end method

.method public searchFriend(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Ljava/lang/Long;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/searchFriendRelation()Ljava/util/List; 0
astore 4
aload 4
ifnull L0
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/FriendRelation
astore 5
aload 5
ifnull L1
aload 3
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/FriendRelation/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L1
L0:
aload 3
areturn
.limit locals 6
.limit stack 3
.end method

.method public searchFriendByGender(JI)Ljava/util/ArrayList;
.signature "(JI)Ljava/util/ArrayList<Ljava/lang/Long;>;"
iload 3
iconst_m1
if_icmpne L0
aload 0
lload 1
invokevirtual com/nd/android/u/contact/business/OapFriendGroupManager/searchFriend(J)Ljava/util/ArrayList;
astore 4
L1:
aload 4
areturn
L0:
aload 0
lload 1
invokevirtual com/nd/android/u/contact/business/OapFriendGroupManager/searchFriend(J)Ljava/util/ArrayList;
astore 6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 5
astore 4
aload 6
ifnull L1
aload 5
astore 4
aload 6
invokevirtual java/util/ArrayList/size()I
ifeq L1
aload 6
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 6
L2:
aload 5
astore 4
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 1
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getGender()I
iload 3
if_icmpne L2
aload 5
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L2
aload 5
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L2
.limit locals 7
.limit stack 3
.end method
