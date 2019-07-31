.bytecode 50.0
.class public synchronized com/nd/android/u/ui/messageCreator/SystemMessageCreator
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
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_System
areturn
.limit locals 2
.limit stack 1
.end method

.method public getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
new com/nd/android/u/bean4xy/DisplayMessage_System
dup
aload 2
iload 1
invokespecial com/nd/android/u/bean4xy/DisplayMessage_System/<init>(Ljava/lang/String;I)V
areturn
.limit locals 3
.limit stack 4
.end method

.method public getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
new com/nd/android/u/ui/widge/ChatListItemView_System
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_System/<init>(Landroid/content/Context;)V
areturn
.limit locals 4
.limit stack 3
.end method
