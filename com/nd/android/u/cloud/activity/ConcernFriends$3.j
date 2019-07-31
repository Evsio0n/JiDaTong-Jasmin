.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/ConcernFriends$3
.super android/os/Handler
.enclosing method com/nd/android/u/cloud/activity/ConcernFriends
.inner class inner com/nd/android/u/cloud/activity/ConcernFriends$3

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/ConcernFriends;

.method <init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/ConcernFriends$3/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$3/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$300(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Landroid/app/ProgressDialog;
ifnonnull L0
return
L0:
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
return
.limit locals 2
.limit stack 2
.end method
