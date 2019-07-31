.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/impl/Give
.super com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl
.inner class public static GiveRequestParams inner com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams outer com/nd/android/backpacksystem/serverinterface/impl/Give
.inner class public static GiveResponse inner com/nd/android/backpacksystem/serverinterface/impl/Give$GiveResponse outer com/nd/android/backpacksystem/serverinterface/impl/Give

.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getHttpMethod()Lcom/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod;
getstatic com/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod/POST Lcom/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod;
areturn
.limit locals 1
.limit stack 1
.end method

.method public requestObj(Ljava/lang/Object;)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
.catch org/json/JSONException from L4 to L5 using L2
aload 1
instanceof com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams
ifne L6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L7:
aload 1
areturn
L6:
aload 1
checkcast com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams
astore 3
aload 3
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/isObjectValid()Z
ifne L8
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
L8:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
L0:
aload 2
ldc "tuid"
aload 3
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mToUid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "itemid"
aload 3
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mItemId J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "amount"
aload 3
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mAmount I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 3
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mMessage Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 2
ldc "message"
aload 3
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mMessage Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 3
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mVoiceData Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 2
ldc "voicedata"
aload 3
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mVoiceData Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 2
astore 1
L4:
aload 3
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mVoiceExt Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L7
aload 2
ldc "voiceext"
aload 3
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mVoiceExt Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L5:
aload 2
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public requestStr()Ljava/lang/String;
ldc "itemc/give"
areturn
.limit locals 1
.limit stack 1
.end method

.method public requestUrlParams(Ljava/lang/Object;)Ljava/util/Map;
.signature "(Ljava/lang/Object;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
new java/util/HashMap
dup
iconst_0
invokespecial java/util/HashMap/<init>(I)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public resolveSuccessResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
.throws org/json/JSONException
new com/nd/android/backpacksystem/serverinterface/impl/Give$GiveResponse
dup
invokespecial com/nd/android/backpacksystem/serverinterface/impl/Give$GiveResponse/<init>()V
astore 2
aload 2
aload 1
ldc "itemid_num"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
putfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveResponse/mItemNum I
aload 2
aload 1
ldc "url"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveResponse/mVoiceUrl Ljava/lang/String;
aload 2
areturn
.limit locals 3
.limit stack 4
.end method
