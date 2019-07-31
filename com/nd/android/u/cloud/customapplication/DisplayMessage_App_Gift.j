.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/DisplayMessage_App_Gift
.super com/nd/android/u/bean4xy/DisplayMessage_App

.method public <init>()V
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected getBundle(Landroid/content/Context;)Landroid/os/Bundle;
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "fragment_type"
sipush 258
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public goDisplayActivity(Landroid/content/Context;)V
invokestatic com/nd/android/backpacksystem/fragment/GiftBoxFragment/clearUnreadGiftMsg()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "fragment_type"
sipush 258
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
aload 1
ldc com/nd/android/backpacksystem/activity/BackpackMainActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 3
.end method

.method public prepareMessage()Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Gift/oriMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L7:
iconst_0
ireturn
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Gift/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 1
ldc "bussid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Gift/bussinessId Ljava/lang/String;
aload 0
aload 1
ldc "msgtype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Gift/appMsgType I
aload 0
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Gift/appType Ljava/lang/String;
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
ifnull L7
L5:
aload 0
aload 1
ldc "content"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Gift/displayContent Ljava/lang/String;
L6:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 0
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Gift/oriMessage Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Gift/displayContent Ljava/lang/String;
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method protected saveToDb()V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Gift/oriMessage Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 11
ldc_w 112002
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 0
invokespecial com/nd/android/u/bean4xy/DisplayMessage_App/saveToDb()V
return
.limit locals 2
.limit stack 4
.end method
