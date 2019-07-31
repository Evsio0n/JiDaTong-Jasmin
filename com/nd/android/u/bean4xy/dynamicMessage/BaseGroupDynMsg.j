.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg
.super com/nd/android/u/bean4xy/DisplayMessage_Group
.implements com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay

.field protected 'displayTitle' Ljava/lang/String;

.field protected 'groupName' Ljava/lang/String;

.field protected 'mContext' Landroid/content/Context;

.field protected 'memberName' Ljava/lang/String;

.field protected 'memberNames' [Ljava/lang/String;

.field protected 'operatorName' Ljava/lang/String;

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)V
aload 0
aload 1
aload 2
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/groupId Ljava/lang/String;
aload 2
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/groupType I
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/<init>(Landroid/content/Context;Ljava/lang/String;I)V
aload 0
aload 2
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/covertData(Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;I)V
aload 0
aload 2
iload 3
invokespecial com/nd/android/u/bean4xy/DisplayMessage_Group/<init>(Ljava/lang/String;I)V
aload 0
aload 1
putfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/mContext Landroid/content/Context;
return
.limit locals 4
.limit stack 3
.end method

.method private covertData(Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/messageContentType I
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/setMessageContentType(I)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/uidFrom J
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/setFromUid(J)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/uidTo J
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/setToUid(J)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/createDate J
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/setCreateDate(J)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/oriMessage Ljava/lang/String;
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/setOriMessage(Ljava/lang/String;)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/msgId J
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/setMsgId(J)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/multiId J
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/setMultiId(J)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/ackType I
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/setAckType(I)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Group/object Ljava/lang/Object;
putfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/object Ljava/lang/Object;
aload 0
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/prepareMessage()Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method public clickPortrait(ZLandroid/content/Context;)V
return
.limit locals 3
.limit stack 0
.end method

.method public getDisplayTitle()Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/displayTitle Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGroupName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/groupName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMemberName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/memberName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMemberNames()[Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/memberNames [Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOperatorName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/operatorName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getmContext()Landroid/content/Context;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public prepareMessage()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setGroupName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/groupName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMemberName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/memberName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMemberNames([Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/memberNames [Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setOperatorName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/operatorName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setmContext(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public showNotify()V
return
.limit locals 1
.limit stack 0
.end method

.method public updateRecentContactItem(I)V
return
.limit locals 2
.limit stack 0
.end method
