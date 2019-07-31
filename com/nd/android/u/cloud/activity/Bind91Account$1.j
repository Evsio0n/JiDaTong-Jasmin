.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/Bind91Account$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/cloud/activity/Bind91Account/_onCreate(Landroid/os/Bundle;)Z
.inner class inner com/nd/android/u/cloud/activity/Bind91Account$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/Bind91Account;

.method <init>(Lcom/nd/android/u/cloud/activity/Bind91Account;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/Bind91Account$1/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$1/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokestatic com/nd/android/u/cloud/activity/Bind91Account/access$000(Lcom/nd/android/u/cloud/activity/Bind91Account;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/doInit()I
pop
return
.limit locals 1
.limit stack 1
.end method
