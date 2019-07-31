.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask$1
.super com/nd/rj/common/login/jobnumber/LoginResultProcess
.enclosing method com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/onPostExecute(Ljava/lang/Boolean;)V
.inner class private static ChangeJobNumberPwdTask inner com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask outer com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword
.inner class inner com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask;

.method <init>(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask$1/this$0 Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask;
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
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask$1/hasGuide()Z
ifeq L1
getstatic com/product/android/business/switchUser/SwitchUserReloadManager/INSTANCE Lcom/product/android/business/switchUser/SwitchUserReloadManager;
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager/setAllReloadFlag()V
return
L1:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask$1/this$0 Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask;
invokestatic com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/access$600(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask;)Landroid/app/Activity;
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask$1/lunchWelcomeActivity(Landroid/content/Context;)V
return
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask$1/this$0 Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask;
invokestatic com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/access$600(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask;)Landroid/app/Activity;
ldc com/nd/android/u/cloud/activity/guide/VerificationActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask$1/this$0 Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask;
invokestatic com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/access$600(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask;)Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method public returnWithoutLogin()V
return
.limit locals 1
.limit stack 0
.end method
