.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lorg/json/JSONObject;>;"
.inner class private static GetVerificationCodeTask inner com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask outer com/nd/android/u/cloud/activity/fragment/AuthFragment
.inner class inner com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$1
.inner class inner com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$2

.field private 'mActivity' Landroid/app/Activity;

.field private 'mInfo' Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;

.method <init>(Landroid/app/Activity;Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mActivity Landroid/app/Activity;
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;)Landroid/app/Activity;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/getRealName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mInfo Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo/getPhoneNumber()Ljava/lang/String;
aconst_null
invokestatic com/nd/android/u/cloud/com/OapAddOrgCom/getVerificationCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast org/json/JSONObject
invokevirtual com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/onPostExecute(Lorg/json/JSONObject;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/isFinishing()Z
ifeq L0
return
L0:
aconst_null
astore 3
aload 1
ifnull L1
aload 1
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 2
iload 2
sipush 200
if_icmpne L2
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mActivity Landroid/app/Activity;
ldc_w 2131493942
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L2:
iload 2
iconst_2
if_icmpne L3
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mActivity Landroid/app/Activity;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
ldc_w 2131493999
invokevirtual android/app/AlertDialog$Builder/setMessage(I)Landroid/app/AlertDialog$Builder;
pop
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mActivity Landroid/app/Activity;
ldc_w 2131493989
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
new com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$1/<init>(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mActivity Landroid/app/Activity;
ldc_w 2131493951
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
new com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$2/<init>(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
L3:
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 3
L1:
aload 3
astore 1
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mActivity Landroid/app/Activity;
ldc_w 2131493977
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
astore 1
L4:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/mActivity Landroid/app/Activity;
aload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method
