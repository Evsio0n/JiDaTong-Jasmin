.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Lcom/nd/rj/common/login/jobnumber/ReqVerification$VerificationRequestParams;Ljava/lang/Void;Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;>;"
.inner class private CheckTask inner com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask outer com/nd/android/u/cloud/activity/guide/VerificationActivity
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask$1
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask$2

.field private 'mPD' Landroid/app/ProgressDialog;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;Lcom/nd/android/u/cloud/activity/guide/VerificationActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/<init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Lcom/nd/rj/common/login/jobnumber/ReqVerification$VerificationRequestParams;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;
new com/nd/rj/common/login/jobnumber/ReqVerification
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqVerification/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
aconst_null
aload 1
iconst_0
aaload
invokeinterface com/nd/rj/common/serverinterfaces/ServerInterface/communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse; 3
areturn
.limit locals 2
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Lcom/nd/rj/common/login/jobnumber/ReqVerification$VerificationRequestParams;
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/doInBackground([Lcom/nd/rj/common/login/jobnumber/ReqVerification$VerificationRequestParams;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
.catch org/json/JSONException from L11 to L12 using L2
.catch org/json/JSONException from L13 to L14 using L2
.catch org/json/JSONException from L15 to L16 using L2
.catch org/json/JSONException from L17 to L18 using L2
.catch org/json/JSONException from L19 to L20 using L2
.catch org/json/JSONException from L21 to L22 using L2
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
astore 6
aload 6
invokevirtual android/app/Activity/isFinishing()Z
ifeq L23
L24:
return
L23:
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/mPD Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
iconst_1
istore 5
iconst_1
istore 4
iload 4
istore 3
aload 1
ifnull L6
iload 4
istore 3
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getStatusCode()I
sipush 200
if_icmpne L6
iload 5
istore 2
L0:
new org/json/JSONObject
dup
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getResponseContent()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
L1:
iload 5
istore 2
L3:
aload 1
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 5
L4:
iload 5
sipush 200
if_icmpne L25
iconst_0
istore 2
iconst_0
istore 3
L5:
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
ldc com/nd/android/u/cloud/activity/guide/AccountSettingActivity
sipush 300
invokestatic com/nd/android/u/cloud/activity/guide/VerificationActivity/access$600(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;Ljava/lang/Class;I)V
L6:
iload 3
ifeq L24
aload 6
ldc_w 2131494369
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L25:
iload 5
sipush 417
if_icmpne L26
iconst_0
istore 4
iconst_0
istore 3
iload 4
istore 2
L7:
new com/nd/android/u/cloud/activity/guide/DlgCheckInfo
dup
aload 6
invokespecial com/nd/android/u/cloud/activity/guide/DlgCheckInfo/<init>(Landroid/content/Context;)V
astore 1
L8:
iload 4
istore 2
L9:
aload 1
new com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask$1/<init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask;)V
invokevirtual com/nd/android/u/cloud/activity/guide/DlgCheckInfo/setOnAfterDismissListener(Lcom/nd/android/u/cloud/activity/guide/DlgCheckInfo$OnDlgBtnListener;)V
L10:
iload 4
istore 2
L11:
aload 1
invokevirtual com/nd/android/u/cloud/activity/guide/DlgCheckInfo/show()V
L12:
goto L6
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iload 2
istore 3
goto L6
L26:
iload 4
istore 3
iload 5
sipush 418
if_icmpne L6
iconst_0
istore 5
iconst_0
istore 4
iload 5
istore 2
L13:
aload 1
ldc "uap_account"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L14:
iload 4
istore 3
iload 5
istore 2
L15:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L6
L16:
iload 5
istore 2
L17:
new com/nd/android/u/cloud/activity/guide/DlgHaveBind
dup
aload 6
aload 1
invokespecial com/nd/android/u/cloud/activity/guide/DlgHaveBind/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 7
L18:
iload 5
istore 2
L19:
aload 7
new com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask$2
dup
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask$2/<init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask;Ljava/lang/String;)V
invokevirtual com/nd/android/u/cloud/activity/guide/DlgHaveBind/setOnAfterDismissListener(Lcom/nd/android/u/cloud/activity/guide/DlgHaveBind$OnDlgBtnListener;)V
L20:
iload 5
istore 2
L21:
aload 7
invokevirtual com/nd/android/u/cloud/activity/guide/DlgHaveBind/show()V
L22:
iload 4
istore 3
goto L6
.limit locals 8
.limit stack 5
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/rj/common/serverinterfaces/OriginalHttpResponse
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/onPostExecute(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
astore 1
aload 0
aload 1
aconst_null
aload 1
ldc_w 2131494368
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/mPD Landroid/app/ProgressDialog;
return
.limit locals 2
.limit stack 5
.end method
