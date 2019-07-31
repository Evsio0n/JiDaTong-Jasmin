.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/ChatListItemView$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/widge/ChatListItemView
.inner class inner com/nd/android/u/ui/widge/ChatListItemView$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/ChatListItemView;

.method <init>(Lcom/nd/android/u/ui/widge/ChatListItemView;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$200(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$000(Lcom/nd/android/u/ui/widge/ChatListItemView;)Lcom/nd/android/u/ui/widge/CircleImageView;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView$1/this$0 Lcom/nd/android/u/ui/widge/ChatListItemView;
invokestatic com/nd/android/u/ui/widge/ChatListItemView/access$100(Lcom/nd/android/u/ui/widge/ChatListItemView;)Landroid/content/Context;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/clickPortrait(ZLandroid/content/Context;)V 2
return
.limit locals 2
.limit stack 3
.end method
