.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/SynOapFriendGroupPro
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "SynOapFriendGroupPro"

.field private static 'instance' Lcom/nd/android/u/contact/business/SynOapFriendGroupPro;

.method static <clinit>()V
new com/nd/android/u/contact/business/SynOapFriendGroupPro
dup
invokespecial com/nd/android/u/contact/business/SynOapFriendGroupPro/<init>()V
putstatic com/nd/android/u/contact/business/SynOapFriendGroupPro/instance Lcom/nd/android/u/contact/business/SynOapFriendGroupPro;
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

.method public static getInstance()Lcom/nd/android/u/contact/business/SynOapFriendGroupPro;
getstatic com/nd/android/u/contact/business/SynOapFriendGroupPro/instance Lcom/nd/android/u/contact/business/SynOapFriendGroupPro;
areturn
.limit locals 0
.limit stack 1
.end method

.method public loadOapFriendGroups(J)V
.throws com/common/android/utils/http/HttpException
invokestatic java/lang/System/currentTimeMillis()J
pop2
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
iconst_m1
lload 1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/getAllFriendListMember(IJ)Ljava/util/List;
astore 3
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/deleteFriendGroups()Z 0
pop
invokestatic com/nd/android/u/contact/business/OapFriendGroupManager/getInstance()Lcom/nd/android/u/contact/business/OapFriendGroupManager;
aload 3
invokevirtual com/nd/android/u/contact/business/OapFriendGroupManager/saveFriendGroupsToDB(Ljava/util/List;)V
return
.limit locals 4
.limit stack 4
.end method

.method public loadOapFriends(Ljava/util/List;J)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;>;J)V"
.throws com/common/android/utils/http/HttpException
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapFriendGroup
astore 4
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setUid(J)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
aload 5
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
iconst_m1
lload 2
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/getFriendListMember(Ljava/util/List;IIJ)V
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/deleteFriendRelationByGroup(I)Z 1
pop
aload 5
ifnull L2
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L3:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 7
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 7
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertFriend(Lcom/product/android/commonInterface/contact/OapUser;)J 1
pop2
new com/nd/android/u/contact/dataStructure/FriendRelation
dup
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getUid()J
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getNote()Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/FriendRelation/<init>(JJILjava/lang/String;)V
astore 7
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
aload 7
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/insertFriendRelation(Lcom/nd/android/u/contact/dataStructure/FriendRelation;)J 1
pop2
goto L3
L2:
aload 4
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setFriendList(Ljava/util/List;)V
goto L1
L0:
return
.limit locals 8
.limit stack 8
.end method

.method public onlyLoadOapFriendGroups(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;>;"
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/getFriendList()Ljava/util/List;
astore 3
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/deleteFriendGroups()Z 0
pop
aload 3
ifnull L0
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
aload 5
lload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setUid(J)V
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
aload 5
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/insertFriendGroup(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)J 1
pop2
goto L1
L0:
aload 3
areturn
.limit locals 6
.limit stack 3
.end method
