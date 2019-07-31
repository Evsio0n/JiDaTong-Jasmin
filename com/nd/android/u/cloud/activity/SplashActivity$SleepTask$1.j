.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/SplashActivity$SleepTask$1
.super com/nd/rj/common/login/jobnumber/LoginResultProcess
.enclosing method com/nd/android/u/cloud/activity/SplashActivity$SleepTask/lunchLoginActivity()V
.inner class public SleepTask inner com/nd/android/u/cloud/activity/SplashActivity$SleepTask outer com/nd/android/u/cloud/activity/SplashActivity
.inner class inner com/nd/android/u/cloud/activity/SplashActivity$SleepTask$1

.field final synthetic 'this$1' Lcom/nd/android/u/cloud/activity/SplashActivity$SleepTask;

.method <init>(Lcom/nd/android/u/cloud/activity/SplashActivity$SleepTask;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask$1/this$1 Lcom/nd/android/u/cloud/activity/SplashActivity$SleepTask;
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
aload 1
aload 2
iconst_1
invokestatic com/nd/android/u/cloud/helper/Utils/hasUnit(Landroid/content/Context;Lcom/product/android/business/login/IGetUserInfo;Z)Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/cloud/activity/SplashActivity$SleepTask$1/hasGuide()Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask$1/this$1 Lcom/nd/android/u/cloud/activity/SplashActivity$SleepTask;
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
L2:
aload 1
invokevirtual android/app/Activity/finish()V
return
L1:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask$1/this$1 Lcom/nd/android/u/cloud/activity/SplashActivity$SleepTask;
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
invokevirtual com/nd/android/u/cloud/activity/SplashActivity$SleepTask$1/lunchWelcomeActivity(Landroid/content/Context;)V
goto L2
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask$1/this$1 Lcom/nd/android/u/cloud/activity/SplashActivity$SleepTask;
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
ldc com/nd/android/u/cloud/activity/LoginActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask$1/this$1 Lcom/nd/android/u/cloud/activity/SplashActivity$SleepTask;
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
aload 2
invokevirtual com/nd/android/u/cloud/activity/SplashActivity/startActivity(Landroid/content/Intent;)V
goto L2
.limit locals 3
.limit stack 4
.end method
