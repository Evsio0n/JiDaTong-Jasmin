.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin
.super com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Group;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Ljava/lang/String;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BaseGroupDynMsg/<init>(Landroid/content/Context;Ljava/lang/String;I)V
return
.limit locals 4
.limit stack 4
.end method

.method public prepareMessage()Z
aload 0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/oriMessage Ljava/lang/String;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_NewGroupAdmin/displayTitle Ljava/lang/String;
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
