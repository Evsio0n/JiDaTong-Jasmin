.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/PublicNumberMessageCreator
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
ldc com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public
areturn
.limit locals 2
.limit stack 1
.end method

.method public getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
new com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public
dup
aload 2
invokespecial com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/<init>(Ljava/lang/String;)V
areturn
.limit locals 3
.limit stack 3
.end method

.method public getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
lookupswitch
0 : L0
1 : L0
2 : L1
3 : L2
5 : L3
7 : L4
81 : L5
20480 : L2
default : L6
L6:
aconst_null
areturn
L2:
new com/nd/android/u/ui/widge/ChatListItemView_Audio
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Audio/<init>(Landroid/content/Context;)V
areturn
L0:
new com/nd/android/u/ui/widge/ChatListItemView_Text
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Text/<init>(Landroid/content/Context;)V
areturn
L1:
new com/nd/android/u/ui/widge/ChatListItemView_Image
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image/<init>(Landroid/content/Context;)V
areturn
L3:
new com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView
dup
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberComplexMessageView/<init>(Landroid/content/Context;)V
areturn
L5:
new com/nd/android/u/ui/widge/ChatListItemView_MultiImage
dup
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_MultiImage/<init>(Landroid/content/Context;)V
areturn
L4:
new com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView
dup
aload 1
invokespecial com/nd/android/u/publicNumber/ui/widget/PublicNumberMultimediaMessageView/<init>(Landroid/content/Context;)V
areturn
.limit locals 4
.limit stack 3
.end method
