.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Boolean;>;"
.inner class public static abstract interface SendVerificationCodeResult inner com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask$SendVerificationCodeResult outer com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask

.field private 'mCtx' Landroid/content/Context;

.field private 'mListener' Lcom/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask$SendVerificationCodeResult;

.field private 'mPD' Landroid/app/ProgressDialog;

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask$SendVerificationCodeResult;)V
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask/mCtx Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask/mListener Lcom/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask$SendVerificationCodeResult;
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
iconst_0
istore 2
new com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeReqParams
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeReqParams/<init>()V
astore 3
aload 3
aload 1
iconst_0
aaload
putfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeReqParams/mPhone Ljava/lang/String;
aload 3
iconst_2
putfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeReqParams/mType I
new com/nd/android/u/cloud/activity/welcome/com/SendMessageCode
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/SendMessageCode/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask/mCtx Landroid/content/Context;
aconst_null
aload 3
invokeinterface com/nd/rj/common/serverinterfaces/ServerInterface/communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse; 3
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getStatusCode()I
sipush 200
if_icmpne L0
iconst_1
istore 2
L0:
iload 2
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
.limit locals 4
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask/doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask/mPD Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask/mListener Lcom/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask$SendVerificationCodeResult;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask/mListener Lcom/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask$SendVerificationCodeResult;
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
invokeinterface com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask$SendVerificationCodeResult/sendResult(Z)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask/mCtx Landroid/content/Context;
aconst_null
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask/mCtx Landroid/content/Context;
ldc_w 2131494450
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/welcome/com/SendVerificationCodeTask/mPD Landroid/app/ProgressDialog;
return
.limit locals 1
.limit stack 5
.end method
