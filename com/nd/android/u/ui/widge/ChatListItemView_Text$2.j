.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView_Text$2
.super java/lang/Object
.implements android/view/View$OnLongClickListener
.enclosing method com/nd/android/u/ui/widge/ChatListItemView_Text
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_Text$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView_Text;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Text;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Text$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Text;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLongClick(Landroid/view/View;)Z
aload 1
ldc "onLongClick"
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
invokestatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/getInstance()Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Text$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Text;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Text/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_Text;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Text$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Text;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Text/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_Text;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
new com/nd/android/u/ui/longClickMenu/LongClickTopWindow
dup
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Text$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Text;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Text/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_Text;)Landroid/content/Context;
checkcast android/app/Activity
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Text$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Text;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Text$2/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView_Text;
invokestatic com/nd/android/u/ui/widge/ChatListItemView_Text/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView_Text;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
invokespecial com/nd/android/u/ui/longClickMenu/LongClickTopWindow/<init>(Landroid/app/Activity;Landroid/view/View;Z)V
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/show(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Lcom/nd/android/u/controller/innerInterface/IChatListLongClickOperation;)V
iconst_1
ireturn
.limit locals 2
.limit stack 8
.end method
