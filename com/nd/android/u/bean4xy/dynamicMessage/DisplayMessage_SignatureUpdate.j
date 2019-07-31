.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SignatureUpdate
.super com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Person;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg/<init>(Landroid/content/Context;Lcom/nd/android/u/bean4xy/DisplayMessage_Person;)V
return
.limit locals 3
.limit stack 3
.end method

.method public prepareMessage()Z
.catch org/json/JSONException from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SignatureUpdate/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 1
ldc "time"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SignatureUpdate/createDate J
aload 0
aload 1
ldc "jsonbody"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
ldc "content"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SignatureUpdate/displayContent Ljava/lang/String;
L1:
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SignatureUpdate/uidFrom J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SignatureUpdate/operatorName Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SignatureUpdate/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/signature_update I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SignatureUpdate/operatorName Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SignatureUpdate/displayTitle Ljava/lang/String;
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 2
.limit stack 7
.end method
