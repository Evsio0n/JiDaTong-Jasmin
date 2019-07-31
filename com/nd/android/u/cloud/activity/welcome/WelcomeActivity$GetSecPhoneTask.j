.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetSecPhoneTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
.inner class private GetSecPhoneTask inner com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetSecPhoneTask outer com/nd/android/u/cloud/activity/welcome/WelcomeActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/welcome/WelcomeActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetSecPhoneTask/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeActivity;Lcom/nd/android/u/cloud/activity/welcome/WelcomeActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetSecPhoneTask/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
new com/nd/android/u/cloud/activity/welcome/com/GetSecPhone
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/GetSecPhone/<init>()V
astore 1
new com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneReqParams
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneReqParams/<init>()V
astore 3
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUapUid()J
putfield com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneReqParams/mUid J
aload 1
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetSecPhoneTask/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeActivity;
aload 3
aconst_null
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetSecPhone/communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetSecPhone/resolveResponse(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
invokevirtual com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/getResolvedResult()Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/S_BUSINESS_SUCCESS Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
if_acmpne L0
iconst_1
istore 2
L1:
iload 2
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L0:
iconst_0
istore 2
goto L1
.limit locals 4
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetSecPhoneTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic com/nd/android/u/cloud/helper/Utils/setBindPhoneFlag(Landroid/content/Context;ZJ)V
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/setIsBindPhone(Z)V
return
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetSecPhoneTask/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method
