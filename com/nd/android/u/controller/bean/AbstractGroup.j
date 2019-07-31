.bytecode 50.0
.class public synchronized abstract com/nd/android/u/controller/bean/AbstractGroup
.super java/lang/Object
.implements ims/outInterface/IGroup

.field private static final 'VALIDATESENDCOUNT' I = 3


.field protected 'errorCount' I

.field protected 'gid' Ljava/lang/String;

.field protected 'groupType' I

.field protected 'isLoginSuccess' Z

.field protected 'isReceiveMessage' Z

.field protected 'lastMsgId' J

.field protected 'loginCmd' I

.field protected 'logoutCmd' I

.field private 'mIsLogining' Z

.field protected 'receiveCmd' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/AbstractGroup/isLoginSuccess Z
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/AbstractGroup/isReceiveMessage Z
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/AbstractGroup/mIsLogining Z
return
.limit locals 1
.limit stack 2
.end method

.method private getMsg(I)Lims/bean/NDMessage;
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 2
aload 2
iload 1
putfield ims/bean/NDMessage/IMSCmd I
aload 2
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 2
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/groupType I
putfield ims/bean/NDMessage/groupType I
aload 2
aload 0
putfield ims/bean/NDMessage/groupInterface Lims/outInterface/IGroup;
aload 2
invokestatic ims/IMSdk/getWseq()I
putfield ims/bean/NDMessage/wseq I
aload 2
invokestatic java/lang/System/currentTimeMillis()J
putfield ims/bean/NDMessage/createDate J
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private writefile(Ljava/lang/String;)V
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
astore 4
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lstore 2
aload 4
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ":uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",grouptype="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/groupType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method

.method protected abstract canReceiveGroupMessage()Z
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 1
instanceof com/nd/android/u/controller/bean/AbstractGroup
ifeq L1
aload 1
checkcast com/nd/android/u/controller/bean/AbstractGroup
astore 1
aload 1
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
ifnull L1
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
ifnull L1
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
aload 1
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/groupType I
aload 1
getfield com/nd/android/u/controller/bean/AbstractGroup/groupType I
if_icmpne L1
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getGid()Ljava/lang/String;
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGroupType()I
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/groupType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected abstract getLastMsgId()J
.end method

.method public hashCode()I
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
ifnonnull L0
new java/lang/StringBuilder
dup
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/groupType I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
ireturn
L0:
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
bipush 31
imul
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/groupType I
iadd
ireturn
.limit locals 1
.limit stack 3
.end method

.method public isLoginSuccess()Z
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/isLoginSuccess Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isLogining()Z
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/mIsLogining Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isReceiveMessage()Z
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/isReceiveMessage Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public login(Z)V
iload 1
ifne L0
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/isLoginSuccess Z
ifeq L1
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/isReceiveMessage Z
ifeq L1
L2:
return
L1:
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/getGroup(Ljava/lang/String;)Lims/outInterface/IGroup;
astore 2
aload 2
ifnull L3
aload 2
invokeinterface ims/outInterface/IGroup/isLoginSuccess()Z 0
ifne L2
aload 2
invokeinterface ims/outInterface/IGroup/isLogining()Z 0
ifne L2
L3:
ldc "grouplogin"
new java/lang/StringBuilder
dup
ldc "login:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/groupType I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/AbstractGroup/isLoginSuccess Z
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/AbstractGroup/isReceiveMessage Z
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/AbstractGroup/mIsLogining Z
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 0
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/removeFromCheckList(Lims/outInterface/IGroup;)V
aload 0
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/loginCmd I
invokespecial com/nd/android/u/controller/bean/AbstractGroup/getMsg(I)Lims/bean/NDMessage;
astore 2
aload 2
invokestatic com/nd/android/u/controller/utils/CommonUtils/generate()Ljava/lang/String;
putfield ims/bean/NDMessage/generateId Ljava/lang/String;
aload 2
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokestatic java/lang/System/currentTimeMillis()J
aload 0
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/addToCheckList(JLims/outInterface/IGroup;)V
return
L0:
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/AbstractGroup/errorCount I
goto L3
.limit locals 3
.limit stack 4
.end method

.method public loginInit()V
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/AbstractGroup/errorCount I
aload 0
iconst_0
invokevirtual com/nd/android/u/controller/bean/AbstractGroup/login(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method public logout()V
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/AbstractGroup/isLoginSuccess Z
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/AbstractGroup/isReceiveMessage Z
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 0
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/removeFromCheckList(Lims/outInterface/IGroup;)V
aload 0
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/logoutCmd I
invokespecial com/nd/android/u/controller/bean/AbstractGroup/getMsg(I)Lims/bean/NDMessage;
astore 1
aload 1
invokestatic com/nd/android/u/controller/utils/CommonUtils/generate()Ljava/lang/String;
putfield ims/bean/NDMessage/generateId Ljava/lang/String;
aload 1
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onLoginFeedback(I)V
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/AbstractGroup/mIsLogining Z
iload 1
sipush 200
if_icmpne L0
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/isLoginSuccess Z
ifeq L1
ldc "grouplogin"
new java/lang/StringBuilder
dup
ldc "dup Login:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "duplicate onLoginFeedback"
invokespecial com/nd/android/u/controller/bean/AbstractGroup/writefile(Ljava/lang/String;)V
return
L1:
aload 0
ldc "login success"
invokespecial com/nd/android/u/controller/bean/AbstractGroup/writefile(Ljava/lang/String;)V
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/AbstractGroup/isLoginSuccess Z
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/AbstractGroup/errorCount I
aload 0
invokevirtual com/nd/android/u/controller/bean/AbstractGroup/startReceiveMessage()V
return
L0:
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/AbstractGroup/isLoginSuccess Z
iload 1
sipush 500
if_icmplt L2
ldc "IM"
new java/lang/StringBuilder
dup
ldc "group login service error:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
aload 0
ldc "group login service error"
invokespecial com/nd/android/u/controller/bean/AbstractGroup/writefile(Ljava/lang/String;)V
L3:
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 0
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/removeFromCheckList(Lims/outInterface/IGroup;)V
return
L2:
ldc "IM"
new java/lang/StringBuilder
dup
ldc "group login fail:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " statusCode:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
iload 1
sipush 404
if_icmpne L4
aload 0
ldc "group not exists"
invokespecial com/nd/android/u/controller/bean/AbstractGroup/writefile(Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/controller/bean/AbstractGroup/removeGroupRecord()V
goto L3
L4:
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/errorCount I
iconst_3
if_icmpge L3
aload 0
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/errorCount I
iconst_1
iadd
putfield com/nd/android/u/controller/bean/AbstractGroup/errorCount I
aload 0
iconst_0
invokevirtual com/nd/android/u/controller/bean/AbstractGroup/login(Z)V
return
.limit locals 2
.limit stack 4
.end method

.method public onReceiveMessageFeedback(I)V
aload 0
iconst_0
putfield com/nd/android/u/controller/bean/AbstractGroup/isReceiveMessage Z
iload 1
sipush 200
if_icmpne L0
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/isReceiveMessage Z
ifeq L1
aload 0
ldc "duplicate onReceiveMessageFeedback"
invokespecial com/nd/android/u/controller/bean/AbstractGroup/writefile(Ljava/lang/String;)V
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
new java/lang/StringBuilder
dup
ldc "duplicate onReceiveMessageFeedback:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V
return
L1:
aload 0
ldc "onReceiveMessageFeedback success"
invokespecial com/nd/android/u/controller/bean/AbstractGroup/writefile(Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/controller/bean/AbstractGroup/canReceiveGroupMessage()Z
ifeq L2
aload 0
iconst_1
putfield com/nd/android/u/controller/bean/AbstractGroup/isReceiveMessage Z
L2:
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 0
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/removeFromCheckList(Lims/outInterface/IGroup;)V
return
L0:
iload 1
sipush 500
if_icmplt L3
aload 0
ldc "group receive message service error"
invokespecial com/nd/android/u/controller/bean/AbstractGroup/writefile(Ljava/lang/String;)V
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
new java/lang/StringBuilder
dup
ldc "group receive message service error:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/gid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V
goto L2
L3:
aload 0
ldc "group receive message fail"
invokespecial com/nd/android/u/controller/bean/AbstractGroup/writefile(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/errorCount I
iconst_3
if_icmpge L2
aload 0
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/errorCount I
iconst_1
iadd
putfield com/nd/android/u/controller/bean/AbstractGroup/errorCount I
aload 0
invokevirtual com/nd/android/u/controller/bean/AbstractGroup/startReceiveMessage()V
return
.limit locals 2
.limit stack 4
.end method

.method protected abstract removeGroupRecord()V
.end method

.method public startReceiveMessage()V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
aload 0
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/removeFromCheckList(Lims/outInterface/IGroup;)V
aload 0
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/receiveCmd I
invokespecial com/nd/android/u/controller/bean/AbstractGroup/getMsg(I)Lims/bean/NDMessage;
astore 1
aload 1
aload 0
getfield com/nd/android/u/controller/bean/AbstractGroup/lastMsgId J
putfield ims/bean/NDMessage/msgId J
aload 1
bipush 80
putfield ims/bean/NDMessage/iPara I
aload 1
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokestatic java/lang/System/currentTimeMillis()J
aload 0
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/addToCheckList(JLims/outInterface/IGroup;)V
return
.limit locals 2
.limit stack 4
.end method
