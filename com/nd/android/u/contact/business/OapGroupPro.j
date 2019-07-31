.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/OapGroupPro
.super java/lang/Object
.inner class inner com/nd/android/u/contact/business/OapGroupPro$1
.inner class inner com/nd/android/u/contact/business/OapGroupPro$2
.inner class inner com/nd/android/u/contact/business/OapGroupPro$3

.field private static 'instance' Lcom/nd/android/u/contact/business/OapGroupPro;

.method static <clinit>()V
new com/nd/android/u/contact/business/OapGroupPro
dup
invokespecial com/nd/android/u/contact/business/OapGroupPro/<init>()V
putstatic com/nd/android/u/contact/business/OapGroupPro/instance Lcom/nd/android/u/contact/business/OapGroupPro;
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

.method static synthetic access$000(Lcom/nd/android/u/contact/business/OapGroupPro;Lcom/product/android/commonInterface/contact/OapGroup;JJ)V
aload 0
aload 1
lload 2
lload 4
invokespecial com/nd/android/u/contact/business/OapGroupPro/joinGroupBySelf(Lcom/product/android/commonInterface/contact/OapGroup;JJ)V
return
.limit locals 6
.limit stack 6
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
getstatic com/nd/android/u/contact/business/OapGroupPro/instance Lcom/nd/android/u/contact/business/OapGroupPro;
areturn
.limit locals 0
.limit stack 1
.end method

.method private joinGroupBySelf(Lcom/product/android/commonInterface/contact/OapGroup;JJ)V
aload 1
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroup/setFalg(I)V
aload 1
lload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 6
aload 6
ifnull L0
aload 6
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L0
aload 6
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 6
aload 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setUid(J)V
aload 6
lload 4
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
aload 6
lload 2
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 2
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
pop
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131076
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/groupLoginManagerLoginInitFixGroup(Ljava/lang/String;I)V
L0:
return
.limit locals 7
.limit stack 3
.end method

.method public addDiscussion(Lcom/product/android/commonInterface/contact/OapGroup;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 1
ifnonnull L0
aload 1
areturn
L0:
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/initEmptyGroups()V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDiscussionGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L1
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lcmp
ifne L2
aload 1
areturn
L3:
aload 2
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
aload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/groupLoginManagerLoginInitFixGroup(Ljava/lang/String;I)V
aload 1
areturn
.limit locals 4
.limit stack 4
.end method

.method public addGroup(Lcom/product/android/commonInterface/contact/OapGroup;)Lcom/product/android/commonInterface/contact/OapGroup;
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/initEmptyGroups()V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L0
aload 2
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L0:
aload 1
ifnull L1
aload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/groupLoginManagerLoginInitFixGroup(Ljava/lang/String;I)V
L1:
aload 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public agreeAddGroupFromIMS(JJI)V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 7
aload 7
astore 6
aload 7
ifnonnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
L0:
aconst_null
astore 7
iconst_0
ifne L1
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 8
aload 8
ifnull L2
aload 8
astore 7
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lconst_0
lcmp
ifne L1
L2:
return
L1:
aload 6
aload 7
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L3
aload 7
ifnull L3
aload 7
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroup/setFalg(I)V
aload 7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 7
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 8
aload 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setUid(J)V
aload 8
lload 3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 8
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 8
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131076
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "GROUP_CHANGE"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
L3:
aload 6
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 8
L4:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lcmp
ifne L4
return
L5:
aload 6
aload 7
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L2
aload 6
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 9
.limit stack 4
.end method

.method public agreeAddGroupMemberFromIMS(JJI)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 6
aload 6
ifnull L0
aload 6
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroup/setFalg(I)V
aload 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 7
aload 7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setUid(J)V
aload 7
lload 3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 7
aload 6
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 7
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
L0:
return
.limit locals 8
.limit stack 3
.end method

.method public createGroup(JLjava/lang/String;Ljava/lang/String;I)Lcom/product/android/commonInterface/contact/OapGroup;
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
astore 6
aload 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
aload 6
lload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGid(J)V
aload 6
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
aload 6
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupname(Ljava/lang/String;)V
aload 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCreatorid(J)V
aload 6
iload 5
invokevirtual com/product/android/commonInterface/contact/OapGroup/setJoinperm(I)V
aload 6
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/setIntroduction(Ljava/lang/String;)V
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 3
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 3
lload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
aload 3
iconst_3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 3
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/initEmptyGroups()V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 6
areturn
.limit locals 7
.limit stack 3
.end method

.method public discussionUserQuitFromIMS(JJ)V
lload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 1
iconst_3
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroup(JI)Z 3
pop
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelation(JJ)Z 4
pop
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDiscussionOapGroups()Lcom/nd/android/u/contact/dataStructure/OapGroups;
astore 6
aload 6
ifnonnull L1
L2:
return
L1:
aload 6
ifnull L2
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
ifnull L2
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
astore 6
aload 6
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L3:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 8
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 1
lcmp
ifne L3
aload 6
aload 8
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
iconst_1
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerLogoutFixGroup(Ljava/lang/String;IZ)V
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
lload 1
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyRemoveGroup(J)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "GROUP_CHANGE"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
return
L0:
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDiscussionOapGroups()Lcom/nd/android/u/contact/dataStructure/OapGroups;
astore 6
aload 6
ifnull L2
aload 6
ifnull L2
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
ifnull L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
astore 8
aload 8
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 9
L4:
aload 9
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 9
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 10
aload 10
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 1
lcmp
ifne L4
aload 0
aload 10
invokevirtual com/nd/android/u/contact/business/OapGroupPro/getGroupMemberList(Lcom/product/android/commonInterface/contact/OapGroup;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 5
aload 10
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGMemberList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 10
L6:
aload 10
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 10
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
lload 3
lcmp
ifne L6
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
lload 3
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelation(JJ)Z 4
pop
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyGroupMemberRefreshStatus()V
iload 5
iconst_2
if_icmpne L4
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 1
iconst_3
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroup(JI)Z 3
pop
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelation(JJ)Z 4
pop
aload 6
ifnull L4
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
ifnull L4
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 10
L7:
aload 10
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 10
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 11
aload 11
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 1
lcmp
ifne L7
aload 7
aload 11
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
iconst_1
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerLogoutFixGroup(Ljava/lang/String;IZ)V
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
lload 1
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyRemoveGroup(J)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "GROUP_CHANGE"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
goto L4
L5:
aload 8
ifnull L2
aload 7
invokevirtual java/util/ArrayList/size()I
ifle L2
aload 8
aload 7
invokeinterface java/util/List/removeAll(Ljava/util/Collection;)Z 1
pop
return
.limit locals 12
.limit stack 5
.end method

.method public getGroupMemberList(Lcom/product/android/commonInterface/contact/OapGroup;)Ljava/util/List;
.signature "(Lcom/product/android/commonInterface/contact/OapGroup;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;"
aconst_null
astore 2
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
tableswitch 0
L1
L2
L3
L1
L1
default : L4
L4:
aload 2
astore 3
aload 2
ifnonnull L5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
L5:
aload 1
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGMemberList(Ljava/util/ArrayList;)V
aload 3
areturn
L2:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
invokestatic com/nd/android/u/contact/business/DepartGroupPro/getInstance()Lcom/nd/android/u/contact/business/DepartGroupPro;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getDeptId()I
aload 2
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getDepartGroupMember(JILjava/util/List;)V
goto L4
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L6
invokestatic com/nd/android/u/contact/business/DepartGroupPro/getInstance()Lcom/nd/android/u/contact/business/DepartGroupPro;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getClassid()I
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCategory()I
aload 2
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getClassGroupMember(IILjava/util/List;)V
goto L4
L6:
invokestatic com/nd/android/u/contact/business/DepartGroupPro/getInstance()Lcom/nd/android/u/contact/business/DepartGroupPro;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getClassid()I
aload 2
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getXYClassGroupMember(JILjava/util/List;)V
goto L4
L1:
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
checkcast java/util/ArrayList
astore 2
goto L4
.limit locals 4
.limit stack 5
.end method

.method public getOapGroup(J)Lcom/product/android/commonInterface/contact/OapGroup;
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 3
aload 3
ifnull L0
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 4
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 1
lcmp
ifne L1
aload 4
areturn
L0:
aconst_null
areturn
.limit locals 5
.limit stack 4
.end method

.method public groupAddMemberFromIMS(Ljava/lang/String;IJJ)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 3
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 1
lload 5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L2
lload 5
lconst_0
lcmp
ifne L3
L2:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 3
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 1
aload 1
ifnull L4
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 3
lcmp
ifne L4
aload 0
aload 1
lload 5
lload 3
invokespecial com/nd/android/u/contact/business/OapGroupPro/joinGroupBySelf(Lcom/product/android/commonInterface/contact/OapGroup;JJ)V
return
L4:
invokestatic com/nd/android/u/contact/business/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business/GroupCacheManager;
lload 3
new com/nd/android/u/contact/business/OapGroupPro$1
dup
aload 0
lload 5
lload 3
invokespecial com/nd/android/u/contact/business/OapGroupPro$1/<init>(Lcom/nd/android/u/contact/business/OapGroupPro;JJ)V
invokevirtual com/nd/android/u/contact/business/GroupCacheManager/loadGroup(JLcom/nd/android/u/contact/cache/ProfileGroupCallback;)V
return
L3:
aload 1
ifnull L1
lload 5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L1
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L5:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 3
lcmp
ifne L5
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 7
aload 7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setUid(J)V
aload 7
lload 3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
aload 7
lload 5
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 5
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
pop
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 7
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131076
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
goto L5
.limit locals 8
.limit stack 10
.end method

.method public groupAuthUpdateFromIMS(Ljava/lang/String;JI)Ljava/lang/String;
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 5
aconst_null
astore 7
aconst_null
astore 1
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 8
aload 8
ifnull L1
aload 8
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 9
L2:
aload 1
astore 7
aload 9
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 9
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 8
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 5
lcmp
ifne L2
aload 0
aload 8
invokevirtual com/nd/android/u/contact/business/OapGroupPro/getGroupMemberList(Lcom/product/android/commonInterface/contact/OapGroup;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L2
aload 8
astore 7
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGMemberList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 10
L3:
aload 7
astore 1
aload 10
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 10
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 1
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
lload 2
lcmp
ifne L4
iload 4
lookupswitch
2 : L5
8 : L6
16 : L7
default : L8
L8:
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/updateGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Z 1
pop
goto L3
L5:
aload 1
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
goto L8
L6:
aload 1
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
goto L8
L7:
aload 1
iconst_3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
aload 8
lload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCreatorid(J)V
aload 8
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setManager(Lcom/product/android/commonInterface/contact/OapGroupRelation;)V
goto L8
L4:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGrade()I
iconst_3
if_icmpne L3
iload 4
bipush 16
if_icmpne L3
aload 1
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/updateGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Z 1
pop
goto L3
L1:
lload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L9
aload 7
ifnull L9
iload 4
lookupswitch
2 : L10
8 : L11
16 : L12
default : L13
L13:
aconst_null
areturn
L10:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/u_not_be_group_manager I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
aastore
dup
iconst_1
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L11:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/u_r_group_manager_now I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
aastore
dup
iconst_1
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L12:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/u_r_group_leader I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
aastore
dup
iconst_1
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L9:
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131076
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
aconst_null
areturn
.limit locals 11
.limit stack 6
.end method

.method public groupDeleteMemberFromIMS(Ljava/lang/String;IJJ)Ljava/lang/String;
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 3
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 1
aload 1
ifnull L1
lload 5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L2
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 3
lcmp
ifne L3
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 7
aload 7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setUid(J)V
aload 7
lload 3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
aload 7
lload 5
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 7
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setType(I)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
lload 5
lload 3
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelation(JJ)Z 4
pop
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131076
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
goto L3
L2:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L4:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 8
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 3
lcmp
ifne L4
aload 1
aload 8
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L5
aload 1
aload 8
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
L5:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 3
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updatetUnavailGroup(JI)Z 3
ifne L6
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 3
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroup(JI)Z 3
pop
L6:
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lload 3
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelation(JJ)Z 4
pop
ldc "DEL_MEMBER"
areturn
L1:
aconst_null
areturn
.limit locals 9
.limit stack 5
.end method

.method public groupDismessed(JI)V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 4
aload 4
ifnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L1:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 7
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 1
lcmp
ifne L1
aload 4
aload 7
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L2
aload 5
aload 7
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L2:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 1
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updatetUnavailGroup(JI)Z 3
ifne L3
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 1
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroup(JI)Z 3
pop
L3:
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelation(JJ)Z 4
pop
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
lload 1
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyRemoveGroup(J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iload 3
iconst_1
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerLogoutFixGroup(Ljava/lang/String;IZ)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/removeFixGroupSetType(Ljava/lang/String;)V
aload 4
ifnull L0
aload 5
invokevirtual java/util/ArrayList/size()I
ifle L0
aload 4
aload 5
invokeinterface java/util/List/removeAll(Ljava/util/Collection;)Z 1
pop
L0:
return
.limit locals 8
.limit stack 5
.end method

.method public groupInfoChange(Ljava/lang/String;Ljava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch java/lang/RuntimeException from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch java/lang/RuntimeException from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch java/lang/RuntimeException from L6 to L7 using L3
.catch org/json/JSONException from L8 to L9 using L2
.catch java/lang/RuntimeException from L8 to L9 using L3
.catch org/json/JSONException from L10 to L11 using L2
.catch java/lang/RuntimeException from L10 to L11 using L3
.catch org/json/JSONException from L12 to L13 using L2
.catch java/lang/RuntimeException from L12 to L13 using L3
.catch org/json/JSONException from L14 to L15 using L2
.catch java/lang/RuntimeException from L14 to L15 using L3
.catch org/json/JSONException from L16 to L17 using L2
.catch java/lang/RuntimeException from L16 to L17 using L3
.catch org/json/JSONException from L18 to L19 using L2
.catch java/lang/RuntimeException from L18 to L19 using L3
.catch org/json/JSONException from L20 to L21 using L2
.catch java/lang/RuntimeException from L20 to L21 using L3
.catch org/json/JSONException from L22 to L23 using L2
.catch java/lang/RuntimeException from L22 to L23 using L3
.catch org/json/JSONException from L24 to L25 using L2
.catch java/lang/RuntimeException from L24 to L25 using L3
.catch org/json/JSONException from L26 to L27 using L2
.catch java/lang/RuntimeException from L26 to L27 using L3
.catch org/json/JSONException from L28 to L29 using L2
.catch java/lang/RuntimeException from L28 to L29 using L3
.catch org/json/JSONException from L30 to L31 using L2
.catch java/lang/RuntimeException from L30 to L31 using L3
.catch org/json/JSONException from L32 to L33 using L2
.catch java/lang/RuntimeException from L32 to L33 using L3
.catch org/json/JSONException from L34 to L35 using L2
.catch java/lang/RuntimeException from L34 to L35 using L3
.catch org/json/JSONException from L36 to L37 using L2
.catch java/lang/RuntimeException from L36 to L37 using L3
.catch org/json/JSONException from L38 to L39 using L2
.catch java/lang/RuntimeException from L38 to L39 using L3
.catch org/json/JSONException from L40 to L41 using L2
.catch java/lang/RuntimeException from L40 to L41 using L3
aload 1
ifnull L42
aload 2
ifnonnull L43
L42:
return
L43:
aconst_null
astore 8
aconst_null
astore 10
aconst_null
astore 11
aload 8
astore 6
aload 10
astore 7
L0:
new org/json/JSONObject
dup
aload 2
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 12
L1:
aload 8
astore 6
aload 10
astore 7
L4:
aload 1
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 4
L5:
aconst_null
astore 2
aconst_null
astore 9
iconst_m1
istore 3
aload 11
astore 1
aload 8
astore 6
aload 10
astore 7
L6:
aload 12
ldc "notice"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L9
L7:
aload 8
astore 6
aload 10
astore 7
L8:
aload 12
ldc "notice"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
astore 1
L9:
aload 2
astore 8
aload 1
astore 6
aload 1
astore 7
L10:
aload 12
ldc "introduction"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L13
L11:
aload 1
astore 6
aload 1
astore 7
L12:
aload 12
ldc "introduction"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
astore 8
L13:
aload 1
astore 6
aload 1
astore 7
L14:
aload 12
ldc "gname"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L17
L15:
aload 1
astore 6
aload 1
astore 7
L16:
aload 12
ldc "gname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
astore 9
L17:
aload 1
astore 6
aload 1
astore 7
L18:
aload 12
ldc "joinperm"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L21
L19:
aload 1
astore 6
aload 1
astore 7
L20:
aload 12
ldc "joinperm"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 3
L21:
aload 1
astore 6
aload 1
astore 7
L22:
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 10
L23:
aload 1
astore 2
aload 10
ifnull L44
aload 1
astore 6
aload 1
astore 7
L24:
aload 10
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 10
L25:
aload 1
astore 2
aload 1
astore 6
aload 1
astore 7
L26:
aload 10
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L44
L27:
aload 1
astore 6
aload 1
astore 7
L28:
aload 10
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 2
L29:
aload 1
astore 6
aload 1
astore 7
L30:
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 4
lcmp
ifne L25
L31:
aload 1
ifnull L33
aload 1
astore 6
aload 1
astore 7
L32:
aload 2
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setNotice(Ljava/lang/String;)V
L33:
aload 8
ifnull L35
aload 1
astore 6
aload 1
astore 7
L34:
aload 2
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/setIntroduction(Ljava/lang/String;)V
L35:
aload 9
ifnull L37
aload 1
astore 6
aload 1
astore 7
L36:
aload 2
aload 9
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupname(Ljava/lang/String;)V
L37:
iload 3
iconst_m1
if_icmpeq L39
aload 1
astore 6
aload 1
astore 7
L38:
aload 2
iload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/setJoinperm(I)V
L39:
aload 1
astore 6
aload 1
astore 7
L40:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V 1
L41:
aload 1
astore 2
L44:
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
aload 2
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendGroupInfoChange(Ljava/lang/String;)V
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 6
astore 2
goto L44
L3:
astore 1
aload 1
invokevirtual java/lang/RuntimeException/printStackTrace()V
aload 7
astore 2
goto L44
.limit locals 13
.limit stack 4
.end method

.method public groupUserQuitFromIMS(JJ)V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 5
aload 5
ifnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L1:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 8
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 1
lcmp
ifne L1
lload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L2
aload 5
aload 8
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L3
aload 6
aload 8
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L3:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 1
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updatetUnavailGroup(JI)Z 3
ifne L4
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 1
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroup(JI)Z 3
pop
L4:
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
lload 3
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelation(JJ)Z 4
pop
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131076
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
lload 1
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyRemoveGroup(J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
iconst_1
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerLogoutFixGroup(Ljava/lang/String;IZ)V
aload 5
ifnull L0
aload 6
invokevirtual java/util/ArrayList/size()I
ifle L0
aload 5
aload 6
invokeinterface java/util/List/removeAll(Ljava/util/Collection;)Z 1
pop
L0:
return
L2:
aload 0
aload 8
invokevirtual com/nd/android/u/contact/business/OapGroupPro/getGroupMemberList(Lcom/product/android/commonInterface/contact/OapGroup;)Ljava/util/List;
ifnull L1
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGMemberList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 8
L5:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
lload 3
lcmp
ifne L5
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
lload 3
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelation(JJ)Z 4
pop
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131076
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
return
.limit locals 9
.limit stack 5
.end method

.method public isManager(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;J)Z
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
lload 2
lcmp
ifne L0
iconst_1
ireturn
L0:
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_1
if_icmpeq L1
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_2
if_icmpne L2
L1:
iconst_0
ireturn
L2:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getManagerList()Ljava/util/Iterator;
astore 1
aload 1
ifnull L3
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 4
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L4
L5:
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L6:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lload 2
lcmp
ifne L6
iconst_1
ireturn
L3:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public isManager(Lcom/product/android/commonInterface/contact/OapGroup;J)Z
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCreatorid()J
lload 2
lcmp
ifne L0
L1:
iconst_1
ireturn
L0:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGMemberList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L2
aload 0
aload 1
invokevirtual com/nd/android/u/contact/business/OapGroupPro/getGroupMemberList(Lcom/product/android/commonInterface/contact/OapGroup;)Ljava/util/List;
astore 1
L3:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 4
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
lload 2
lcmp
ifne L4
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGrade()I
iconst_2
if_icmpeq L1
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGrade()I
iconst_3
if_icmpne L4
iconst_1
ireturn
L2:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGMemberList()Ljava/util/ArrayList;
astore 1
goto L3
L5:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public joinDiscussionFromIMS(Ljava/lang/String;II)V
aload 1
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 4
invokestatic com/nd/android/u/contact/business/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business/GroupCacheManager;
lload 4
new com/nd/android/u/contact/business/OapGroupPro$3
dup
aload 0
invokespecial com/nd/android/u/contact/business/OapGroupPro$3/<init>(Lcom/nd/android/u/contact/business/OapGroupPro;)V
invokevirtual com/nd/android/u/contact/business/GroupCacheManager/loadDiscussion(JLcom/nd/android/u/contact/cache/ProfileGroupCallback;)V
return
.limit locals 6
.limit stack 6
.end method

.method public joinGroupFromIMS(Ljava/lang/String;II)V
iload 3
tableswitch 201
L0
default : L1
L1:
return
L0:
aload 1
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 4
invokestatic com/nd/android/u/contact/business/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business/GroupCacheManager;
lload 4
new com/nd/android/u/contact/business/OapGroupPro$2
dup
aload 0
invokespecial com/nd/android/u/contact/business/OapGroupPro$2/<init>(Lcom/nd/android/u/contact/business/OapGroupPro;)V
invokevirtual com/nd/android/u/contact/business/GroupCacheManager/loadGroup(JLcom/nd/android/u/contact/cache/ProfileGroupCallback;)V
return
.limit locals 6
.limit stack 6
.end method

.method public quitDiscussion(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 0
.end method

.method public quitGroup(Ljava/lang/String;II)V
.catch java/lang/NumberFormatException from L0 to L1 using L2
iload 3
ifne L1
L0:
aload 0
aload 1
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
iload 2
invokevirtual com/nd/android/u/contact/business/OapGroupPro/groupDismessed(JI)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/NumberFormatException/printStackTrace()V
return
.limit locals 4
.limit stack 4
.end method

.method public setGroupPara(I)V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
goto L1
L0:
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDiscussionGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L2
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
goto L3
L2:
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDepartGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L4
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L5:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
goto L5
L4:
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getClassGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L6
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L7:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
goto L7
L6:
return
.limit locals 3
.limit stack 2
.end method

.method public setReceiveGroupMsg(I)V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 3
aload 3
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerMASK2ReceiveLogRecGroup(Ljava/lang/String;I)V
goto L1
L0:
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDiscussionGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L2
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 3
aload 3
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerMASK2ReceiveLogRecGroup(Ljava/lang/String;I)V
goto L3
L2:
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDepartGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L4
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L5:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 3
aload 3
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerMASK2ReceiveLogRecGroup(Ljava/lang/String;I)V
goto L5
L4:
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getClassGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L6
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L7:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 3
aload 3
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerMASK2ReceiveLogRecGroup(Ljava/lang/String;I)V
goto L7
L6:
return
.limit locals 4
.limit stack 2
.end method

.method public setUnReceiveGroupMsg(I)V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
goto L1
L0:
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDiscussionGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L2
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
goto L3
L2:
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDepartGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L4
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L5:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
goto L5
L4:
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getClassGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L6
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L7:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
goto L7
L6:
return
.limit locals 3
.limit stack 2
.end method

.method public sortGroupMember(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)Ljava/util/List;
.signature "(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMember()Ljava/util/Iterator;
astore 9
aconst_null
astore 7
aload 7
astore 6
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_1
if_icmpeq L0
aload 7
astore 6
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_2
if_icmpeq L0
aload 7
astore 6
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_4
if_icmpeq L0
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getManagerList()Ljava/util/Iterator;
astore 6
L0:
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
lstore 4
aload 6
ifnull L1
L2:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 7
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lload 4
lcmp
ifne L3
aload 8
iconst_0
aload 7
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
goto L2
L3:
aload 8
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
L1:
aload 9
ifnull L4
L5:
aload 9
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 9
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 10
iconst_0
istore 3
iconst_0
istore 2
aload 6
astore 7
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_1
if_icmpeq L6
aload 6
astore 7
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_2
if_icmpeq L6
aload 6
astore 7
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_4
if_icmpeq L6
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getManagerList()Ljava/util/Iterator;
astore 7
L6:
aload 7
ifnull L7
L8:
iload 2
istore 3
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L7
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 10
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lcmp
ifne L8
iconst_1
istore 2
goto L8
L7:
aload 7
astore 6
iload 3
ifne L5
lload 4
aload 10
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lcmp
ifne L9
aload 8
iconst_0
aload 10
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
aload 7
astore 6
goto L5
L9:
aload 8
aload 10
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 7
astore 6
goto L5
L4:
aload 8
areturn
.limit locals 11
.limit stack 4
.end method

.method public switchReceiveGroupMsg(II)V
iload 1
ifne L0
aload 0
iload 1
invokevirtual com/nd/android/u/contact/business/OapGroupPro/setUnReceiveGroupMsg(I)V
return
L0:
iload 2
iconst_3
if_icmpne L1
aload 0
iload 1
invokevirtual com/nd/android/u/contact/business/OapGroupPro/setGroupPara(I)V
return
L1:
aload 0
iload 1
invokevirtual com/nd/android/u/contact/business/OapGroupPro/setReceiveGroupMsg(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public transferGroup(JJ)V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 5
aload 5
ifnull L0
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L1:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 6
aload 6
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 1
lcmp
ifne L1
aload 6
lload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCreatorid(J)V
aload 6
aconst_null
invokevirtual com/product/android/commonInterface/contact/OapGroup/setManager(Lcom/product/android/commonInterface/contact/OapGroupRelation;)V
aload 0
aload 6
invokevirtual com/nd/android/u/contact/business/OapGroupPro/getGroupMemberList(Lcom/product/android/commonInterface/contact/OapGroup;)Ljava/util/List;
ifnull L1
aload 6
lload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCreatorid(J)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V 1
aload 6
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGMemberList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 6
L2:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 7
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L3
aload 7
iconst_1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 7
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/updateGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Z 1
pop
goto L2
L3:
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
lload 3
lcmp
ifne L2
aload 7
iconst_3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 7
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/updateGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Z 1
pop
goto L2
L0:
return
.limit locals 8
.limit stack 4
.end method

.method public vaildateFriendGroupUpdate(JJJ)Z
iconst_0
istore 7
lload 1
lload 3
lcmp
ifeq L0
iconst_1
istore 7
L0:
iload 7
istore 8
iload 7
ifne L1
ldc com/nd/android/u/contact/dao/OapFriendGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapFriendGroupDao
invokeinterface com/nd/android/u/contact/dao/OapFriendGroupDao/searchFriendGroups()Ljava/util/List; 0
astore 9
aload 9
ifnull L2
iload 7
istore 8
aload 9
invokeinterface java/util/List/size()I 0
ifne L1
L2:
iconst_1
istore 8
L1:
iload 8
ireturn
.limit locals 10
.limit stack 4
.end method

.method public vaildateGroupUpdate(JJ)Z
iconst_0
istore 5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-groupUpdateTime"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
lconst_0
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
lstore 1
ldc "IM"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "localTime:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " groupUpdateTime:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
lload 1
lload 3
lcmp
ifeq L0
iconst_1
istore 5
L0:
iload 5
istore 6
iload 5
ifne L1
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/searchGroups(I)Ljava/util/List; 1
astore 7
aload 7
ifnull L2
iload 5
istore 6
aload 7
invokeinterface java/util/List/size()I 0
ifne L1
L2:
iconst_1
istore 6
L1:
iload 6
ireturn
.limit locals 8
.limit stack 4
.end method

.method public vaildateMyUpdate(JJJ)Z
.catch java/lang/Exception from L0 to L1 using L2
iconst_0
istore 7
lload 1
lload 3
lcmp
ifeq L3
L0:
invokestatic com/nd/android/u/contact/com/COapRequestProcessImpl/getInstance()Lcom/nd/android/u/contact/com/COapRequestProcessImpl;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
invokevirtual com/nd/android/u/contact/com/COapRequestProcessImpl/getBindUserInfo(J)Lcom/product/android/business/login/BindUser;
astore 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
aload 8
invokevirtual com/product/android/business/login/BindUser/updateUser(Lcom/product/android/business/login/BindUser;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
iconst_0
invokevirtual com/product/android/business/login/BindUser/setIsgetextinfo(I)V
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/LoginManagerGetBusinessInfo()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
lload 3
invokevirtual com/product/android/business/login/BindUser/setUpdatetime(J)V
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/forceUpdateUserInfo(Lcom/product/android/business/login/BindUser;)Z 1
pop
L1:
iconst_1
istore 7
L3:
iload 7
ireturn
L2:
astore 8
aload 8
invokevirtual java/lang/Exception/printStackTrace()V
ldc "IM"
ldc "get userinfo fail"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
iconst_0
invokevirtual com/product/android/business/login/BindUser/setIsgetextinfo(I)V
iconst_0
ireturn
.limit locals 9
.limit stack 4
.end method
