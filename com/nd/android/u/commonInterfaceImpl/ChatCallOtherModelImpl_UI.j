.bytecode 50.0
.class public synchronized com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI
.super java/lang/Object
.implements com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI

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
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
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
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method public acceptDelay(Landroid/content/Context;Lcom/product/android/commonInterface/chat/ErpInfo;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_5
ldc_w 50009
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ldc "acceptDelay"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method

.method public acceptTask(Landroid/content/Context;Lcom/product/android/commonInterface/chat/ErpInfo;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_5
ldc_w 50002
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ldc "acceptTask"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method

.method public addFriend(Landroid/app/Activity;JLjava/lang/String;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 5
lload 2
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 5
aload 4
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 5
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
sipush 10013
aload 5
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ldc "addFriend"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
return
.limit locals 6
.limit stack 5
.end method

.method public addFriendOap(J)Lcom/common/android/utils/task/genericTask/TaskResult;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 11002
aload 3
ldc "addFriend"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
ifne L0
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 4
.limit stack 4
.end method

.method public addFriendWeiBo(J)Lcom/common/android/utils/task/genericTask/TaskResult;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 31001
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 3
iload 3
ifne L0
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
aload 4
iload 3
ldc "addFriend"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 5
.limit stack 4
.end method

.method public addToBlackList(J)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 11006
aload 3
ldc "addToBlackList"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public agreeToAddFriend(J)Lcom/common/android/utils/task/genericTask/TaskResult;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 11008
aload 3
ldc "agreeToAddFriend"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifeq L0
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 4
.limit stack 4
.end method

.method public allocateTask(Landroid/content/Context;JLjava/lang/String;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
lload 2
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 5
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 2
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 5
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 5
aload 4
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 5
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_5
ldc_w 50001
aload 5
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ldc "allocateTask"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
return
.limit locals 6
.limit stack 5
.end method

.method public callOtherApprovalJoin(JJZLjava/lang/String;)Ljava/util/Map;
.signature "(JJZLjava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 8
aload 8
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 8
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 8
iload 5
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
aload 8
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 15
ldc_w 151002
aload 8
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 7
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 6
iload 7
ifne L0
aload 6
ldc "resultCode"
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
ldc "callother"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gotoUserMainActivity:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 6
areturn
L0:
iload 7
bipush -3
if_icmpne L2
aload 6
ldc "resultCode"
bipush -3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 6
areturn
L2:
iload 7
bipush -2
if_icmpne L1
aload 8
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/BaseCommonStruct
astore 8
aload 6
ldc "resultCode"
bipush -2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 6
ldc "errorCode"
aload 8
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 6
ldc "resultDesc"
aload 8
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 6
areturn
.limit locals 9
.limit stack 4
.end method

.method public callOtherGotoCommunityHome(Landroid/content/Context;I)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
iload 2
i2l
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 15
ldc_w 151001
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
iload 2
ifeq L0
ldc "callother"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gotoUserMainActivity:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public callOtherGotoTeamHome(Landroid/content/Context;J)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
lload 2
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 5
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 15
ldc_w 152001
aload 5
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 4
iload 4
ifeq L0
ldc "callother"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gotoUserMainActivity:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 6
.limit stack 4
.end method

.method public checkGroupExist(J)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 4
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10325
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 3
iload 3
ifeq L0
ldc "callother"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "check group exit groupid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "ret "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 5
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
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public delFromBlackList(J)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 11007
aload 3
ldc "delFromBlackList"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public deleteFriendOap(J)Lcom/common/android/utils/task/genericTask/TaskResult;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 11001
aload 3
ldc "deleteFriend"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
ifne L0
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 4
.limit stack 4
.end method

.method public deleteFriendWeiBo(J)Lcom/common/android/utils/task/genericTask/TaskResult;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 31002
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 3
iload 3
ifne L0
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
aload 4
iload 3
ldc "deleteFriend"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 5
.limit stack 4
.end method

.method public finishTask(Landroid/content/Context;Lcom/product/android/commonInterface/chat/ErpInfo;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_5
ldc_w 50003
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ldc "finishTask"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method

.method public getAppName(ILjava/lang/String;)Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
iload 1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 3
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 0
sipush 10115
aload 3
ldc "getAppName"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
ifne L0
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L0
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof java/lang/String
ifeq L0
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/lang/String
areturn
L0:
ldc ""
areturn
.limit locals 4
.limit stack 4
.end method

.method public getApplistById(I)Ljava/util/ArrayList;
.signature "(I)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapApp;>;"
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
iload 1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 0
sipush 10113
aload 2
ldc "getApplistById"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
ifne L0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof java/util/ArrayList
ifeq L0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/ArrayList
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method public getCommunityOrTeamAvatar(JLjava/lang/String;I)Ljava/lang/String;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 6
aload 6
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 6
aload 3
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
ldc_w -100000
istore 5
iload 4
bipush 16
if_icmpne L0
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 15
ldc_w 151005
aload 6
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 5
L1:
iload 5
ifeq L2
ldc "callother"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getCommunityOrTeamAvatar:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L2:
aload 6
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/lang/String
areturn
L0:
iload 4
bipush 8
if_icmpne L1
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 15
ldc_w 152003
aload 6
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 5
goto L1
.limit locals 7
.limit stack 4
.end method

.method public getFlowerMessage(J)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 31103
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 3
aload 4
iload 3
ldc "getFlowerMessage"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
iload 3
ifne L0
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L0
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/weibo/FlowerMessageInfo
ifeq L0
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/FlowerMessageInfo
areturn
L0:
aconst_null
areturn
.limit locals 5
.limit stack 4
.end method

.method public getOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10001
aload 3
ldc "getOapUser"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L0
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapUser
ifeq L0
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
areturn
L0:
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method public getOapUserFromServer(J)Lcom/product/android/commonInterface/contact/OapUser;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 11003
aload 3
ldc "getOapUser"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
ifne L0
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L0
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapUser
ifeq L0
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
areturn
L0:
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method public getThanksFlowerMessage()Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 31102
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ldc "getThanksFlowerMessage"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/FlowerMessageInfo
areturn
.limit locals 2
.limit stack 5
.end method

.method public goToAddFriendGroupActivity(JLandroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
aload 3
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 5
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 5
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 12001
aload 5
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 4
iload 4
ifeq L0
ldc "callother"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "goToAddFriendGroupActivity:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 6
.limit stack 4
.end method

.method public goToCreateCommunityActivity(JLandroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
aload 3
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 5
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 15
ldc_w 151004
aload 5
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 4
iload 4
ifeq L0
ldc "callother"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "goToCreateCommunityActivity:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 6
.limit stack 4
.end method

.method public goToCreateTeamActivity(JLandroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
aload 3
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 5
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 15
ldc_w 152002
aload 5
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 4
iload 4
ifeq L0
ldc "callother"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "goToCreateTeamActivity:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 6
.limit stack 4
.end method

.method public gotoAddFriendActivity(Landroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 2
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 92025
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ldc "gotoAddFriendActivity"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
return
.limit locals 3
.limit stack 5
.end method

.method public gotoAddGroupMemberActivity(Landroid/content/Context;I)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
iload 2
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 3
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 92024
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ldc "gotoAddGroupMemberActivity"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method

.method public gotoApplyWoflowBagActivity(Landroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 92015
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 2
iload 2
ifeq L0
ldc "callother"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "gotoApplyWoflowBagActivity:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public gotoDiscussionManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 0
sipush 10215
aload 3
ldc "gotoDiscussionManagerActivity"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public gotoGroupManagerActivity(Landroid/content/Context;Landroid/os/Bundle;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 0
sipush 10216
aload 3
ldc "gotoGroupManagerActivity"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public gotoSelectUserActivity(Landroid/content/Context;JIZ)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 6
aload 6
lload 2
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 6
iload 4
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 6
iload 5
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
aload 6
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 0
sipush 10217
aload 6
ldc "gotoSelectUserActivity"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 7
.limit stack 4
.end method

.method public gotoTweetProfileActivity(Landroid/content/Context;J)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 2
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 4
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 4
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 32101
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ldc "gotoTweetProfileActivity"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
return
.limit locals 5
.limit stack 5
.end method

.method public isInstallApp(Lcom/product/android/commonInterface/contact/OapApp;)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 0
sipush 10110
aload 2
ldc "isInstallApp"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
ifne L0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method public judgeOpenWoflowBag(J)Z
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 4
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 91009
aload 4
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 3
iload 3
ifeq L0
ldc "callother"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "judgeOpenWoflowBag:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic ims/utils/Log/e(Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 4
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ireturn
.limit locals 5
.limit stack 4
.end method

.method public jumpActivity(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 6
aload 6
aload 4
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
iload 1
getstatic com/product/android/business/config/Configuration/TASKAPPID I
if_icmpne L0
getstatic com/product/android/business/config/Configuration/LOTTERYCODE Ljava/lang/String;
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 8
ldc_w 80002
aload 6
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
L0:
aload 6
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 6
iload 5
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
aload 6
iload 1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 6
aload 3
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10111
aload 6
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 7
.limit stack 4
.end method

.method public notifyDeleteClubGroupByGid(J)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10221
aload 3
ldc "notifyDeleteClubGroupByGid"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public notifyNewFans(JLjava/lang/String;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 4
aload 3
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 0
sipush 10027
aload 4
ldc "notifyNewFans"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 4
.end method

.method public notifyNewJuniorRequest(Lcom/nd/android/u/bean4xy/DisplayMessage_App;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 0
sipush 10028
aload 2
ldc "notifyNewJuniorRequest"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method public notifyPullClubGourpByGid(J)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10220
aload 3
ldc "notifyPullClubGourpByGid"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public openAddFriendFollowRequestDialog(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 0
sipush 10015
aload 3
ldc "openAddFriendFollowRequestDialog"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public openAddFriendRequestDialog(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 0
sipush 10014
aload 3
ldc "openAddFriendRequestDialog"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public searchFilterContracByKey(JIILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;
.signature "(JIILjava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;)Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
.catch java/lang/Exception from L0 to L1 using L2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 7
aload 7
aload 5
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 7
iconst_2
newarray int
dup
iconst_0
iload 3
iastore
dup
iconst_1
iload 4
iastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 7
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 7
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
sipush 10012
aload 7
ldc "searchFilterContracByKey"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
L0:
aload 7
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/List
astore 5
L1:
aload 5
areturn
L2:
astore 5
aconst_null
areturn
.limit locals 8
.limit stack 5
.end method

.method public showAppDialog(Lcom/product/android/commonInterface/contact/OapApp;Landroid/content/Context;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 0
sipush 10112
aload 3
ldc "showAppDialog"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 4
.limit stack 4
.end method

.method public showGroupMessageReceiveSettingDialog(Landroid/content/Context;ILcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 4
aload 4
iload 2
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 4
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 4
aload 3
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 0
sipush 10218
aload 4
ldc "showGroupMessageReceiveSettingDialog"
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/callContactInterface(ILcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 4
.end method

.method public showSendFlowerDialog(Landroid/content/Context;JLcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
lload 2
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 5
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 5
aload 4
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 5
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
sipush 30201
aload 5
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ldc "showSendFlowerDialog"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
return
.limit locals 6
.limit stack 5
.end method

.method public viewDetail(Landroid/content/Context;Lcom/product/android/commonInterface/chat/ErpInfo;)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 3
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_5
ldc_w 50004
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
ldc "viewDetail"
invokevirtual com/product/android/commonInterface/BaseCommonStruct/showError(ILjava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method
