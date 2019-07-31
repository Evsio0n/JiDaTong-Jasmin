.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/HelpActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/cloud/activity/HelpActivity
.inner class inner com/nd/android/u/cloud/activity/HelpActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/HelpActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/HelpActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/HelpActivity$1/this$0 Lcom/nd/android/u/cloud/activity/HelpActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/HelpActivity$1/this$0 Lcom/nd/android/u/cloud/activity/HelpActivity;
invokestatic com/nd/android/u/cloud/activity/HelpActivity/access$000(Lcom/nd/android/u/cloud/activity/HelpActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
sipush 3011
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
L0:
return
.limit locals 2
.limit stack 2
.end method
