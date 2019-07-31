.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
.super java/lang/Object
.inner class inner com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory$1

.field private 'catagoryName' Ljava/lang/String;

.field private 'listGroup' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;>;"

.field private 'obsState' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;

.field private 'type' I

.method public <init>(ILjava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
aload 0
aconst_null
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/obsState Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
aload 0
iload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/type I
aload 0
aload 2
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/catagoryName Ljava/lang/String;
aload 0
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory$1
dup
aload 0
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory$1/<init>(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;)V
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/obsState Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/obsState Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/addGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;)I
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public contains(J)Z
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifgt L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
lload 1
lcmp
ifne L2
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method protected finalize()V
.throws java/lang/Throwable
aload 0
invokespecial java/lang/Object/finalize()V
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/obsState Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
ifnull L0
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/obsState Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public getCatagoryName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/catagoryName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGroupList()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;>;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L8 to L9 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
.catch all from L19 to L20 using L2
.catch all from L21 to L22 using L2
.catch all from L23 to L24 using L2
.catch all from L25 to L26 using L2
.catch all from L27 to L28 using L2
.catch all from L29 to L30 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L3
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 0
monitorexit
aload 3
areturn
L3:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/type I
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/searchGroups(I)Ljava/util/List; 1
astore 3
L4:
aload 3
ifnull L31
L5:
aload 3
invokeinterface java/util/List/size()I 0
ifgt L7
L6:
goto L31
L7:
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L8:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L29
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 4
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lstore 1
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/type I
tableswitch 0
L9
L17
L21
L13
L25
default : L32
L9:
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/hasGroup(J)Z
ifeq L11
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
astore 4
aload 0
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/contains(J)Z
ifne L8
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L10:
goto L8
L2:
astore 3
aload 0
monitorexit
aload 3
athrow
L11:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup
dup
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/NormalGroup/<init>(J)V
astore 4
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
aload 4
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/addGroup(JLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Z
pop
aload 0
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/contains(J)Z
ifne L8
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L12:
goto L8
L13:
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/hasGroup(J)Z
ifeq L15
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
astore 4
aload 0
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/contains(J)Z
ifne L8
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L14:
goto L8
L15:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup
dup
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DiscussionGroup/<init>(J)V
astore 4
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
aload 4
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/addGroup(JLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Z
pop
aload 0
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/contains(J)Z
ifne L8
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L16:
goto L8
L17:
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/hasGroup(J)Z
ifeq L19
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
astore 4
aload 0
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/contains(J)Z
ifne L8
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L18:
goto L8
L19:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DepartGroup
dup
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/DepartGroup/<init>(J)V
astore 4
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
aload 4
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/addGroup(JLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Z
pop
aload 0
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/contains(J)Z
ifne L8
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L20:
goto L8
L21:
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/hasGroup(J)Z
ifeq L23
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
astore 4
aload 0
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/contains(J)Z
ifne L8
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L22:
goto L8
L23:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClassGroup
dup
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClassGroup/<init>(J)V
astore 4
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
aload 4
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/addGroup(JLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Z
pop
aload 0
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/contains(J)Z
ifne L8
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L24:
goto L8
L25:
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/hasGroup(J)Z
ifeq L27
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
astore 4
aload 0
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/contains(J)Z
ifne L8
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L26:
goto L8
L27:
new com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup
dup
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/ClubGroup/<init>(J)V
astore 4
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager;
lload 1
aload 4
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/GroupCacheManager/addGroup(JLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Z
pop
aload 0
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/contains(J)Z
ifne L8
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L28:
goto L8
L29:
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/listGroup Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L30:
goto L1
L31:
aconst_null
astore 3
goto L1
L32:
goto L8
.limit locals 5
.limit stack 4
.end method

.method public getType()I
aload 0
getfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCatagoryName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/catagoryName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setType(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/type I
return
.limit locals 2
.limit stack 2
.end method
