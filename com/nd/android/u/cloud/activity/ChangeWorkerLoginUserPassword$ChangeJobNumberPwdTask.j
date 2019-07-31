.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Boolean;>;"
.inner class private static ChangeJobNumberPwdTask inner com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask outer com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword
.inner class inner com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask$1

.field private 'mActivity' Landroid/app/Activity;

.field private 'mErrorMsg' Ljava/lang/String;

.field private 'mIsFromSetting' Z

.field private 'mPD' Landroid/app/ProgressDialog;

.field private 'mWorkerUserInfo' Lcom/product/android/business/login/JobNumberUserInfo;

.method <init>(Landroid/app/Activity;ZLcom/product/android/business/login/JobNumberUserInfo;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mActivity Landroid/app/Activity;
aload 0
iload 2
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mIsFromSetting Z
aload 0
aload 3
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mWorkerUserInfo Lcom/product/android/business/login/JobNumberUserInfo;
return
.limit locals 4
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask;)Landroid/app/Activity;
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
aload 1
iconst_0
aaload
astore 2
aload 1
iconst_1
aaload
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
invokestatic com/nd/android/u/cloud/com/WorkIdLoginCom/getInstance()Lcom/nd/android/u/cloud/com/WorkIdLoginCom;
aload 2
aload 1
aload 3
invokevirtual com/nd/android/u/cloud/com/WorkIdLoginCom/changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mIsFromSetting Z
ifne L1
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mWorkerUserInfo Lcom/product/android/business/login/JobNumberUserInfo;
invokevirtual com/product/android/business/login/JobNumberUserInfo/clearPwdAndTicket()V
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mWorkerUserInfo Lcom/product/android/business/login/JobNumberUserInfo;
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/UpdateUserInfo(Lcom/product/android/business/login/JobNumberUserInfo;)Z
pop
L1:
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L0:
aload 0
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mErrorMsg Ljava/lang/String;
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
.limit locals 4
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mPD Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mActivity Landroid/app/Activity;
ldc_w 2131494290
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mIsFromSetting Z
ifne L1
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mWorkerUserInfo Lcom/product/android/business/login/JobNumberUserInfo;
invokevirtual com/product/android/business/login/JobNumberUserInfo/getBindUapAccount()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mActivity Landroid/app/Activity;
ldc com/nd/android/u/cloud/activity/Bind91Account
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
ldc "account"
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mWorkerUserInfo Lcom/product/android/business/login/JobNumberUserInfo;
invokevirtual com/product/android/business/login/JobNumberUserInfo/getUser_name()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L3:
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mActivity Landroid/app/Activity;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic com/nd/android/u/cloud/LoginManager/isGuideBefore(Landroid/content/Context;J)Z
ifeq L4
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mActivity Landroid/app/Activity;
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
goto L3
L4:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mActivity Landroid/app/Activity;
ldc com/nd/android/u/cloud/activity/FirstSetMyPortrait
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mActivity Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
goto L3
L1:
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mActivity Landroid/app/Activity;
invokestatic com/nd/android/u/cloud/helper/Utils/clearAccountInfo(Landroid/content/Context;)V
invokestatic com/common/android/utils/StackManager/closeActivitys()V
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mActivity Landroid/app/Activity;
aconst_null
new com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask$1/<init>(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask;)V
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/callLoginActivity(Landroid/content/Context;Landroid/os/Bundle;Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)V
goto L3
L0:
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mErrorMsg Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 6
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mActivity Landroid/app/Activity;
aconst_null
ldc "\u6b63\u5728\u4fee\u6539\u5bc6\u7801\uff0c\u8bf7\u7a0d\u5019..."
iconst_1
iconst_0
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$ChangeJobNumberPwdTask/mPD Landroid/app/ProgressDialog;
return
.limit locals 1
.limit stack 6
.end method
