.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;>;"
.inner class private BindPhoneTask inner com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask outer com/nd/android/u/cloud/activity/guide/CheckPhoneActivity
.inner class inner com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask$1

.field private 'mPD' Landroid/app/ProgressDialog;

.field private 'mResult' Z

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/mResult Z
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/<init>(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/doInBackground([Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/String;
.catch org/json/JSONException from L0 to L1 using L2
new com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams/<init>()V
astore 3
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUapUid()J
putfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams/mUid J
aload 3
aload 1
iconst_0
aaload
putfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams/mSecPhone Ljava/lang/String;
aload 3
aload 1
iconst_1
aaload
putfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams/mVerifyCode Ljava/lang/String;
new com/nd/android/u/cloud/activity/welcome/com/BindSecPhone
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/BindSecPhone/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
aconst_null
aload 3
invokeinterface com/nd/rj/common/serverinterfaces/ServerInterface/communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse; 3
astore 1
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getStatusCode()I
istore 2
iload 2
sipush 200
if_icmpne L3
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/mResult Z
ldc ""
areturn
L3:
iload 2
ldc "204"
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
if_icmpne L0
ldc "204"
areturn
L0:
new org/json/JSONObject
dup
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getResponseContent()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "msg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
ldc ""
areturn
.limit locals 4
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/String
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/onPostExecute(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
invokevirtual com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/isFinishing()Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/mPD Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/mResult Z
ifeq L2
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
invokestatic com/nd/android/u/cloud/activity/guide/CheckPhoneActivity/access$400(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;)V
return
L2:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 1
ldc "204"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
new com/nd/android/u/cloud/activity/guide/DlgCheckCode
dup
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
invokespecial com/nd/android/u/cloud/activity/guide/DlgCheckCode/<init>(Landroid/content/Context;)V
astore 1
aload 1
new com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask$1/<init>(Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask;)V
invokevirtual com/nd/android/u/cloud/activity/guide/DlgCheckCode/setOnAfterDismissListener(Lcom/nd/android/u/cloud/activity/guide/DlgCheckCode$OnDlgBtnListener;)V
aload 1
invokevirtual com/nd/android/u/cloud/activity/guide/DlgCheckCode/show()V
return
L3:
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
aload 1
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/this$0 Lcom/nd/android/u/cloud/activity/guide/CheckPhoneActivity;
astore 1
aload 0
aload 1
aconst_null
aload 1
ldc_w 2131494364
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/guide/CheckPhoneActivity$BindPhoneTask/mPD Landroid/app/ProgressDialog;
return
.limit locals 2
.limit stack 5
.end method
