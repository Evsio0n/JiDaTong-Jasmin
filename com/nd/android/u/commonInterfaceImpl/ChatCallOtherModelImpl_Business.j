.bytecode 50.0
.class public synchronized com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business
.super java/lang/Object
.implements com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
iload 1
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 1
aload 2
iload 1
aload 3
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
iload 1
ireturn
.limit locals 4
.limit stack 4
.end method

.method private getGroupNameByDeptid(J)Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10310
aload 3
ldc "getGroupNameByDeptid"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method private getGroupNameByGid(J)Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10309
aload 3
ldc "getGroupNameByGid"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method public agreeToAddGroup(JJI)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
lload 3
iload 5
invokestatic com/nd/android/u/imSdk/IMSdkCall$GroupMessage/agreeJoinGroup(Ljava/lang/String;IJI)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 6
aload 6
iload 5
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 6
iconst_2
newarray long
dup
iconst_0
lload 1
lastore
dup
iconst_1
lload 3
lastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 0
sipush 10208
aload 6
ldc "agreeToAddGroup"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 7
.limit stack 6
.end method

.method public checkUidIsBlackList(J)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10104
aload 3
ldc "checkUidIsBlackList"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public checkUidIsMyFolling(Landroid/content/Context;J)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
lload 2
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 1
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 31004
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ldc "checkUidIsMyFolling"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 4
.limit stack 5
.end method

.method public clearBindUserList()V
aload 0
sipush 10101
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
ldc "clearBindUserList"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method public clearFixGroupMsgReceiveType(Ljava/lang/String;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 0
sipush 10321
aload 2
ldc "saveFixGroupMsgReceiveType"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public depMemberChangeNotifi()V
aload 0
sipush 10212
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
ldc "depMemberChangeNotifi"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method public getGroupMemberIds(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Ljava/lang/Long;>;"
.catch java/lang/Exception from L0 to L1 using L2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10314
aload 3
ldc "getGroupMemberIds"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
ifne L3
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L3
L0:
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/ArrayList
astore 3
L1:
aload 3
areturn
L2:
astore 3
L3:
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method public getGroupMsgReceiveType(Ljava/lang/String;)I
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 0
sipush 10305
aload 2
ldc "getGroupMsgReceiveType"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ireturn
.limit locals 3
.limit stack 4
.end method

.method public getGroupName(IJ)Ljava/lang/String;
iload 1
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
if_icmpeq L0
iload 1
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
if_icmpne L1
L0:
aload 0
lload 2
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/getGroupNameByGid(J)Ljava/lang/String;
areturn
L1:
iload 1
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
if_icmpne L2
aload 0
lload 2
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/getGroupNameByDeptid(J)Ljava/lang/String;
areturn
L2:
iload 1
invokestatic com/product/android/commonInterface/chat/ChatGroup/getUntidGroupType()I
if_icmpne L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc_w 2131493080
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public getGroupNameByGUid(JJ)Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10309
aload 5
ldc "getGroupNameByGid"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 5
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
areturn
.limit locals 6
.limit stack 4
.end method

.method public getGroupNotice(IJ)Ljava/lang/String;
iload 1
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
if_icmpeq L0
iload 1
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
if_icmpne L1
L0:
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 2
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10312
aload 4
ldc "getGroupNotice"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
areturn
L1:
iload 1
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
if_icmpne L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc_w 2131493476
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L2:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc_w 2131493235
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 5
.limit stack 4
.end method

.method public getGroupOwnerId(IJ)J
.catch java/lang/Exception from L0 to L1 using L2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
iload 1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 4
lload 2
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10307
aload 4
ldc "getGroupOwnerId"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
L0:
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
L1:
lload 2
lreturn
L2:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
lconst_0
lreturn
.limit locals 5
.limit stack 4
.end method

.method public getGroupSetNameByType(I)Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
iload 1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 0
sipush 10318
aload 2
ldc "getGroupSetNameByType"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getLocalGroupName(J)Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10316
aload 3
ldc "getLocalGroupName"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getOapUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 3
lload 3
lstore 1
lload 3
lconst_0
lcmp
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUapUid()J
lstore 1
L0:
lload 1
lreturn
.limit locals 5
.limit stack 4
.end method

.method public getOapUserInBackgroundThread(J)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10017
aload 3
ldc "getOapUserInBackgroundThread"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public getReceivegroupmsg()I
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 0
sipush 10304
aload 1
ldc "getReceivegroupmsg"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public getShareFileCategory(J)I
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10323
aload 3
ldc "getShareFileCategory"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ireturn
.limit locals 4
.limit stack 4
.end method

.method public getSid(Z)Ljava/lang/String;
iload 1
ifeq L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
areturn
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getSysAvatarId(J)I
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10002
aload 3
ldc "getSysAvatarId"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ireturn
.limit locals 4
.limit stack 4
.end method

.method public getUapUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUapUid()J
lstore 3
lload 3
lstore 1
lload 3
lconst_0
lcmp
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 1
L0:
lload 1
lreturn
.limit locals 5
.limit stack 4
.end method

.method public getUnitid()I
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUserGroups()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lims/outInterface/IGroup;>;"
.catch java/lang/Exception from L0 to L1 using L2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 0
sipush 10308
aload 1
ldc "getUserGroups"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
L0:
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/ArrayList
astore 1
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L3:
aload 2
astore 1
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/chat/ChatGroup
astore 1
aload 2
new com/nd/android/u/controller/bean/DefaultGroup
dup
aload 1
invokevirtual com/product/android/commonInterface/chat/ChatGroup/getGroupKey()Ljava/lang/String;
aload 1
invokevirtual com/product/android/commonInterface/chat/ChatGroup/getGroupType()I
invokespecial com/nd/android/u/controller/bean/DefaultGroup/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L3
L2:
astore 1
aconst_null
astore 1
L4:
aload 1
areturn
.limit locals 4
.limit stack 5
.end method

.method public getUserName(J)Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10006
aload 3
ldc "getUserName"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getUserSignature(J)Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10007
aload 3
ldc "getUserSignature"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method public groupAuthUpdate(Ljava/lang/String;JI)Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
iload 4
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 5
lload 2
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 5
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 0
sipush 10203
aload 5
ldc "groupAuthUpdate"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
istore 4
iload 4
ifne L0
aload 5
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/lang/String
areturn
L0:
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "groupUpdateMember:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
.limit locals 6
.limit stack 4
.end method

.method public groupChangeInfo(Ljava/lang/String;ILjava/lang/String;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 3
aastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 0
sipush 10202
aload 4
ldc "groupChangeInfo"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 5
.end method

.method public groupDismessed(JI)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 4
iload 3
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 0
sipush 10211
aload 4
ldc "groupDismessed"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 4
.end method

.method public groupMsgQuit(JJI)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 6
aload 6
iload 5
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 6
iconst_2
newarray long
dup
iconst_0
lload 1
lastore
dup
iconst_1
lload 3
lastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 0
sipush 10205
aload 6
ldc "groupMsgQuit"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 7
.limit stack 6
.end method

.method public groupUpdateMember(Ljava/lang/String;JJII)Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 8
aload 8
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 8
iconst_2
newarray int
dup
iconst_0
iload 6
iastore
dup
iconst_1
iload 7
iastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 8
iconst_2
newarray long
dup
iconst_0
lload 2
lastore
dup
iconst_1
lload 4
lastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 0
sipush 10204
aload 8
ldc "groupUpdateMember"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
istore 6
iload 6
ifne L0
aload 8
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/lang/String
areturn
L0:
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "groupUpdateMember:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
.limit locals 9
.limit stack 6
.end method

.method public initAllGroup()V
aload 0
sipush 11009
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
ldc "initAllGroup"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method public isGroupsExist()Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 0
sipush 10306
aload 1
ldc "isGroupsExist"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 2
.limit stack 4
.end method

.method public isInMyFriendGroup(J)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10016
aload 3
ldc "isInMyFriendGroup"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public joinGroup(Ljava/lang/String;II)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 4
iconst_2
newarray int
dup
iconst_0
iload 2
iastore
dup
iconst_1
iload 3
iastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 0
sipush 10207
aload 4
ldc "joinGroup"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 5
.end method

.method public notifyGroupAddMemberResult(I)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
iload 1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 0
sipush 10210
aload 2
ldc "notifyGroupAddMemberResult"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public notifyGroupDelMemberResult(I)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
iload 1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 0
sipush 10209
aload 2
ldc "notifyGroupDelMemberResult"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public notifyGroupDismissResult(Ljava/lang/String;I)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
iload 2
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 0
sipush 10219
aload 3
ldc "notifyGroupDismissResult"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public notifyGroupInfoModResult(I)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
iload 1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 0
sipush 10213
aload 2
ldc "notifyGroupInfoModResult"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public notifyGroupQuitResult(Ljava/lang/String;II)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 4
iconst_2
newarray int
dup
iconst_0
iload 2
iastore
dup
iconst_1
iload 3
iastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 0
sipush 10206
aload 4
ldc "notifyGroupQuitResult"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 5
.end method

.method public notifyGroupTransferResult(I)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
iload 1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 0
sipush 10201
aload 2
ldc "notifyGroupTransferResult"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public notifyIdentityExpired(Z)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
iload 1
putfield com/product/android/business/ApplicationVariable/isIdentityExpired Z
return
.limit locals 2
.limit stack 2
.end method

.method public notifyOffline(Z)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
iload 1
putfield com/product/android/business/ApplicationVariable/isForceOffline Z
return
.limit locals 2
.limit stack 2
.end method

.method public notifySignatureChanged(JLjava/lang/String;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 4
aload 3
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 0
sipush 10003
aload 4
ldc "notifySignatureChanged"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 4
.end method

.method public notifySysavaterChanged(JI)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 4
iload 3
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 0
sipush 10004
aload 4
ldc "notifySysavaterChanged"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 4
.end method

.method public setExpiredSid()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/setExpiredSid()V
return
.limit locals 1
.limit stack 1
.end method

.method public updateReceiveGroupMsg(II)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
iload 1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 3
iload 2
i2l
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10315
aload 3
ldc "updateReceiveGroupMsg"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method
