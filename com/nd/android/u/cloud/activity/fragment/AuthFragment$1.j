.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/fragment/AuthFragment$1
.super android/os/Handler
.enclosing method com/nd/android/u/cloud/activity/fragment/AuthFragment
.inner class inner com/nd/android/u/cloud/activity/fragment/AuthFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/fragment/AuthFragment;

.method <init>(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment$1/this$0 Lcom/nd/android/u/cloud/activity/fragment/AuthFragment;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 257
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$1/this$0 Lcom/nd/android/u/cloud/activity/fragment/AuthFragment;
aload 1
getfield android/os/Message/arg1 I
invokestatic com/nd/android/u/cloud/activity/fragment/AuthFragment/access$000(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment;I)V
return
.limit locals 2
.limit stack 2
.end method
