.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/LoginActivity$6
.super android/os/Handler
.enclosing method com/nd/android/u/cloud/activity/LoginActivity
.inner class inner com/nd/android/u/cloud/activity/LoginActivity$6

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/LoginActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/LoginActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L17 to L18 using L2
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
L0:
aload 1
getfield android/os/Message/what I
tableswitch 1
L1
L4
L15
L17
default : L19
L1:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/getApplicationContext()Landroid/content/Context;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
L3:
return
L4:
invokestatic com/common/android/utils/StackManager/closeActivitys()V
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
istore 2
getstatic com/product/android/business/switchUser/SwitchUserReloadManager/INSTANCE Lcom/product/android/business/switchUser/SwitchUserReloadManager;
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager/setAllReloadFlag()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
astore 1
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUnitId()I 0
i2l
lstore 3
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lstore 5
L5:
lload 3
lconst_0
lcmp
ifeq L6
lload 5
lconst_0
lcmp
ifne L20
L6:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
ldc com/nd/android/u/cloud/activity/guide/VerificationActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
aload 1
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/startActivity(Landroid/content/Intent;)V
L7:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$800(Lcom/nd/android/u/cloud/activity/LoginActivity;)Z
ifeq L8
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/getLoginResultCallback()Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/nd/rj/common/login/jobnumber/LoginResultCallback/loginSuccessCalledInMainThread(Landroid/app/Activity;Lcom/product/android/business/login/IGetUserInfo;)V 2
L8:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$900(Lcom/nd/android/u/cloud/activity/LoginActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L9
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$900(Lcom/nd/android/u/cloud/activity/LoginActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L9:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/finish()V
L10:
return
L20:
iload 2
ifeq L13
L11:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
L12:
goto L7
L13:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
ldc com/nd/android/u/cloud/activity/welcome/WelcomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
aload 1
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/startActivity(Landroid/content/Intent;)V
L14:
goto L7
L15:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast android/graphics/drawable/Drawable
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
getfield com/nd/android/u/cloud/activity/LoginActivity/mCaptcha Lcom/nd/rj/common/login/jobnumber/CaptchaWidget;
aload 1
invokevirtual com/nd/rj/common/login/jobnumber/CaptchaWidget/showCaptcha(Landroid/graphics/drawable/Drawable;)V
L16:
return
L17:
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$900(Lcom/nd/android/u/cloud/activity/LoginActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L19
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokevirtual com/nd/android/u/cloud/activity/LoginActivity/isFinishing()Z
ifne L19
aload 0
getfield com/nd/android/u/cloud/activity/LoginActivity$6/this$0 Lcom/nd/android/u/cloud/activity/LoginActivity;
invokestatic com/nd/android/u/cloud/activity/LoginActivity/access$900(Lcom/nd/android/u/cloud/activity/LoginActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L18:
return
L19:
return
L2:
astore 1
return
.limit locals 7
.limit stack 4
.end method
