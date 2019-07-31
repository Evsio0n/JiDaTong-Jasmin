.bytecode 50.0
.class synchronized com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl$1
.super com/nd/rj/common/login/jobnumber/LoginResultProcess
.enclosing method com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl/onCommonInterModelProc(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.inner class inner com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl$1

.field final synthetic 'this$0' Lcom/nd/android/u/commonInterfaceImpl/MainCommonInterImpl;

.field final synthetic 'val$context' Landroid/content/Context;

.method <init>(Lcom/nd/android/u/commonInterfaceImpl/MainCommonInterImpl;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl$1/this$0 Lcom/nd/android/u/commonInterfaceImpl/MainCommonInterImpl;
aload 0
aload 2
putfield com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl$1/val$context Landroid/content/Context;
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
invokevirtual com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl$1/hasGuide()Z
ifeq L1
getstatic com/product/android/business/switchUser/SwitchUserReloadManager/INSTANCE Lcom/product/android/business/switchUser/SwitchUserReloadManager;
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager/setAllReloadFlag()V
L2:
aload 1
invokevirtual android/app/Activity/finish()V
return
L1:
aload 0
aload 0
getfield com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl$1/val$context Landroid/content/Context;
invokevirtual com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl$1/lunchWelcomeActivity(Landroid/content/Context;)V
goto L2
L0:
invokestatic com/common/android/utils/StackManager/closeActivitys()V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl$1/val$context Landroid/content/Context;
ldc com/nd/android/u/cloud/activity/guide/VerificationActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 0
getfield com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl$1/val$context Landroid/content/Context;
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
goto L2
.limit locals 3
.limit stack 4
.end method

.method public returnWithoutLogin()V
invokestatic com/common/android/utils/StackManager/closeActivitys()V
return
.limit locals 1
.limit stack 0
.end method
