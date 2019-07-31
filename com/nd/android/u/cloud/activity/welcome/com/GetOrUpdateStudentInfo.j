.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams;Ljava/lang/Integer;Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;>;"

.field private 'mActivity' Landroid/app/Activity;

.field private 'mIsShowDialog' Z

.field private 'mPD' Landroid/app/ProgressDialog;

.method public <init>(Landroid/app/Activity;Z)V
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/mIsShowDialog Z
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/mActivity Landroid/app/Activity;
aload 0
iload 2
putfield com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/mIsShowDialog Z
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
new com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo/<init>()V
astore 2
aload 2
aload 2
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/mActivity Landroid/app/Activity;
aload 1
iconst_0
aaload
aconst_null
invokevirtual com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo/communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;
invokevirtual com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo/resolveResponse(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
areturn
.limit locals 3
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams;
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/doInBackground([Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
areturn
.limit locals 2
.limit stack 2
.end method

.method public fail()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onPostExecute(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;)V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/mIsShowDialog Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/isFinishing()Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/mPD Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L0:
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/getResolvedResult()Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/S_BUSINESS_SUCCESS Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
if_acmpne L1
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/getBusinessResponseObj()Lcom/nd/rj/common/interfaces/VerifyObject;
astore 2
aload 2
instanceof com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse
ifeq L2
aload 2
checkcast com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse
astore 2
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
aload 2
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/setResponse(Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/success()V
L2:
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/mIsShowDialog Z
ifeq L3
ldc_w 2131493854
invokestatic com/common/android/utils/ToastUtils/display(I)V
L3:
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/fail()V
goto L2
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/onPostExecute(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/mIsShowDialog Z
ifeq L0
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/mActivity Landroid/app/Activity;
aconst_null
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/mActivity Landroid/app/Activity;
ldc_w 2131493855
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/welcome/com/GetOrUpdateStudentInfo/mPD Landroid/app/ProgressDialog;
L0:
return
.limit locals 1
.limit stack 5
.end method

.method public success()V
return
.limit locals 1
.limit stack 0
.end method
