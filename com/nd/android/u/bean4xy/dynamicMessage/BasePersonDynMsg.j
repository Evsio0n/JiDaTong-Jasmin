.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg
.super com/nd/android/u/bean4xy/DisplayMessage_Person
.implements com/nd/android/u/bean4xy/dynamicMessage/IDynamicMessageDisplay

.field protected 'displayTitle' Ljava/lang/String;

.field protected 'mContext' Landroid/content/Context;

.field protected 'operatorName' Ljava/lang/String;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_Person/<init>()V
aload 0
aload 1
putfield com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Person;)V
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/<init>(Landroid/content/Context;)V
aload 0
aload 2
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/covertData(Lcom/nd/android/u/bean4xy/DisplayMessage_Person;)V
return
.limit locals 3
.limit stack 2
.end method

.method private covertData(Lcom/nd/android/u/bean4xy/DisplayMessage_Person;)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/messageContentType I
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/setMessageContentType(I)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/uidFrom J
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/setFromUid(J)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/uidTo J
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/setToUid(J)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/createDate J
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/setCreateDate(J)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/oriMessage Ljava/lang/String;
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/setOriMessage(Ljava/lang/String;)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/msgId J
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/setMsgId(J)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/multiId J
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/setMultiId(J)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/ackType I
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/setAckType(I)V
aload 0
aload 1
getfield com/nd/android/u/bean4xy/DisplayMessage_Person/object Ljava/lang/Object;
putfield com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/object Ljava/lang/Object;
aload 0
invokevirtual com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/prepareMessage()Z
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
getfield com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/displayTitle Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getNotifyNotice()Ljava/lang/String;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOperatorName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/operatorName Ljava/lang/String;
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
