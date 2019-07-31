.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/SplashActivity$SleepTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;>;"
.inner class public SleepTask inner com/nd/android/u/cloud/activity/SplashActivity$SleepTask outer com/nd/android/u/cloud/activity/SplashActivity
.inner class inner com/nd/android/u/cloud/activity/SplashActivity$SleepTask$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SplashActivity;

.method public <init>(Lcom/nd/android/u/cloud/activity/SplashActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method private hasLastUserBindPhone(Lcom/nd/rj/common/login/entity/OapUser;)Z
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
getfield com/nd/rj/common/login/entity/OapUser/uapUid J
lstore 2
aload 1
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
lstore 4
lload 2
lconst_0
lcmp
ifne L1
iconst_1
ireturn
L1:
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
lload 4
invokestatic com/nd/android/u/cloud/helper/Utils/hasBindPhone(Landroid/content/Context;J)Z
ireturn
.limit locals 6
.limit stack 4
.end method

.method private isLastUserGuide(Lcom/nd/rj/common/login/entity/OapUser;)Z
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
lstore 2
aload 1
getfield com/nd/rj/common/login/entity/OapUser/type I
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
lload 2
invokestatic com/nd/android/u/cloud/helper/Utils/hasGuide(Landroid/content/Context;J)Z
ireturn
L1:
iconst_1
ireturn
.limit locals 4
.limit stack 3
.end method

.method private lunchBindPhoneActivity()V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
ldc com/nd/android/u/cloud/activity/guide/BindPhoneActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
aload 1
invokevirtual com/nd/android/u/cloud/activity/SplashActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method private lunchGuideActivity()V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
ldc com/nd/android/u/cloud/activity/welcome/WelcomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
aload 1
invokevirtual com/nd/android/u/cloud/activity/SplashActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method private lunchLoginActivity()V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "has_return_btn"
iconst_0
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
aload 1
new com/nd/android/u/cloud/activity/SplashActivity$SleepTask$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/SplashActivity$SleepTask$1/<init>(Lcom/nd/android/u/cloud/activity/SplashActivity$SleepTask;)V
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/callLoginActivity(Landroid/content/Context;Landroid/os/Bundle;Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)V
return
.limit locals 2
.limit stack 6
.end method

.method private lunchWelcomeActivity()V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
ldc com/nd/android/u/cloud/activity/guide/GuideActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
aload 1
invokevirtual com/nd/android/u/cloud/activity/SplashActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;
.catch java/lang/InterruptedException from L0 to L1 using L2
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
astore 1
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
getstatic com/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI/ERROR_INIT Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;
astore 1
L4:
invokestatic java/lang/System/currentTimeMillis()J
lload 2
lsub
ldc2_w 3000L
lcmp
ifge L1
L0:
ldc2_w 3000L
ldc2_w 2000L
lsub
invokestatic java/lang/Thread/sleep(J)V
L1:
aload 1
areturn
L3:
aload 1
ldc_w 2130839717
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
invokestatic com/common/android/utils/AppUtils/createShortCut(Landroid/app/Activity;ILjava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getOapLastLoginUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/OapUser;
astore 1
aload 1
ifnull L5
invokestatic com/product/android/business/login/LoginFlag/getLoginFlag()Lcom/product/android/business/login/LoginFlag;
getstatic com/product/android/business/login/LoginFlag/DEFAULT Lcom/product/android/business/login/LoginFlag;
if_acmpne L6
getstatic com/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI/LOGIN Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;
astore 1
goto L4
L6:
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/SplashActivity$SleepTask/isLastUserGuide(Lcom/nd/rj/common/login/entity/OapUser;)Z
ifeq L7
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/SplashActivity$SleepTask/hasLastUserBindPhone(Lcom/nd/rj/common/login/entity/OapUser;)Z
ifeq L8
getstatic com/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI/MAIN Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;
astore 1
invokestatic com/nd/android/u/cloud/helper/Utils/startIMSRelative()V
goto L4
L8:
getstatic com/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI/BIND_PHONE Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;
astore 1
goto L4
L7:
getstatic com/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI/GUIDE Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;
astore 1
goto L4
L5:
getstatic com/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI/WELCOME Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;
astore 1
goto L4
L2:
astore 4
aload 1
areturn
.limit locals 5
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/SplashActivity$SleepTask/doInBackground([Ljava/lang/Void;)Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;)V
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
invokevirtual com/nd/android/u/cloud/activity/SplashActivity/isFinishing()Z
ifeq L0
return
L0:
aload 1
getstatic com/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI/MAIN Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;
if_acmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
L2:
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
invokevirtual com/nd/android/u/cloud/activity/SplashActivity/finish()V
return
L1:
aload 1
getstatic com/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI/LOGIN Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;
if_acmpne L3
aload 0
invokespecial com/nd/android/u/cloud/activity/SplashActivity$SleepTask/lunchLoginActivity()V
goto L2
L3:
aload 1
getstatic com/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI/GUIDE Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;
if_acmpne L4
aload 0
invokespecial com/nd/android/u/cloud/activity/SplashActivity$SleepTask/lunchGuideActivity()V
goto L2
L4:
aload 1
getstatic com/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI/BIND_PHONE Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;
if_acmpne L5
aload 0
invokespecial com/nd/android/u/cloud/activity/SplashActivity$SleepTask/lunchBindPhoneActivity()V
goto L2
L5:
aload 1
getstatic com/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI/WELCOME Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;
if_acmpne L6
aload 0
getfield com/nd/android/u/cloud/activity/SplashActivity$SleepTask/this$0 Lcom/nd/android/u/cloud/activity/SplashActivity;
invokestatic com/nd/android/u/cloud/helper/Utils/hasShowWelcome(Landroid/content/Context;)Z
ifeq L7
aload 0
invokespecial com/nd/android/u/cloud/activity/SplashActivity$SleepTask/lunchLoginActivity()V
goto L2
L7:
aload 0
invokespecial com/nd/android/u/cloud/activity/SplashActivity$SleepTask/lunchWelcomeActivity()V
goto L2
L6:
ldc_w 2131493555
invokestatic com/common/android/utils/ToastUtils/display(I)V
goto L2
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI
invokevirtual com/nd/android/u/cloud/activity/SplashActivity$SleepTask/onPostExecute(Lcom/nd/android/u/cloud/activity/SplashActivity$NEXT_STEP_UI;)V
return
.limit locals 2
.limit stack 2
.end method
