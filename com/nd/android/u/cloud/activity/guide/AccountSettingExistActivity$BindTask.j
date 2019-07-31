.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Lcom/nd/rj/common/login/jobnumber/ReqBind$BindRequestParams;Ljava/lang/Void;Ljava/lang/Object;>;"
.inner class private BindTask inner com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask outer com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity

.field private 'mHasGuide' Z

.field private 'mPD' Landroid/app/ProgressDialog;

.field private 'mParam' Lcom/nd/rj/common/login/entity/LoginParam;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;

.method public <init>(Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;Lcom/nd/rj/common/login/entity/LoginParam;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/mParam Lcom/nd/rj/common/login/entity/LoginParam;
return
.limit locals 3
.limit stack 2
.end method

.method private getBindErrorMsg(Ljava/lang/String;)Ljava/lang/String;
.catch org/json/JSONException from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
aload 1
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
.limit locals 2
.limit stack 3
.end method

.method private getOapUid(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)J
.catch org/json/JSONException from L0 to L1 using L2
aload 1
ifnull L3
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getStatusCode()I
sipush 200
if_icmpne L3
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
sipush 200
if_icmpne L3
aload 1
ldc "oap_uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
lstore 2
L1:
lload 2
lreturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L3:
ldc2_w -1L
lreturn
.limit locals 4
.limit stack 3
.end method

.method private isBindSuccess(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)Z
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/getOapUid(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)J
ldc2_w -1L
lcmp
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method protected transient doInBackground([Lcom/nd/rj/common/login/jobnumber/ReqBind$BindRequestParams;)Ljava/lang/Object;
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuffer
dup
ldc ""
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 7
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;
invokestatic com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/access$000(Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;)Z
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/mParam Lcom/nd/rj/common/login/entity/LoginParam;
aload 7
invokestatic com/nd/rj/common/login/LoginInterfaceManager/normalLogin(Landroid/content/Context;ZLcom/nd/rj/common/login/entity/LoginParam;Ljava/lang/StringBuffer;)Z
istore 2
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;
invokestatic com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/access$000(Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;)Z
ifeq L3
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;
iconst_0
invokestatic com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/access$002(Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;Z)Z
pop
L3:
iload 2
ifeq L4
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;
astore 5
aload 5
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getIUser(Landroid/content/Context;)Lcom/product/android/business/login/IGetUserInfo;
astore 6
new com/nd/rj/common/login/jobnumber/ReqBind
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqBind/<init>()V
astore 8
aload 5
invokestatic com/common/android/utils/httpRequest/OapHttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 6
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
aload 8
aload 5
aconst_null
aload 1
iconst_0
aaload
invokeinterface com/nd/rj/common/serverinterfaces/ServerInterface/communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse; 3
astore 1
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/isBindSuccess(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)Z
ifeq L5
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/getOapUid(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)J
lstore 3
new com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams/<init>()V
astore 7
aload 7
ldc ""
putfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams/mClentInfo Ljava/lang/String;
aload 7
aload 6
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
putfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams/mUapSid Ljava/lang/String;
new com/nd/rj/common/login/jobnumber/ReqUserCheck
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqUserCheck/<init>()V
aload 5
aconst_null
aload 7
invokeinterface com/nd/rj/common/serverinterfaces/ServerInterface/communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse; 3
astore 7
aload 7
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getStatusCode()I
sipush 200
if_icmpeq L6
L0:
new org/json/JSONObject
dup
aload 7
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getResponseContent()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aconst_null
areturn
L6:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
aload 6
invokevirtual com/product/android/business/ApplicationVariable/setIUser(Lcom/product/android/business/login/IGetUserInfo;)V
ldc2_w 5000L
invokestatic com/common/android/utils/concurrent/NdExecutors/wait4Quit(J)Z
ifne L7
L7:
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;
invokestatic com/nd/android/u/cloud/helper/Utils/switchUserClearData(Landroid/content/Context;)V
invokestatic com/nd/android/u/cloud/helper/Utils/startIMSRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/preloadWhenSuccessfulLogin()V
new com/nd/android/u/cloud/com/OapFriendRecommendCom
dup
invokespecial com/nd/android/u/cloud/com/OapFriendRecommendCom/<init>()V
lload 3
invokevirtual com/nd/android/u/cloud/com/OapFriendRecommendCom/getStudentInfo(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 6
aload 6
ifnull L8
aload 0
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getGuideFlag()Z
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/mHasGuide Z
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/mHasGuide Z
ifeq L8
aload 5
iconst_1
lload 3
invokestatic com/nd/android/u/cloud/helper/Utils/setGuideFlag(Landroid/content/Context;ZJ)V
L8:
aload 1
areturn
L5:
iconst_0
ifne L4
aload 1
ifnull L4
aload 0
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getResponseContent()Ljava/lang/String;
invokespecial com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/getBindErrorMsg(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 1
areturn
L4:
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 9
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Lcom/nd/rj/common/login/jobnumber/ReqBind$BindRequestParams;
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/doInBackground([Lcom/nd/rj/common/login/jobnumber/ReqBind$BindRequestParams;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;
astore 2
aload 2
invokevirtual android/app/Activity/isFinishing()Z
ifeq L0
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/mPD Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 1
instanceof java/lang/String
ifeq L1
aload 2
aload 1
checkcast java/lang/String
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;Ljava/lang/String;)V
return
L1:
aload 1
instanceof java/lang/Integer
ifeq L2
aload 2
aload 1
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
L2:
aload 1
instanceof com/nd/rj/common/serverinterfaces/OriginalHttpResponse
ifeq L3
invokestatic com/common/android/utils/StackManager/closeActivitys()V
aload 0
aload 1
checkcast com/nd/rj/common/serverinterfaces/OriginalHttpResponse
invokespecial com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/isBindSuccess(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)Z
ifeq L3
getstatic com/product/android/business/switchUser/SwitchUserReloadManager/INSTANCE Lcom/product/android/business/switchUser/SwitchUserReloadManager;
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager/setAllReloadFlag()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/mHasGuide Z
ifeq L4
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
L5:
aload 2
iconst_m1
invokevirtual android/app/Activity/setResult(I)V
aload 2
invokevirtual android/app/Activity/finish()V
return
L4:
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;
ldc com/nd/android/u/cloud/activity/welcome/WelcomeActivity
invokestatic com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity/access$100(Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;Ljava/lang/Class;)V
goto L5
L3:
aload 2
ldc_w 2131494453
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingExistActivity;
astore 1
aload 0
aload 1
aconst_null
aload 1
ldc_w 2131493984
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/guide/AccountSettingExistActivity$BindTask/mPD Landroid/app/ProgressDialog;
return
.limit locals 2
.limit stack 5
.end method
