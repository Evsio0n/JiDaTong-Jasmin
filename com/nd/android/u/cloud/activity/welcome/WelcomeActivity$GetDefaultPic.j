.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Integer;Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;>;"
.inner class static GetDefaultPic inner com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic outer com/nd/android/u/cloud/activity/welcome/WelcomeActivity
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic$1

.field private 'mContext' Landroid/content/Context;

.field private 'mListener' Lcom/common/android/utils/download/progress_updownload/IProgressListener;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
new com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic$1/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic;)V
putfield com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic/mListener Lcom/common/android/utils/download/progress_updownload/IProgressListener;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 4
.end method

.method protected transient doInBackground([Ljava/lang/String;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
new com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic/<init>()V
astore 1
new com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams/<init>()V
astore 2
aload 2
ldc "Android_large"
putfield com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams/mType Ljava/lang/String;
aload 2
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams/mUnitId Ljava/lang/String;
aload 1
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic/mContext Landroid/content/Context;
aconst_null
aload 2
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic/communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic/resolveResponse(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
areturn
.limit locals 3
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic/doInBackground([Ljava/lang/String;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;)V
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/getResolvedResult()Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/S_BUSINESS_SUCCESS Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
if_acmpne L0
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/getBusinessResponseObj()Lcom/nd/rj/common/interfaces/VerifyObject;
astore 1
aload 1
instanceof com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicSuccessResponse
ifeq L0
aload 1
checkcast com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicSuccessResponse
astore 3
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic/mContext Landroid/content/Context;
invokestatic com/common/android/utils/SdCardUtils/getSDCardCacheDir(Landroid/content/Context;)Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 2
astore 1
aload 2
ldc "/"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifne L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Android_large.jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
aload 1
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/setDefaultPicPath(Ljava/lang/String;)V
new com/common/android/utils/download/progress_updownload/ProgressDownload
dup
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic/mListener Lcom/common/android/utils/download/progress_updownload/IProgressListener;
invokespecial com/common/android/utils/download/progress_updownload/ProgressDownload/<init>(Lcom/common/android/utils/download/progress_updownload/IProgressListener;)V
aload 3
getfield com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicSuccessResponse/mPicUrl Ljava/lang/String;
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual com/common/android/utils/download/progress_updownload/ProgressDownload/startDownload(Ljava/lang/String;Ljava/io/File;)V
L0:
return
.limit locals 4
.limit stack 5
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeActivity$GetDefaultPic/onPostExecute(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;)V
return
.limit locals 2
.limit stack 2
.end method
