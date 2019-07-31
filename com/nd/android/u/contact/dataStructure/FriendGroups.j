.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/FriendGroups
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String;

.field public static 'comparator' Lcom/nd/android/u/contact/util/ComparatorUser;

.field private 'friendGroupList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;"

.field private 'mUid' J

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/contact/dataStructure/FriendGroups/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(J)V
aload 0
lload 1
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getFriendGroupList()Ljava/util/List; 0
invokespecial com/nd/android/u/contact/dataStructure/FriendGroups/<init>(JLjava/util/List;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(JLjava/util/List;)V
.signature "(JLjava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/FriendGroups/mUid J
aload 0
aload 3
putfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokestatic com/nd/android/u/contact/util/ComparatorUser/getInstance()Lcom/nd/android/u/contact/util/ComparatorUser;
putstatic com/nd/android/u/contact/dataStructure/FriendGroups/comparator Lcom/nd/android/u/contact/util/ComparatorUser;
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/addRecentUsers()V
return
.limit locals 4
.limit stack 3
.end method

.method private validateFriendGroup()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 3
.end method

.method public final addFriend(IJLcom/product/android/commonInterface/contact/OapUser;)V
lload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
L1:
return
L0:
aload 0
invokespecial com/nd/android/u/contact/dataStructure/FriendGroups/validateFriendGroup()Z
pop
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifeq L1
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L2:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
astore 6
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
ifnull L2
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L2
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
lload 2
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/deleteFriendRelation(J)Z 2
pop
goto L2
L3:
aload 4
astore 5
aload 4
ifnonnull L4
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 2
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 5
L4:
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L5:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
astore 6
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
iload 1
if_icmpne L5
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
ifnonnull L6
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setFriendList(Ljava/util/List;)V
L6:
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L7
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L7:
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
new com/nd/android/u/contact/dataStructure/FriendRelation
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lload 2
iload 1
ldc ""
invokespecial com/nd/android/u/contact/dataStructure/FriendRelation/<init>(JJILjava/lang/String;)V
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/insertFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)J 1
pop2
aload 5
ifnull L5
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 5
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertFriend(Lcom/product/android/commonInterface/contact/OapUser;)J 1
pop2
goto L5
.limit locals 7
.limit stack 9
.end method

.method public final addFriendGroup(ILjava/lang/String;)V
new com/nd/android/u/contact/dataStructure/OapFriendGroup
dup
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/mUid J
iload 1
aload 2
invokespecial com/nd/android/u/contact/dataStructure/OapFriendGroup/<init>(JILjava/lang/String;)V
astore 2
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setUid(J)V
aload 0
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/addFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V
return
.limit locals 3
.limit stack 6
.end method

.method public final addFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V
aload 0
invokespecial com/nd/android/u/contact/dataStructure/FriendGroups/validateFriendGroup()Z
pop
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
new com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup
dup
aload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FriendImpl/FriendGroup/<init>(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/insertFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)J 1
pop2
return
.limit locals 2
.limit stack 4
.end method

.method public final addRecentUsers()V
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
L0:
new com/nd/android/u/contact/dataStructure/OapFriendGroup
dup
invokespecial com/nd/android/u/contact/dataStructure/OapFriendGroup/<init>()V
astore 1
aload 1
bipush -2
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setFgid(I)V
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/recent_contact I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setName(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public final containsGroupTitle(Ljava/lang/String;)Z
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
aload 1
ifnonnull L0
iconst_0
istore 2
L4:
aload 0
monitorexit
iload 2
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
istore 2
L3:
iload 2
ifeq L1
iconst_1
istore 2
goto L4
L5:
iconst_0
istore 2
goto L4
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 4
.limit stack 2
.end method

.method public final deleteFriend(J)V
aload 0
invokespecial com/nd/android/u/contact/dataStructure/FriendGroups/validateFriendGroup()Z
pop
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L0
L1:
return
L0:
aload 0
lload 1
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/findFgidByFid(J)I
istore 4
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L2:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
astore 6
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
iload 4
if_icmpne L2
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
ifnull L1
iconst_0
istore 3
L3:
iload 3
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L2
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lload 1
lcmp
ifne L4
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
iload 3
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/deleteFriendRelation(J)Z 2
pop
return
L4:
iload 3
iconst_1
iadd
istore 3
goto L3
.limit locals 7
.limit stack 4
.end method

.method public final deleteFriendGroup(I)V
aload 0
invokespecial com/nd/android/u/contact/dataStructure/FriendGroups/validateFriendGroup()Z
pop
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
iload 1
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/deleteFriendGroup(I)Z 1
pop
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L2:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
astore 5
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
iload 1
if_icmpne L2
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
aload 5
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
ifnonnull L3
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifeq L1
L3:
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_2
if_icmplt L1
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
iconst_1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/addFids(Ljava/util/List;)V
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L4:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 2
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 5
new com/nd/android/u/contact/dataStructure/FriendRelation
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
iconst_0
ldc ""
invokespecial com/nd/android/u/contact/dataStructure/FriendRelation/<init>(JJILjava/lang/String;)V
astore 5
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
aload 5
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/updateFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)V 1
goto L4
.limit locals 6
.limit stack 8
.end method

.method public final findFgidByFid(J)I
iconst_m1
istore 4
iload 4
istore 3
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L1:
iload 4
istore 3
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
astore 6
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
iconst_m1
if_icmpeq L1
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
bipush -2
if_icmpeq L1
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
ifnull L1
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L2:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lload 1
lcmp
ifne L2
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
istore 3
L0:
iload 3
ireturn
.limit locals 8
.limit stack 4
.end method

.method public final getAllFids()[J
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/getAllFriends()Ljava/util/List;
astore 3
aload 3
invokeinterface java/util/List/size()I 0
newarray long
astore 2
iconst_0
istore 1
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
iload 1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lastore
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public final getAllFriends()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/lang/Long;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
astore 3
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
iconst_m1
if_icmpeq L1
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
bipush -2
if_icmpne L1
aload 1
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
goto L1
L0:
aload 1
areturn
.limit locals 4
.limit stack 2
.end method

.method public final getCountFriend()I
iconst_0
istore 2
iconst_0
istore 1
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
iload 1
istore 2
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
astore 4
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
iconst_m1
if_icmpeq L1
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
bipush -2
if_icmpne L1
iload 1
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getChildSize()I
iadd
istore 1
goto L1
L0:
iload 2
ireturn
.limit locals 5
.limit stack 2
.end method

.method public final getFriendGroupByGid(I)Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
astore 3
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
iconst_m1
if_icmpeq L1
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
bipush -2
if_icmpeq L1
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
ifnull L1
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
iload 1
if_icmpne L1
aload 3
areturn
L0:
aconst_null
areturn
.limit locals 4
.limit stack 2
.end method

.method public final getFriendGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
areturn
.limit locals 1
.limit stack 3
.end method

.method public final getUid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final moveFriend(IIJ)V
aload 0
invokespecial com/nd/android/u/contact/dataStructure/FriendGroups/validateFriendGroup()Z
pop
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L2:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
astore 6
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
ifnull L1
iconst_0
istore 1
L4:
iload 1
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L2
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lload 3
lcmp
ifne L5
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
iload 1
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
goto L2
L5:
iload 1
iconst_1
iadd
istore 1
goto L4
L3:
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L6:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
astore 5
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
iload 2
if_icmpne L6
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
ifnonnull L7
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setFriendList(Ljava/util/List;)V
L7:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 3
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 6
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
lload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/addFid(J)V
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
new com/nd/android/u/contact/dataStructure/FriendRelation
dup
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getUid()J
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
iload 2
ldc ""
invokespecial com/nd/android/u/contact/dataStructure/FriendRelation/<init>(JJILjava/lang/String;)V
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/updateFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)V 1
return
.limit locals 7
.limit stack 9
.end method

.method public final setFriendGroupList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public final setUid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/FriendGroups/mUid J
return
.limit locals 3
.limit stack 3
.end method

.method public final updateFriend(IJLjava/lang/String;)V
aload 0
invokespecial com/nd/android/u/contact/dataStructure/FriendGroups/validateFriendGroup()Z
pop
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 2
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 5
aload 5
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/setNote(Ljava/lang/String;)V
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 5
invokeinterface com/nd/android/u/contact/dao/OapUserDao/updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V 1
return
.limit locals 6
.limit stack 3
.end method

.method public final updateFriend(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
invokespecial com/nd/android/u/contact/dataStructure/FriendGroups/validateFriendGroup()Z
pop
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 1
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V 1
return
.limit locals 2
.limit stack 4
.end method

.method public final updateFriendGroupName(ILjava/lang/String;)V
aload 0
invokespecial com/nd/android/u/contact/dataStructure/FriendGroups/validateFriendGroup()Z
pop
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/FriendGroups/friendGroupList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
astore 4
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
iload 1
if_icmpne L2
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setName(Ljava/lang/String;)V
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/updateFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V 1
goto L2
.limit locals 5
.limit stack 2
.end method
