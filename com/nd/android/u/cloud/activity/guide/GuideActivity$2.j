.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/GuideActivity$2
.super com/nd/rj/common/login/jobnumber/LoginResultProcess
.enclosing method com/nd/android/u/cloud/activity/guide/GuideActivity/lunchLoginActivity()V
.inner class inner com/nd/android/u/cloud/activity/guide/GuideActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/GuideActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/GuideActivity$2/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
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
invokevirtual com/nd/android/u/cloud/activity/guide/GuideActivity$2/hasGuide()Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$2/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
L2:
aload 1
invokevirtual android/app/Activity/finish()V
return
L1:
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$2/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
invokevirtual com/nd/android/u/cloud/activity/guide/GuideActivity$2/lunchWelcomeActivity(Landroid/content/Context;)V
goto L2
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$2/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
ldc com/nd/android/u/cloud/activity/LoginActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity$2/this$0 Lcom/nd/android/u/cloud/activity/guide/GuideActivity;
aload 2
invokevirtual com/nd/android/u/cloud/activity/guide/GuideActivity/startActivity(Landroid/content/Intent;)V
goto L2
.limit locals 3
.limit stack 4
.end method
