.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/login/NdLogin91Platform$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/cloud/activity/login/NdLogin91Platform/doInit()V
.inner class inner com/nd/android/u/cloud/activity/login/NdLogin91Platform$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/login/NdLogin91Platform;

.method <init>(Lcom/nd/android/u/cloud/activity/login/NdLogin91Platform;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/login/NdLogin91Platform$1/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin91Platform;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdLogin91Platform$1/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin91Platform;
invokestatic com/nd/android/u/cloud/activity/login/NdLogin91Platform/access$000(Lcom/nd/android/u/cloud/activity/login/NdLogin91Platform;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/doInit()I
pop
return
.limit locals 1
.limit stack 1
.end method
