.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$2
.super java/util/TimerTask
.enclosing method com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/startTimer()V
.inner class inner com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$2/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
aload 0
invokespecial java/util/TimerTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$2/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
invokestatic com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/access$200(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 1
.limit stack 2
.end method
