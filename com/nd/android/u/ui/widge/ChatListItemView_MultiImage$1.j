.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView_MultiImage$1
.super java/lang/Object
.implements android/view/View$OnLongClickListener
.enclosing method com/nd/android/u/ui/widge/ChatListItemView_MultiImage/addTextView(Ljava/lang/String;)V
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_MultiImage$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLongClick(Landroid/view/View;)Z
invokestatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/getInstance()Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_MultiImage/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_MultiImage/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
new com/nd/android/u/ui/longClickMenu/LongClickTopWindow
dup
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_MultiImage/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;)Landroid/content/Context;
checkcast android/app/Activity
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_MultiImage$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_MultiImage/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_MultiImage;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
invokespecial com/nd/android/u/ui/longClickMenu/LongClickTopWindow/<init>(Landroid/app/Activity;Landroid/view/View;Z)V
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/show(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Lcom/nd/android/u/controller/innerInterface/IChatListLongClickOperation;)V
iconst_0
ireturn
.limit locals 2
.limit stack 8
.end method
