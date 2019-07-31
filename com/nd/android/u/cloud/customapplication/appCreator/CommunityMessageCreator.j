.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/appCreator/CommunityMessageCreator
.super com/nd/android/u/cloud/customapplication/appCreator/MyAppCreator

.method public <init>()V
aload 0
invokespecial com/nd/android/u/cloud/customapplication/appCreator/MyAppCreator/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
.signature "(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class<*>;"
aload 1
instanceof com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community
ifeq L0
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_App
areturn
L0:
aload 0
aload 1
invokespecial com/nd/android/u/cloud/customapplication/appCreator/MyAppCreator/getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/cloud/customapplication/appCreator/MyAppCreator/getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
aload 2
instanceof com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community
ifeq L0
aload 2
checkcast com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community
astore 2
aload 2
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/business Ljava/lang/String;
ifnonnull L1
aload 2
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/prepareMessage()Z
pop
L1:
ldc "LIFE_COMMUNITY_APPROVE"
aload 2
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/business Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
new com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply
dup
aload 1
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/<init>(Landroid/content/Context;)V
areturn
L2:
new com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result
dup
aload 1
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply_Result/<init>(Landroid/content/Context;)V
areturn
L0:
aload 0
aload 1
aload 2
iconst_1
invokespecial com/nd/android/u/cloud/customapplication/appCreator/MyAppCreator/getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
pop
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method
