.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewJuniorRequest
.super com/nd/android/u/bean4xy/DisplayMessage_App

.field public 'msgDesc' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewJuniorRequest/isShowInList Z
return
.limit locals 1
.limit stack 2
.end method

.method public prepareMessage()Z
.catch org/json/JSONException from L0 to L1 using L2
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewJuniorRequest/oriMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
iconst_0
ireturn
L3:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/notifyNewJuniorRequest(Lcom/nd/android/u/bean4xy/DisplayMessage_App;)V 1
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewJuniorRequest/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 1
ldc "bussid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewJuniorRequest/bussinessId Ljava/lang/String;
aload 0
aload 1
ldc "msgtype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewJuniorRequest/appMsgType I
aload 0
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_NewJuniorRequest/appType Ljava/lang/String;
L1:
iconst_0
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
