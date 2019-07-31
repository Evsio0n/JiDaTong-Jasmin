.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SearchChat
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

.method public clickPortrait(ZLandroid/content/Context;)V
return
.limit locals 3
.limit stack 0
.end method

.method public prepareMessage()Z
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SearchChat/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "jsonbody"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
ldc "friendName"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SearchChat/operatorName Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SearchChat/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/search_chat I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SearchChat/operatorName Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_SearchChat/displayTitle Ljava/lang/String;
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
.limit stack 7
.end method
