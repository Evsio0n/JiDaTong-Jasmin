.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans
.super com/nd/android/u/bean4xy/DisplayMessage_App

.field public 'msgDesc' Ljava/lang/String;

.field public 'uid' J

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
ldc "fans_uid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
i2l
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans/uid J
aload 0
aload 1
ldc "msg_desc"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans/msgDesc Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method public prepareMessage()Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans/oriMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L5:
iconst_0
ireturn
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 1
ldc "bussid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans/bussinessId Ljava/lang/String;
aload 0
aload 1
ldc "msgtype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans/appMsgType I
aload 0
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans/appType Ljava/lang/String;
aload 1
ldc "msgbody"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
L1:
aload 1
ifnull L5
L3:
aload 0
aload 1
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewFans/getDataFromJson(Lorg/json/JSONObject;)V
L4:
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public showNotify()V
return
.limit locals 1
.limit stack 0
.end method
