.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup
.super com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$1
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2

.field private static final 'serialVersionUID' J = -6544312903429493323L


.method public <init>(J)V
aload 0
lload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/<init>(J)V
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/setType(I)V
aload 0
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2
dup
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$2/<init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;)V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/obsData Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
aload 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/obsData Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/addGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;)J
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getCreatorIDByDB()J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;)Ljava/util/List;
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getManagerListByDB()Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getCreatorIDByDB()J
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L0
L1:
lconst_0
lreturn
L0:
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
iconst_1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
checkcast java/util/ArrayList
astore 2
aload 2
ifnull L1
aload 2
invokevirtual java/util/ArrayList/size()I
ifle L1
iconst_0
istore 1
L2:
iload 1
aload 2
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 2
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 3
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGrade()I
iconst_3
if_icmpne L3
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
lreturn
L3:
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 4
.limit stack 4
.end method

.method private getManagerListByDB()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
iconst_1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
checkcast java/util/ArrayList
astore 4
aload 4
ifnull L0
aload 4
invokevirtual java/util/ArrayList/size()I
ifgt L1
L0:
aconst_null
astore 2
L2:
aload 2
areturn
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 1
L3:
aload 3
astore 2
iload 1
aload 4
invokevirtual java/util/ArrayList/size()I
if_icmpge L2
aload 4
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 2
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 2
aload 2
ifnull L4
aload 3
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L4:
iload 1
iconst_1
iadd
istore 1
goto L3
.limit locals 5
.limit stack 4
.end method

.method public addMember(Ljava/lang/String;Ljava/util/Iterator;)Z
.signature "(Ljava/lang/String;Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L0
iconst_0
ireturn
L0:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L1
iconst_0
ireturn
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L2
L3:
aload 1
invokevirtual java/util/ArrayList/size()I
newarray long
astore 2
iconst_0
istore 3
L4:
iload 3
aload 1
invokevirtual java/util/ArrayList/size()I
if_icmpge L5
aload 2
iload 3
aload 1
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lastore
iload 3
iconst_1
iadd
istore 3
goto L4
L5:
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getChatGroupType()I
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getGroupKey()Ljava/lang/String;
aload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsGroupAddMember(ILjava/lang/String;[J)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
iconst_0
ireturn
L6:
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public addMemberByDB(Ljava/util/Iterator;)Z
.signature "(Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
aload 0
aload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/addMemberByDB(Ljava/util/Iterator;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public delMember(Ljava/lang/String;Ljava/util/Iterator;)Z
.signature "(Ljava/lang/String;Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L0
L1:
iconst_0
ireturn
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L2
L3:
aload 1
invokevirtual java/util/ArrayList/size()I
newarray long
astore 2
iconst_0
istore 3
L4:
iload 3
aload 1
invokevirtual java/util/ArrayList/size()I
if_icmpge L5
aload 2
iload 3
aload 1
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lastore
iload 3
iconst_1
iadd
istore 3
goto L4
L5:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
aload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/deleteGroupMember(JLjava/lang/Object;)Ljava/lang/String;
pop
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public delMemberByDB(Ljava/util/Iterator;)Z
.signature "(Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L0
L1:
iconst_0
ireturn
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L2
L3:
aload 0
aload 2
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/delMemberByDB(Ljava/util/Iterator;)Z
ifeq L1
aload 2
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L4:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L4
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroup(J)Z 2
pop
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getGroupKey()Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getChatGroupType()I
iconst_1
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerLogoutFixGroup(Ljava/lang/String;IZ)V
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/clearMsgNofifyType()V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2001
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
aload 0
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupState(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V
goto L4
L5:
iconst_1
ireturn
.limit locals 3
.limit stack 5
.end method

.method protected finalize()V
.throws java/lang/Throwable
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/finalize()V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/obsData Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
ifnull L0
aload 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/obsData Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public getCreatorID()J
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/creatorID J
lconst_0
lcmp
ifle L0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/creatorID J
lreturn
L0:
aload 0
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getCreatorIDByDB()J
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/creatorID J
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/creatorID J
lreturn
.limit locals 1
.limit stack 4
.end method

.method public getGID()J
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getIntroduction()Ljava/lang/String;
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getIntroduction()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getManagerList()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L0
L1:
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/listManager Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifgt L2
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getManagerListByDB()Ljava/util/List;
astore 1
aload 1
ifnull L1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/listManager Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/listManager Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L2:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/listManager Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
areturn
.limit locals 2
.limit stack 4
.end method

.method public getMember()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMember()Ljava/util/Iterator;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMsgNotifyType()I
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMsgNotifyType()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNotice()Ljava/lang/String;
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getNotice()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPermission()I
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L0
iconst_1
ireturn
L0:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 1
aload 1
ifnonnull L1
iconst_1
ireturn
L1:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinperm()I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public initGroup(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 0
.end method

.method public isManager(J)Z
lload 1
lconst_0
lcmp
ifle L0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L1
L0:
iconst_0
ireturn
L1:
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
iconst_1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
checkcast java/util/ArrayList
astore 4
aload 4
ifnull L2
aload 4
invokevirtual java/util/ArrayList/size()I
ifgt L3
L2:
iconst_0
ireturn
L3:
iconst_0
istore 3
L4:
iload 3
aload 4
invokevirtual java/util/ArrayList/size()I
if_icmpge L5
aload 4
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapGroupRelation
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
lload 1
lcmp
ifne L6
iconst_1
ireturn
L6:
iload 3
iconst_1
iadd
istore 3
goto L4
L5:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public loadGroup()Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lconst_0
lcmp
ifle L5
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L0
L5:
iconst_0
ireturn
L0:
new com/product/android/commonInterface/contact/OapGroup
dup
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getSupportGroupInfo(J)Lorg/json/JSONObject;
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>(Lorg/json/JSONObject;)V
astore 1
L1:
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
invokestatic com/nd/android/u/contact/business/SynOapGroupPro/getInstance()Lcom/nd/android/u/contact/business/SynOapGroupPro;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokevirtual com/nd/android/u/contact/business/SynOapGroupPro/getGroupMember(J)Ljava/util/List;
pop
aload 0
ldc ""
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/intro Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/name Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/announcement Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/listMember Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/listManager Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
lconst_0
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/creatorID J
L3:
iconst_1
ireturn
L2:
astore 1
L6:
iconst_0
ireturn
L4:
astore 1
goto L6
.limit locals 2
.limit stack 5
.end method

.method public quit(Ljava/lang/String;)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L0
L1:
iconst_0
ireturn
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getCreatorID()J
lcmp
ifne L2
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandDimssGroup(J)Ljava/lang/String;
astore 1
L3:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/clearMsgNofifyType()V
iconst_1
ireturn
L2:
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandQuitGroup(IJ)Ljava/lang/String;
astore 1
goto L3
.limit locals 2
.limit stack 4
.end method

.method public setIntroduction(Ljava/lang/String;Ljava/lang/String;)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
aload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendModifyIntroduction(JLjava/lang/String;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public setIntroductionByDB(Ljava/lang/String;)Z
aload 0
aload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/setIntroductionByDB(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public setMsgNotifyType(Ljava/lang/String;I)Z
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/setMsgNotifyType(Ljava/lang/String;I)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public setMsgNotifyTypeByDB(I)Z
aload 0
iload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/setMsgNotifyTypeByDB(I)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public setNotice(Ljava/lang/String;Ljava/lang/String;)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
aload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendModifyGroupNotice(JILjava/lang/String;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public setNoticeByDB(Ljava/lang/String;)Z
aload 0
aload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/setNoticeByDB(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public setPermission(Ljava/lang/String;I)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L0
L1:
iconst_0
ireturn
L0:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
iload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandSendModifyJoinperm(JI)V
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public setPermissionByDB(I)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L0
iconst_0
ireturn
L0:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 2
aload 2
ifnonnull L1
iconst_0
ireturn
L1:
aload 2
iload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setJoinperm(I)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V 1
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 1003
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public switchMemberRole(JI)Z
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
checkcast java/util/ArrayList
astore 8
aload 8
ifnull L0
aload 8
invokevirtual java/util/ArrayList/size()I
ifgt L1
L0:
iconst_0
ireturn
L1:
iconst_0
istore 4
iconst_0
istore 6
aload 8
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 8
L2:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 9
aload 9
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
lload 1
lcmp
ifne L4
iload 3
lookupswitch
2 : L5
8 : L6
16 : L7
default : L8
L8:
iload 6
istore 5
L9:
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 9
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/updateGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Z 1
pop
iload 5
istore 6
goto L2
L5:
aload 9
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGrade()I
istore 7
aload 9
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
iload 7
iconst_2
if_icmpeq L10
iload 6
istore 5
iload 7
iconst_3
if_icmpne L9
L10:
iconst_1
istore 4
iload 6
istore 5
goto L9
L6:
aload 9
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
iconst_1
istore 4
iload 6
istore 5
goto L9
L7:
aload 9
iconst_3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
aload 0
lload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/creatorID J
iconst_1
istore 4
iconst_1
istore 5
goto L9
L4:
aload 9
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGrade()I
iconst_3
if_icmpne L2
iload 3
bipush 16
if_icmpne L2
aload 9
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getUid()J
lload 1
lcmp
ifeq L2
aload 9
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 9
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/updateGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Z 1
pop
goto L2
L3:
iload 4
ifeq L11
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getManagerListByDB()Ljava/util/List;
astore 8
aload 8
ifnonnull L12
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/listManager Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L13:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 1002
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
L11:
iload 6
ifeq L14
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 1010
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
L14:
iconst_1
ireturn
L12:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/listManager Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/listManager Ljava/util/List;
aload 8
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
goto L13
.limit locals 10
.limit stack 4
.end method

.method public synGroup()Z
new java/lang/Thread
dup
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$1
dup
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup$1/<init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
iconst_1
ireturn
.limit locals 1
.limit stack 5
.end method

.method public transfer(Ljava/lang/String;J)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L0
L1:
iconst_0
ireturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
lload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendTransferGroup(Ljava/lang/String;IJ)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public transferByDB(J)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L9 to L10 using L2
lload 1
lconst_0
lcmp
ifle L11
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
lconst_0
lcmp
ifgt L0
L11:
iconst_0
ireturn
L0:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 3
aload 3
lload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCreatorid(J)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 3
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V 1
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
checkcast java/util/ArrayList
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 4
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L4
aload 4
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/updateGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Z 1
pop
L3:
goto L1
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
L4:
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
lload 1
lcmp
ifne L1
aload 4
iconst_3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/updateGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Z 1
pop
L5:
goto L1
L6:
aload 0
lload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/creatorID J
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/getManagerListByDB()Ljava/util/List;
astore 3
L7:
aload 3
ifnull L9
L8:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/listManager Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/listManager Ljava/util/List;
aload 3
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L9:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 1010
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/gid J
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
L10:
iconst_1
ireturn
.limit locals 5
.limit stack 4
.end method
