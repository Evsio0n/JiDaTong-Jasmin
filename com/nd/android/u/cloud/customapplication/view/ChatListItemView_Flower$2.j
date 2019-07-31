.bytecode 50.0
.class synchronized com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
.inner class inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;

.field final synthetic 'val$uid' J

.method <init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;J)V
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$2/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;
aload 0
lload 2
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$2/val$uid J
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$2/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;)Landroid/content/Context;
ldc com/nd/android/u/ui/activity/message_chat/ChatActivity_Person
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "fid"
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$2/val$uid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "quick_reply_type"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower$2/this$0 Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;
invokestatic com/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower/access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_Flower;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
