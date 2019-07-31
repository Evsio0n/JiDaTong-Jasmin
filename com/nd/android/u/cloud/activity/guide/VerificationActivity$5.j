.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/VerificationActivity$5
.super com/nd/rj/common/login/jobnumber/LoginResultProcess
.enclosing method com/nd/android/u/cloud/activity/guide/VerificationActivity/lunchLoginActivity()V
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;

.field final synthetic 'val$thisActivity' Landroid/app/Activity;

.method <init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;Landroid/app/Activity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity$5/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity$5/val$thisActivity Landroid/app/Activity;
aload 0
invokespecial com/nd/rj/common/login/jobnumber/LoginResultProcess/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public loginSuccessCalledInMainThread(Landroid/app/Activity;Lcom/product/android/business/login/IGetUserInfo;)V
aload 0
aload 1
aload 2
invokespecial com/nd/rj/common/login/jobnumber/LoginResultProcess/loginSuccessCalledInMainThread(Landroid/app/Activity;Lcom/product/android/business/login/IGetUserInfo;)V
aload 1
aload 2
iconst_1
invokestatic com/nd/android/u/cloud/helper/Utils/hasUnit(Landroid/content/Context;Lcom/product/android/business/login/IGetUserInfo;Z)Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity$5/hasGuide()Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$5/val$thisActivity Landroid/app/Activity;
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
L2:
aload 1
invokevirtual android/app/Activity/finish()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$5/val$thisActivity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
L1:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$5/val$thisActivity Landroid/app/Activity;
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity$5/lunchWelcomeActivity(Landroid/content/Context;)V
goto L2
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$5/val$thisActivity Landroid/app/Activity;
ldc com/nd/android/u/cloud/activity/guide/VerificationActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$5/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
aload 2
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/startActivity(Landroid/content/Intent;)V
goto L2
.limit locals 3
.limit stack 4
.end method
