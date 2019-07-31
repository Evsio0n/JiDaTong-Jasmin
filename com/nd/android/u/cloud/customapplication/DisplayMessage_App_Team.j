.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team
.super com/nd/android/u/bean4xy/DisplayMessage_App

.field public static final 'OPT_APPROVAL_APPROVE' I = 1


.field public static final 'OPT_APPROVAL_REJECT' I = -1


.field public 'approvalAction' I

.field public 'approvalInfo' Ljava/lang/String;

.field public 'avatar' Ljava/lang/String;

.field public 'displayContent' Ljava/lang/String;

.field public 'teamId' I

.field public 'teamName' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private getDataFromJson(Lorg/json/JSONObject;)V
aload 0
aload 1
ldc "id"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/teamId I
aload 0
aload 1
ldc "approval_info"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/approvalInfo Ljava/lang/String;
aload 0
aload 1
ldc "avatar"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/avatar Ljava/lang/String;
aload 0
aload 1
ldc "name"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/teamName Ljava/lang/String;
aload 0
aload 1
ldc "approval_action"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/approvalAction I
return
.limit locals 2
.limit stack 3
.end method

.method public getAppName(Landroid/content/Context;)Ljava/lang/String;
ldc "\u5c0f\u7ec4\u670d\u52a1"
areturn
.limit locals 2
.limit stack 1
.end method

.method public prepareMessage()Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 1
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/oriMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
aload 0
aload 2
ldc "bussid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/bussinessId Ljava/lang/String;
aload 0
aload 2
ldc "msgtype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/appMsgType I
aload 0
aload 2
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/appType Ljava/lang/String;
aload 2
ldc "msgbody"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
astore 2
L1:
aload 2
ifnull L4
L3:
aload 0
aload 2
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/getDataFromJson(Lorg/json/JSONObject;)V
L4:
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/approvalAction I
iconst_m1
if_icmpne L7
aload 0
aload 1
ldc_w 2131493382
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/teamName Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/approvalInfo Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/displayContent Ljava/lang/String;
L5:
aload 0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/displayContent Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/setDisPlayContent(Ljava/lang/String;)V
L6:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
L7:
aload 0
aload 1
ldc_w 2131493384
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/teamName Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Team/displayContent Ljava/lang/String;
L8:
goto L5
.limit locals 3
.limit stack 6
.end method

.method public showContactPortrait(Landroid/widget/ImageView;)V
aload 1
ldc_w 2130838811
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 2
.limit stack 2
.end method
