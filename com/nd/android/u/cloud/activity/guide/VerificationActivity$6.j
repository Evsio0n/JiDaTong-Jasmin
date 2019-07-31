.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/VerificationActivity$6
.super com/nd/rj/common/login/jobnumber/LoginResultProcess
.enclosing method com/nd/android/u/cloud/activity/guide/VerificationActivity/goToLogin(Ljava/lang/String;)V
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$6

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity$6/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
aload 0
invokespecial com/nd/rj/common/login/jobnumber/LoginResultProcess/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public loginSuccessCalledInMainThread(Landroid/app/Activity;Lcom/product/android/business/login/IGetUserInfo;)V
aload 0
aload 1
aload 2
invokespecial com/nd/rj/common/login/jobnumber/LoginResultProcess/loginSuccessCalledInMainThread(Landroid/app/Activity;Lcom/product/android/business/login/IGetUserInfo;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity$6/hasGuide()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$6/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
L1:
aload 1
invokevirtual android/app/Activity/finish()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$6/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/finish()V
return
L0:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$6/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity$6/lunchWelcomeActivity(Landroid/content/Context;)V
goto L1
.limit locals 3
.limit stack 3
.end method
