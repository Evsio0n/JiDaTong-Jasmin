.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/LoginResultProcess
.super java/lang/Object
.implements com/nd/rj/common/login/jobnumber/LoginResultCallback

.field private 'mHasGuide' Ljava/util/concurrent/atomic/AtomicBoolean;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/concurrent/atomic/AtomicBoolean
dup
iconst_1
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>(Z)V
putfield com/nd/rj/common/login/jobnumber/LoginResultProcess/mHasGuide Ljava/util/concurrent/atomic/AtomicBoolean;
return
.limit locals 1
.limit stack 4
.end method

.method public beforeLoginCalledInBackgroundThread(Landroid/content/Context;)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public beforeLoginCalledInMainThread(Landroid/app/Activity;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected hasGuide()Z
aload 0
getfield com/nd/rj/common/login/jobnumber/LoginResultProcess/mHasGuide Ljava/util/concurrent/atomic/AtomicBoolean;
invokevirtual java/util/concurrent/atomic/AtomicBoolean/get()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public loginFailedCalledInMainThread(Landroid/app/Activity;)V
return
.limit locals 2
.limit stack 0
.end method

.method public loginSuccessCalledInMainThread(Landroid/app/Activity;Lcom/product/android/business/login/IGetUserInfo;)V
getstatic com/product/android/business/switchUser/SwitchUserReloadManager/INSTANCE Lcom/product/android/business/switchUser/SwitchUserReloadManager;
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager/setAllReloadFlag()V
return
.limit locals 3
.limit stack 1
.end method

.method protected lunchWelcomeActivity(Landroid/content/Context;)V
aload 1
new android/content/Intent
dup
aload 1
ldc com/nd/android/u/cloud/activity/welcome/WelcomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 5
.end method

.method public returnWithoutLogin()V
return
.limit locals 1
.limit stack 0
.end method
