.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/DisplayMessage_App_SecretLove
.super com/nd/android/u/bean4xy/DisplayMessage_App

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
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SecretLove/oriMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L7
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SecretLove/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
aload 0
aload 2
ldc "bussid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SecretLove/bussinessId Ljava/lang/String;
aload 0
aload 2
ldc "msgtype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SecretLove/appMsgType I
aload 0
aload 2
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SecretLove/appType Ljava/lang/String;
aload 2
ldc "msgbody"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
ldc "@picture"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
L1:
iload 1
iconst_m1
if_icmple L5
L3:
aload 0
aload 2
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SecretLove/displayContent Ljava/lang/String;
L4:
iconst_0
ireturn
L5:
aload 0
aload 2
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SecretLove/displayContent Ljava/lang/String;
L6:
iconst_0
ireturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SecretLove/oriMessage Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_SecretLove/displayContent Ljava/lang/String;
L7:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method
