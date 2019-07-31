.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/Bind91Account$4
.super java/lang/Object
.implements com/nd/rj/common/login/NdMiscCallbackListener$IProcessListener
.enclosing method com/nd/android/u/cloud/activity/Bind91Account
.inner class inner com/nd/android/u/cloud/activity/Bind91Account$4

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/Bind91Account;

.method <init>(Lcom/nd/android/u/cloud/activity/Bind91Account;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/Bind91Account$4/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onBeforeFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/bind91CurrUserPwd Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$4/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokevirtual com/nd/android/u/cloud/activity/Bind91Account/lunchMainActivity()V
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public onFinishLoginProcess(Lcom/product/android/business/bean/UserInfo;)V
return
.limit locals 2
.limit stack 0
.end method
