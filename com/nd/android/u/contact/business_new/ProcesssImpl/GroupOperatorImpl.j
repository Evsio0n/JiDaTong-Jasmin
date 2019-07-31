.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$1
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$2
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$3
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$4

.field private 'gLoader' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;

.field private 'listCatagory' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;>;"

.field private 'obsLoad' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;

.field private 'obsState' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/gLoader Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
aload 0
aconst_null
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/listCatagory Ljava/util/List;
aload 0
aconst_null
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/obsState Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
aload 0
aconst_null
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/obsLoad Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;
aload 0
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$1
dup
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$1/<init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;)V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/obsState Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
aload 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/obsState Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/addGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
aload 0
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$2
dup
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$2/<init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;)V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/obsLoad Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;
aload 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/obsLoad Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/addGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;)V
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/listCatagory Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/listCatagory Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/gLoader Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
areturn
.limit locals 1
.limit stack 1
.end method

.method private clearAllGroup()V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelations()Z 0
pop
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/clearGroups()Z 0
pop
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/clear()V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/listCatagory Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method private setAllGroupMsgNotifyType(I)V
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/getGroupCategory()Ljava/util/Iterator;
astore 2
aload 2
ifnonnull L0
L1:
return
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
astore 3
aload 3
ifnull L0
aload 3
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getGroupList()Ljava/util/Iterator;
astore 3
aload 3
ifnull L0
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
astore 4
aload 4
ifnull L2
aload 4
ldc ""
iload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/setMsgNotifyType(Ljava/lang/String;I)Z 2
pop
goto L2
.limit locals 5
.limit stack 3
.end method

.method private setAllGroupMsgNotifyTypeByDB(I)V
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/getGroupCategory()Ljava/util/Iterator;
astore 2
aload 2
ifnonnull L0
L1:
return
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
astore 3
aload 3
ifnull L0
aload 3
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getGroupList()Ljava/util/Iterator;
astore 3
aload 3
ifnull L0
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
astore 4
aload 4
ifnull L2
aload 4
iload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/setMsgNotifyTypeByDB(I)Z 1
pop
goto L2
.limit locals 5
.limit stack 2
.end method

.method public addGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/addGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;)V
return
.limit locals 2
.limit stack 2
.end method

.method public addGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/addGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
return
.limit locals 2
.limit stack 2
.end method

.method public clearGroupCache()V
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/clear()V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/listCatagory Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/listCatagory Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public createDiscussion(Ljava/lang/String;Ljava/util/Iterator;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
.signature "(Ljava/lang/String;Ljava/util/Iterator<Ljava/lang/Long;>;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L1 to L4 using L2
.catch java/lang/Exception from L1 to L4 using L3
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch java/lang/Exception from L5 to L6 using L3
.catch com/common/android/utils/http/HttpException from L6 to L7 using L2
.catch java/lang/Exception from L6 to L7 using L3
.catch com/common/android/utils/http/HttpException from L8 to L9 using L2
.catch java/lang/Exception from L8 to L9 using L3
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L10
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L11
L10:
aconst_null
areturn
L11:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
L12:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L13
aload 9
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L12
L13:
aload 9
invokevirtual java/util/ArrayList/size()I
newarray long
astore 2
iconst_0
istore 3
L14:
iload 3
aload 9
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 2
iload 3
aload 9
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lastore
iload 3
iconst_1
iadd
istore 3
goto L14
L0:
new com/nd/android/u/contact/com/OapDiscussionCom
dup
invokespecial com/nd/android/u/contact/com/OapDiscussionCom/<init>()V
aload 1
aload 9
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/createDiscussion(Ljava/lang/String;Ljava/util/ArrayList;)J
lstore 4
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
astore 8
aload 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
aload 8
lload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGid(J)V
aload 8
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupname(Ljava/lang/String;)V
aload 8
iconst_3
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 8
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
aload 9
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 6
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 9
aload 9
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setUid(J)V
aload 9
lload 4
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
aload 9
lload 6
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 9
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
L4:
goto L1
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L15:
aconst_null
areturn
L5:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifeq L8
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/groupLoginManagerLoginInitFixGroup(Ljava/lang/String;I)V
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsGroupAddMember(ILjava/lang/String;[J)Ljava/lang/String;
pop
L6:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup
dup
lload 4
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/<init>(J)V
astore 1
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2003
lload 4
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupState(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDiscussionCom()Lcom/nd/android/u/contact/com/OapDiscussionCom;
lload 4
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/getDiscussionInfo(J)Lcom/product/android/commonInterface/contact/OapGroup;
astore 2
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
L7:
aload 1
areturn
L3:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L15
L8:
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendCommandSendDoReconnectLogin()V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$4
dup
aload 0
aload 8
aload 2
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$4/<init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;Lcom/product/android/commonInterface/contact/OapGroup;[J)V
ldc2_w 5000L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
L9:
goto L6
.limit locals 10
.limit stack 6
.end method

.method public createGroup(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
aload 1
iconst_2
iconst_1
aload 2
iload 5
iconst_0
invokevirtual com/nd/android/u/contact/com/OapGroupCom/createGroup(Ljava/lang/String;IILjava/lang/String;II)Lorg/json/JSONObject;
ldc "gid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 7
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
lload 7
aload 1
aload 2
iload 5
invokevirtual com/nd/android/u/contact/business/OapGroupPro/createGroup(JLjava/lang/String;Ljava/lang/String;I)Lcom/product/android/commonInterface/contact/OapGroup;
astore 1
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 2
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setUid(J)V
aload 2
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
aload 2
iconst_3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifeq L4
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/groupLoginManagerLoginInitFixGroup(Ljava/lang/String;I)V
L1:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup
dup
lload 7
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/<init>(J)V
astore 1
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2003
lload 7
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupState(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V
new com/product/android/commonInterface/contact/OapGroup
dup
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
lload 7
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getSupportGroupInfo(J)Lorg/json/JSONObject;
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>(Lorg/json/JSONObject;)V
astore 2
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
L3:
aload 1
areturn
L4:
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendCommandSendDoReconnectLogin()V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$3
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl$3/<init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl;Lcom/product/android/commonInterface/contact/OapGroup;)V
ldc2_w 5000L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
L5:
goto L1
L2:
astore 1
aconst_null
areturn
.limit locals 9
.limit stack 7
.end method

.method protected finalize()V
.throws java/lang/Throwable
aload 0
invokespecial java/lang/Object/finalize()V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/obsState Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
ifnull L0
aload 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/obsState Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public findGroupByDB(J)Lcom/product/android/commonInterface/contact/OapGroup;
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findTempGroup(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 4
aload 4
ifnull L0
aload 4
astore 3
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lconst_0
lcmp
ifne L1
L0:
aconst_null
astore 3
L1:
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method public getCommonMsgNotifyType()I
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/getCommonGroupSetType()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
lload 1
lconst_0
lcmp
ifgt L0
L1:
aconst_null
areturn
L0:
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
astore 3
aload 3
lload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/hasGroup(J)Z
ifeq L2
aload 3
lload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
areturn
L2:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findAvailGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 4
aload 4
ifnull L1
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lconst_0
lcmp
ifle L1
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
tableswitch 0
L3
L4
L5
L6
L7
default : L8
L8:
aconst_null
areturn
L3:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup
dup
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/<init>(J)V
astore 4
aload 3
lload 1
aload 4
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/addGroup(JLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Z
pop
aload 4
areturn
L5:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClassGroup
dup
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClassGroup/<init>(J)V
astore 4
aload 3
lload 1
aload 4
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/addGroup(JLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Z
pop
aload 4
areturn
L4:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DepartGroup
dup
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DepartGroup/<init>(J)V
astore 4
aload 3
lload 1
aload 4
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/addGroup(JLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Z
pop
aload 4
areturn
L7:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup
dup
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/<init>(J)V
astore 4
aload 3
lload 1
aload 4
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/addGroup(JLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Z
pop
aload 4
areturn
L6:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup
dup
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/<init>(J)V
astore 4
aload 3
lload 1
aload 4
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/addGroup(JLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Z
pop
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method public getGroupCategory()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;>;"
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/gLoader Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/gLoader Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader/getGroupCatagory()Ljava/util/List; 0
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/listCatagory Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/listCatagory Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public getGroupList(I)Ljava/util/Iterator;
.signature "(I)Ljava/util/Iterator<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;>;"
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/getGroupCategory()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
astore 3
iload 1
aload 3
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getType()I
if_icmpne L0
aload 3
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getGroupList()Ljava/util/Iterator;
areturn
L1:
aconst_null
areturn
.limit locals 4
.limit stack 2
.end method

.method public refresh(JZ)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch java/lang/Exception from L6 to L7 using L5
.catch java/lang/Exception from L7 to L8 using L5
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/gLoader Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
ifnonnull L0
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_2
invokevirtual com/product/android/business/bean/SysParam/setObtainGroup(I)V
iconst_0
ireturn
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
invokevirtual com/nd/android/u/contact/com/OapUserCom/getUserInfoUpdate()Lorg/json/JSONObject;
astore 6
L1:
aload 6
ldc "group_updatetime"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 4
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lload 4
invokevirtual com/nd/android/u/contact/business/OapGroupPro/vaildateGroupUpdate(JJ)Z
ifne L3
iload 3
ifne L3
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_1
invokevirtual com/product/android/business/bean/SysParam/setObtainGroup(I)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
lload 1
sipush 3002
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyLoadState(JI)V
iconst_0
ireturn
L2:
astore 6
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_2
invokevirtual com/product/android/business/bean/SysParam/setObtainGroup(I)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
lload 1
sipush 3003
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyLoadState(JI)V
iconst_0
ireturn
L3:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/gLoader Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
lload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader/loadGroup(J)Z 2
ifne L9
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_2
invokevirtual com/product/android/business/bean/SysParam/setObtainGroup(I)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
lload 1
sipush 3003
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyLoadState(JI)V
L4:
iload 3
iconst_1
if_icmpne L7
L6:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
lload 1
sipush 3004
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyLoadState(JI)V
L7:
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/clearAllGroup()V
L8:
iconst_0
ireturn
L5:
astore 6
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_2
invokevirtual com/product/android/business/bean/SysParam/setObtainGroup(I)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
lload 1
sipush 3003
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyLoadState(JI)V
iload 3
iconst_1
if_icmpne L10
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
lload 1
sipush 3004
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyLoadState(JI)V
L10:
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/clearAllGroup()V
iconst_0
ireturn
L9:
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerLoginAllGroups()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 6
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-groupUpdateTime"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
lload 4
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
aload 6
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "group_update"
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/product/android/business/manager/DataUpdateManager/save(Ljava/lang/String;J)V
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_1
invokevirtual com/product/android/business/bean/SysParam/setObtainGroup(I)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
lload 1
sipush 3001
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyLoadState(JI)V
iload 3
iconst_1
if_icmpne L11
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
lload 1
sipush 3005
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyLoadState(JI)V
L11:
iconst_1
ireturn
.limit locals 7
.limit stack 5
.end method

.method public removeGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/removeGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;)V
return
.limit locals 2
.limit stack 2
.end method

.method public removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
aload 1
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
return
.limit locals 2
.limit stack 2
.end method

.method public searchGroupByDB(Ljava/lang/String;)Ljava/util/Iterator;
.signature "(Ljava/lang/String;)Ljava/util/Iterator<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;>;"
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/searchGroupByKey(Ljava/lang/String;)Ljava/util/List; 1
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public searchGroupByNet(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)I
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;Ljava/lang/String;Ljava/lang/String;II)I"
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
aload 1
aload 2
aload 3
iload 4
iload 5
invokevirtual com/nd/android/u/contact/com/OapGroupCom/searchGroup(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)I
ireturn
.limit locals 6
.limit stack 6
.end method

.method public setCommonMsgNotifyType(II)V
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveCommonGroupSetType(I)V
iload 1
ifne L0
aload 0
iload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/setAllGroupMsgNotifyTypeByDB(I)V
return
L0:
iload 2
iconst_3
if_icmpne L1
aload 0
iload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/setAllGroupMsgNotifyTypeByDB(I)V
return
L1:
aload 0
iload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/setAllGroupMsgNotifyType(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public setGroupLoader(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupOperatorImpl/gLoader Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
return
.limit locals 2
.limit stack 2
.end method
