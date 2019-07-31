.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup
.super com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup

.field private static final 'serialVersionUID' J = 8513492590721395492L


.method public <init>(J)V
aload 0
lload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/<init>(J)V
aload 0
iconst_4
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/setType(I)V
return
.limit locals 3
.limit stack 3
.end method

.method private getCreatorIDByDB()J
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/gid J
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
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/gid J
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

.method public addMember(Ljava/lang/String;Ljava/util/Iterator;)Z
.signature "(Ljava/lang/String;Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 3
.limit stack 2
.end method

.method public delMember(Ljava/lang/String;Ljava/util/Iterator;)Z
.signature "(Ljava/lang/String;Ljava/util/Iterator<Ljava/lang/Long;>;)Z"
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 3
.limit stack 2
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
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/gid J
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroup(J)Z 2
pop
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/getGroupKey()Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/getChatGroupType()I
iconst_1
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerLogoutFixGroup(Ljava/lang/String;IZ)V
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/clearMsgNofifyType()V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2001
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/gid J
aload 0
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupState(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V
goto L4
L5:
iconst_1
ireturn
.limit locals 3
.limit stack 5
.end method

.method public getCreatorID()J
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/creatorID J
lconst_0
lcmp
ifle L0
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/creatorID J
lreturn
L0:
aload 0
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/getCreatorIDByDB()J
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/creatorID J
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/creatorID J
lreturn
.limit locals 1
.limit stack 4
.end method

.method public getManagerList()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Lcom/product/android/commonInterface/contact/OapUser;>;"
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public isManager(J)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
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
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/gid J
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
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/gid J
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
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/gid J
invokevirtual com/nd/android/u/contact/business/SynOapGroupPro/getGroupMember(J)Ljava/util/List;
pop
aload 0
ldc ""
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/name Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/listMember Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
lconst_0
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/creatorID J
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
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public setIntroduction(Ljava/lang/String;Ljava/lang/String;)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 3
.limit stack 2
.end method

.method public setIntroductionByDB(Ljava/lang/String;)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public setNotice(Ljava/lang/String;Ljava/lang/String;)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 3
.limit stack 2
.end method

.method public setNoticeByDB(Ljava/lang/String;)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public setPermission(Ljava/lang/String;I)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 3
.limit stack 2
.end method

.method public setPermissionByDB(I)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public synGroup()Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public transfer(Ljava/lang/String;J)Z
new java/lang/ClassCastException
dup
invokespecial java/lang/ClassCastException/<init>()V
athrow
.limit locals 4
.limit stack 2
.end method
