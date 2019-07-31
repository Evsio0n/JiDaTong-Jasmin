.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/appCreator/SecretLoveMessageCreator
.super java/lang/Object
.implements com/nd/android/u/controller/outInterface/IMessageCreator

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
.signature "(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class<*>;"
ldc com/nd/android/u/cloud/customapplication/activity/ChatActivity_SecretLove
areturn
.limit locals 2
.limit stack 1
.end method

.method public getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_SecretLove
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_SecretLove/<init>()V
astore 3
aload 3
aload 2
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appCode Ljava/lang/String;
aload 3
iload 1
putfield com/nd/android/u/bean4xy/DisplayMessage_App/appId I
aload 3
areturn
.limit locals 4
.limit stack 2
.end method

.method public getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
new com/nd/android/u/ui/widge/ChatListItemView_App
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_App/<init>(Landroid/content/Context;)V
areturn
.limit locals 4
.limit stack 3
.end method
