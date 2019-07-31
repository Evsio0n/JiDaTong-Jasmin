.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Lcom/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams;Ljava/lang/Void;Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;>;"
.inner class private AppealTask inner com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask outer com/nd/android/u/cloud/activity/guide/ManualReviewActivity

.field private 'mPD' Landroid/app/ProgressDialog;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/ManualReviewActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/guide/ManualReviewActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask/this$0 Lcom/nd/android/u/cloud/activity/guide/ManualReviewActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/guide/ManualReviewActivity;Lcom/nd/android/u/cloud/activity/guide/ManualReviewActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask/<init>(Lcom/nd/android/u/cloud/activity/guide/ManualReviewActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Lcom/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;
new com/nd/rj/common/login/jobnumber/ReqAppeal
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqAppeal/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask/this$0 Lcom/nd/android/u/cloud/activity/guide/ManualReviewActivity;
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
checkcast [Lcom/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams;
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask/doInBackground([Lcom/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask/this$0 Lcom/nd/android/u/cloud/activity/guide/ManualReviewActivity;
astore 6
aload 6
invokevirtual android/app/Activity/isFinishing()Z
ifeq L7
return
L7:
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask/mPD Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aconst_null
astore 5
aload 5
astore 4
aload 1
ifnull L8
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getStatusCode()I
istore 2
L0:
new org/json/JSONObject
dup
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getResponseContent()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 3
L1:
iload 2
sipush 200
if_icmpne L5
iload 3
sipush 200
if_icmpne L5
L3:
new android/content/Intent
dup
aload 6
ldc com/nd/android/u/cloud/activity/guide/ManualResultActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "type"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask/this$0 Lcom/nd/android/u/cloud/activity/guide/ManualReviewActivity;
aload 1
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity/startActivity(Landroid/content/Intent;)V
aload 6
iconst_m1
invokevirtual android/app/Activity/setResult(I)V
aload 6
invokevirtual android/app/Activity/finish()V
L4:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 5
astore 4
L8:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L9
aload 6
ldc_w 2131494361
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L5:
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 4
L6:
goto L8
L9:
aload 6
aload 4
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 7
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/rj/common/serverinterfaces/OriginalHttpResponse
invokevirtual com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask/onPostExecute(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask/this$0 Lcom/nd/android/u/cloud/activity/guide/ManualReviewActivity;
astore 1
aload 0
aload 1
aconst_null
aload 1
ldc_w 2131494360
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/guide/ManualReviewActivity$AppealTask/mPD Landroid/app/ProgressDialog;
return
.limit locals 2
.limit stack 5
.end method
