.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/login/NdLogin$10
.super android/os/Handler
.enclosing method com/nd/android/u/cloud/activity/login/NdLogin
.inner class inner com/nd/android/u/cloud/activity/login/NdLogin$10

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/login/NdLogin;

.method <init>(Lcom/nd/android/u/cloud/activity/login/NdLogin;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/login/NdLogin$10/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 989803
L0
default : L1
L1:
return
L0:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/product/android/business/bean/UserInfo
astore 1
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 2
aload 2
ldc_w 989802
putfield android/os/Message/what I
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/login/NdLogin$10/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin;
invokestatic com/nd/android/u/cloud/activity/login/NdLogin/access$1600(Lcom/nd/android/u/cloud/activity/login/NdLogin;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPass(Ljava/lang/String;)V
aload 2
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
invokestatic com/nd/android/u/cloud/activity/login/NdLogin/access$1700()Landroid/os/Handler;
aload 2
ldc2_w 1000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
aload 0
getfield com/nd/android/u/cloud/activity/login/NdLogin$10/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin;
invokestatic com/nd/android/u/cloud/activity/login/NdLogin/access$700(Lcom/nd/android/u/cloud/activity/login/NdLogin;)Lcom/nd/android/u/cloud/activity/login/NdLogin91Platform;
aconst_null
invokevirtual com/nd/android/u/cloud/activity/login/NdLogin91Platform/setHandler(Landroid/os/Handler;)V
invokestatic com/nd/android/u/cloud/activity/login/NdLogin/access$1800()Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/finish()V
return
.limit locals 3
.limit stack 4
.end method
