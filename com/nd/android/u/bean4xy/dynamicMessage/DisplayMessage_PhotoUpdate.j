.bytecode 50.0
.class public synchronized com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate
.super com/nd/android/u/bean4xy/dynamicMessage/BasePersonDynMsg

.field protected 'imgList' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/String;>;"

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

.method public getImageList()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/lang/String;>;"
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate/imgList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public prepareMessage()Z
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
L0:
new org/json/JSONObject
dup
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate/oriMessage Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
aload 0
aload 2
ldc "time"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate/createDate J
aload 2
ldc "jsonbody"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 3
aload 3
ldc "imagepre"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 3
ldc "images"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 3
L1:
aload 3
ifnull L7
L3:
aload 0
new java/util/ArrayList
dup
aload 3
invokevirtual org/json/JSONArray/length()I
invokespecial java/util/ArrayList/<init>(I)V
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate/imgList Ljava/util/List;
L4:
iconst_0
istore 1
L5:
iload 1
aload 3
invokevirtual org/json/JSONArray/length()I
if_icmpge L7
aload 3
iload 1
invokevirtual org/json/JSONArray/opt(I)Ljava/lang/Object;
checkcast org/json/JSONObject
astore 4
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate/imgList Ljava/util/List;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
ldc "path"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L6:
iload 1
iconst_1
iadd
istore 1
goto L5
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
L7:
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate/uidFrom J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate/operatorName Ljava/lang/String;
aload 0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate/mContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/photo_update I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate/operatorName Ljava/lang/String;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
putfield com/nd/android/u/bean4xy/dynamicMessage/DisplayMessage_PhotoUpdate/displayTitle Ljava/lang/String;
iconst_0
ireturn
.limit locals 5
.limit stack 7
.end method
