.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup
.super com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$1
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2

.field private static final 'serialVersionUID' J = -5994948880035778680L


.method public <init>(J)V
aload 0
lload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/<init>(J)V
aload 0
iconst_3
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/setType(I)V
aload 0
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2
dup
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$2/<init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;)V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/obsData Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
aload 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/obsData Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/addGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
return
.limit locals 3
.limit stack 4
.end method

.method public addMember(Ljava/lang/String;Ljava/util/Iterator;)Z
.signature "(Ljava/lang/String;Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
lconst_0
lcmp
ifgt L0
iconst_0
ireturn
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L3:
goto L1
L4:
aload 1
invokevirtual java/util/ArrayList/size()I
newarray long
astore 2
L5:
iconst_0
istore 3
L6:
iload 3
aload 1
invokevirtual java/util/ArrayList/size()I
if_icmpge L8
aload 2
iload 3
aload 1
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lastore
L7:
iload 3
iconst_1
iadd
istore 3
goto L6
L8:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDiscussionCom()Lcom/nd/android/u/contact/com/OapDiscussionCom;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
aload 1
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/addDisscussion(JLjava/util/List;)Z
pop
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getChatGroupType()I
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getGroupKey()Ljava/lang/String;
aload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsGroupAddMember(ILjava/lang/String;[J)Ljava/lang/String;
astore 1
L9:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L10
iconst_0
ireturn
L10:
iconst_1
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public delMember(Ljava/lang/String;Ljava/util/Iterator;)Z
.signature "(Ljava/lang/String;Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
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
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 3
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
lload 3
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandSendDeleteGroupMemeber(JJ)V
goto L2
L3:
iconst_1
ireturn
.limit locals 5
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
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getType()I
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroup(JI)Z 3
pop
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getGroupKey()Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getChatGroupType()I
iconst_1
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerLogoutFixGroup(Ljava/lang/String;IZ)V
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/clearMsgNofifyType()V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2001
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
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
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/obsData Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
ifnull L0
aload 0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/obsData Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
aload 0
aconst_null
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/obsData Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public getManagerList()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Lcom/product/android/commonInterface/contact/OapUser;>;"
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMember()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMember()Ljava/util/Iterator;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPermission()I
new java/lang/ClassCastException
dup
ldc "Discussion Group cann't getPermission"
invokespecial java/lang/ClassCastException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public initGroup(Lorg/json/JSONObject;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/initGroup(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method public isManager(J)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public loadGroup()Z
.catch java/lang/Exception from L0 to L1 using L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lconst_0
lcmp
ifle L3
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
lconst_0
lcmp
ifgt L0
L3:
iconst_0
ireturn
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDiscussionCom()Lcom/nd/android/u/contact/com/OapDiscussionCom;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/getDiscussionInfo(J)Lcom/product/android/commonInterface/contact/OapGroup;
astore 1
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
invokestatic com/nd/android/u/contact/business/SynOapGroupPro/getInstance()Lcom/nd/android/u/contact/business/SynOapGroupPro;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
invokevirtual com/nd/android/u/contact/business/SynOapGroupPro/getDiscussionMember(J)Ljava/util/List;
pop
aload 0
ldc ""
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/announcement Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/listMember Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
ldc ""
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/name Ljava/lang/String;
L1:
iconst_1
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method public quit(Ljava/lang/String;)Z
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
lconst_0
lcmp
ifgt L0
iconst_0
ireturn
L0:
new com/nd/android/u/contact/com/OapDiscussionCom
dup
invokespecial com/nd/android/u/contact/com/OapDiscussionCom/<init>()V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
iconst_1
newarray long
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lastore
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/quitDisscusion(J[J)Z
ifne L3
L1:
iconst_0
ireturn
L3:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroup(J)Z 2
pop
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelation(J)Z 2
pop
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/getChatGroupType()I
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandQuitGroup(IJ)Ljava/lang/String;
pop
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2001
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
aload 0
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupState(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V
L4:
iconst_1
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 2
.limit stack 8
.end method

.method public setIntroduction(Ljava/lang/String;Ljava/lang/String;)Z
new java/lang/ClassCastException
dup
ldc "Discussion Group cann't set introduction"
invokespecial java/lang/ClassCastException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public setIntroductionByDB(Ljava/lang/String;)Z
new java/lang/ClassCastException
dup
ldc "Discussion Group cann't set introduction"
invokespecial java/lang/ClassCastException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public setNotice(Ljava/lang/String;Ljava/lang/String;)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
lconst_0
lcmp
ifgt L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/gid J
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
aload 2
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendModifyGroupNotice(JILjava/lang/String;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public setPermission(Ljava/lang/String;I)Z
new java/lang/ClassCastException
dup
ldc "Discussion Group cann't setPermission"
invokespecial java/lang/ClassCastException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public setPermissionByDB(I)Z
new java/lang/ClassCastException
dup
ldc "Discussion Group cann't setPermission"
invokespecial java/lang/ClassCastException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public synGroup()Z
new java/lang/Thread
dup
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$1
dup
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup$1/<init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
iconst_1
ireturn
.limit locals 1
.limit stack 5
.end method

.method public transfer(Ljava/lang/String;J)Z
new java/lang/ClassCastException
dup
ldc "Discussion Group cann't transfer"
invokespecial java/lang/ClassCastException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 3
.end method
