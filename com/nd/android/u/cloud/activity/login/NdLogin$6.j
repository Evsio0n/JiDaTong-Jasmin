.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/login/NdLogin$6
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/login/NdLogin
.inner class inner com/nd/android/u/cloud/activity/login/NdLogin$6

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/login/NdLogin;

.method <init>(Lcom/nd/android/u/cloud/activity/login/NdLogin;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/login/NdLogin$6/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/activity/login/NdLogin$6/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin;
invokestatic com/nd/android/u/cloud/activity/login/NdLogin/access$700(Lcom/nd/android/u/cloud/activity/login/NdLogin;)Lcom/nd/android/u/cloud/activity/login/NdLogin91Platform;
aload 0
getfield com/nd/android/u/cloud/activity/login/NdLogin$6/this$0 Lcom/nd/android/u/cloud/activity/login/NdLogin;
invokevirtual com/nd/android/u/cloud/activity/login/NdLogin91Platform/doRefreshCheckcode(Landroid/content/Context;)I
pop
return
.limit locals 2
.limit stack 2
.end method
