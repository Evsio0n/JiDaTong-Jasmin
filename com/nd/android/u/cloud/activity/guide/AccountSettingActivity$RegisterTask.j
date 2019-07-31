.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Lcom/nd/rj/common/login/jobnumber/ReqRegister$RegisterRequestParams;Ljava/lang/Void;Ljava/lang/Object;>;"
.inner class private RegisterTask inner com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask outer com/nd/android/u/cloud/activity/guide/AccountSettingActivity

.field private 'mHasGuide' Z

.field private 'mPD' Landroid/app/ProgressDialog;

.field private 'mUserName' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/<init>(Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Lcom/nd/rj/common/login/jobnumber/ReqRegister$RegisterRequestParams;)Ljava/lang/Object;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L6 to L7 using L2
.catch java/lang/Exception from L7 to L8 using L9
.catch org/json/JSONException from L7 to L8 using L2
.catch java/lang/Exception from L10 to L11 using L9
.catch org/json/JSONException from L10 to L11 using L2
.catch java/lang/Exception from L11 to L12 using L9
.catch org/json/JSONException from L11 to L12 using L2
.catch org/json/JSONException from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L9
.catch org/json/JSONException from L15 to L16 using L2
.catch org/json/JSONException from L17 to L18 using L2
.catch org/json/JSONException from L18 to L19 using L2
new com/nd/rj/common/login/jobnumber/ReqRegister
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqRegister/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
aconst_null
aload 1
iconst_0
aaload
invokeinterface com/nd/rj/common/serverinterfaces/ServerInterface/communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse; 3
astore 1
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getStatusCode()I
sipush 200
if_icmpne L14
L0:
new org/json/JSONObject
dup
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getResponseContent()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 8
aload 8
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 2
L1:
iload 2
sipush 200
if_icmpne L20
L3:
aload 8
ldc "uap_uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
lstore 5
aload 8
ldc "oap_uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
lstore 3
aload 8
ldc "uap_sid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 7
new com/nd/rj/common/login/entity/OapUser
dup
invokespecial com/nd/rj/common/login/entity/OapUser/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/mUserName Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/account Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
aload 7
invokestatic com/nd/rj/common/login/LoginInterfaceManager/reSetSid(Landroid/content/Context;Ljava/lang/String;)V
aload 1
lload 5
putfield com/nd/rj/common/login/entity/OapUser/uapUid J
aload 1
lload 3
putfield com/nd/rj/common/login/entity/OapUser/oapUid J
aload 1
aload 8
ldc "ticket"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/ticket Ljava/lang/String;
aload 1
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
putfield com/nd/rj/common/login/entity/OapUser/oapUnitId I
aload 1
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
invokevirtual com/product/android/business/ApplicationVariable$IDENTITY/getValue()I
putfield com/nd/rj/common/login/entity/OapUser/type I
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
invokestatic com/nd/android/u/cloud/helper/Utils/getBlowfish(Landroid/content/Context;)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/blowFish Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
lload 5
aload 7
invokestatic com/nd/android/u/cloud/activity/guide/AccountSettingActivity/getUserNickName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
astore 8
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 1
aload 8
putfield com/nd/rj/common/login/entity/OapUser/nickName Ljava/lang/String;
L4:
aload 1
iconst_1
putfield com/nd/rj/common/login/entity/OapUser/isAutoLogin Z
aload 1
iconst_1
putfield com/nd/rj/common/login/entity/OapUser/isCurrentUser Z
aload 1
ldc "yyyy-MM-dd kk:mm:ss"
invokestatic java/lang/System/currentTimeMillis()J
invokestatic android/text/format/DateFormat/format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
putfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
new com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams/<init>()V
astore 8
aload 8
ldc ""
putfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams/mClentInfo Ljava/lang/String;
aload 8
aload 7
putfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams/mUapSid Ljava/lang/String;
new com/nd/rj/common/login/jobnumber/ReqUserCheck
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqUserCheck/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
aconst_null
aload 8
invokeinterface com/nd/rj/common/serverinterfaces/ServerInterface/communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse; 3
astore 8
aload 8
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getStatusCode()I
sipush 200
if_icmpeq L5
new org/json/JSONObject
dup
aload 8
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getResponseContent()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
areturn
L5:
new org/json/JSONObject
dup
aload 8
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getResponseContent()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "unitid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
lstore 5
ldc2_w 5000L
invokestatic com/common/android/utils/concurrent/NdExecutors/wait4Quit(J)Z
ifne L6
L6:
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
invokestatic com/nd/android/u/cloud/helper/Utils/switchUserClearData(Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
aload 1
invokestatic com/nd/rj/common/login/LoginInterfaceManager/saveOapUser(Landroid/content/Context;Lcom/nd/rj/common/login/entity/OapUser;)Z
ifeq L14
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getIUser(Landroid/content/Context;)Lcom/product/android/business/login/IGetUserInfo;
invokevirtual com/product/android/business/ApplicationVariable/setIUser(Lcom/product/android/business/login/IGetUserInfo;)V
L7:
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
lload 3
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aload 7
lload 5
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/activity/guide/AccountSettingActivity/access$200(Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
ifeq L15
new com/nd/android/u/cloud/com/OapFriendRecommendCom
dup
invokespecial com/nd/android/u/cloud/com/OapFriendRecommendCom/<init>()V
lload 3
invokevirtual com/nd/android/u/cloud/com/OapFriendRecommendCom/getStudentInfo(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 7
L8:
aload 7
ifnull L11
L10:
aload 0
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getGuideFlag()Z
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/mHasGuide Z
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/mHasGuide Z
ifeq L11
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
iconst_1
lload 3
invokestatic com/nd/android/u/cloud/helper/Utils/setGuideFlag(Landroid/content/Context;ZJ)V
L11:
invokestatic com/nd/android/u/cloud/helper/Utils/startIMSRelative()V
invokestatic com/nd/android/u/cloud/helper/Utils/preloadWhenSuccessfulLogin()V
L12:
aload 1
areturn
L9:
astore 1
L13:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L14:
aconst_null
areturn
L15:
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
ldc_w 2131494393
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/getString(I)Ljava/lang/String;
astore 1
L16:
aload 1
areturn
L20:
iload 2
sipush 419
if_icmpne L18
L17:
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L18:
aload 8
ldc "msg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L19:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L14
.limit locals 9
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Lcom/nd/rj/common/login/jobnumber/ReqRegister$RegisterRequestParams;
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/doInBackground([Lcom/nd/rj/common/login/jobnumber/ReqRegister$RegisterRequestParams;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
astore 2
aload 2
invokevirtual android/app/Activity/isFinishing()Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/mPD Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 1
instanceof com/nd/rj/common/login/entity/OapUser
ifeq L2
invokestatic com/common/android/utils/StackManager/closeActivitys()V
getstatic com/product/android/business/switchUser/SwitchUserReloadManager/INSTANCE Lcom/product/android/business/switchUser/SwitchUserReloadManager;
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager/setAllReloadFlag()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/mHasGuide Z
ifeq L3
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
invokestatic com/nd/android/u/cloud/helper/Utils/lunchMainLifeActivity(Landroid/content/Context;)V
L4:
aload 2
iconst_m1
invokevirtual android/app/Activity/setResult(I)V
aload 2
invokevirtual android/app/Activity/finish()V
return
L3:
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
ldc com/nd/android/u/cloud/activity/welcome/WelcomeActivity
invokestatic com/nd/android/u/cloud/activity/guide/AccountSettingActivity/access$300(Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;Ljava/lang/Class;)V
goto L4
L2:
aload 1
instanceof java/lang/String
ifeq L5
aload 2
aload 1
checkcast java/lang/String
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;Ljava/lang/String;)V
return
L5:
aload 1
instanceof java/lang/Integer
ifeq L6
aload 1
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
sipush 419
if_icmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
ldc_w 2131624032
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
ldc_w 2131624033
invokevirtual com/nd/android/u/cloud/activity/guide/AccountSettingActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
L6:
aload 2
ldc_w 2131494453
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
invokestatic com/nd/android/u/cloud/activity/guide/AccountSettingActivity/access$100(Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/mUserName Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/this$0 Lcom/nd/android/u/cloud/activity/guide/AccountSettingActivity;
astore 1
aload 0
aload 1
aconst_null
aload 1
ldc_w 2131493984
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/guide/AccountSettingActivity$RegisterTask/mPD Landroid/app/ProgressDialog;
return
.limit locals 2
.limit stack 5
.end method
