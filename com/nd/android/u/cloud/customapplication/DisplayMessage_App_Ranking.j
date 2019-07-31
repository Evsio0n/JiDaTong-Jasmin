.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking
.super com/nd/android/u/bean4xy/DisplayMessage_App

.field public static final 'TYPE_WEEKLY_FLOWER' I = 1


.field public 'textType' I

.field public 'title' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public prepareMessage()Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/oriMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L6
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 1
ldc "bussid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/bussinessId Ljava/lang/String;
aload 0
aload 1
ldc "msgtype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/appMsgType I
aload 0
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/appType Ljava/lang/String;
aload 1
ldc "msgbody"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
astore 2
L1:
aload 2
astore 1
aload 2
ifnonnull L4
L3:
aload 3
ldc "\\\\"
ldc ""
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/chatUiUtils/ChatCommonUtils/analyMessageByJSON(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
L4:
aload 1
ifnull L6
L5:
aload 0
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/textType I
aload 0
aload 1
ldc "content"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/displayContent Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/textType I
iconst_1
if_icmpne L6
aload 0
aload 1
ldc "title"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/title Ljava/lang/String;
L6:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/oriMessage Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Ranking/displayContent Ljava/lang/String;
goto L6
.limit locals 4
.limit stack 3
.end method
