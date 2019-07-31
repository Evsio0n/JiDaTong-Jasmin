.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView$4
.super java/lang/Object
.implements android/view/View$OnLongClickListener
.enclosing method com/nd/android/u/ui/widge/ChatListItemView
.inner class inner com/nd/android/u/ui/widge/ChatListItemView$4

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView$4/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLongClick(Landroid/view/View;)Z
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$4/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$4/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
bipush 80
if_icmpne L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$4/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$600(Lcom/nd/android/u/ui/widge/ChatListItemView;)Landroid/widget/LinearLayout;
astore 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$4/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$4/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$700(Lcom/nd/android/u/ui/widge/ChatListItemView;)Landroid/widget/LinearLayout;
astore 1
L1:
invokestatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/getInstance()Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$4/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$4/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
new com/nd/android/u/ui/longClickMenu/LongClickTopWindow
dup
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$4/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView;)Landroid/content/Context;
checkcast android/app/Activity
aload 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$4/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
invokespecial com/nd/android/u/ui/longClickMenu/LongClickTopWindow/<init>(Landroid/app/Activity;Landroid/view/View;Z)V
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/show(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Lcom/nd/android/u/controller/innerInterface/IChatListLongClickOperation;)V
iconst_1
ireturn
.limit locals 2
.limit stack 8
.end method
