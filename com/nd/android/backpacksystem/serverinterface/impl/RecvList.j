.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/impl/RecvList
.super com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl

.field public static final 'FETCH_SIZE_EACH_TIME' I = 20


.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getHttpMethod()Lcom/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod;
getstatic com/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod/GET Lcom/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod;
areturn
.limit locals 1
.limit stack 1
.end method

.method public requestStr()Ljava/lang/String;
ldc "itemc/recvlist"
areturn
.limit locals 1
.limit stack 1
.end method

.method public requestUrlParams(Ljava/lang/Object;)Ljava/util/Map;
.signature "(Ljava/lang/Object;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
aload 1
instanceof com/nd/android/backpacksystem/serverinterface/impl/StartCountParams
ifne L0
new java/util/HashMap
dup
iconst_0
invokespecial java/util/HashMap/<init>(I)V
areturn
L0:
aload 1
checkcast com/nd/android/backpacksystem/serverinterface/impl/StartCountParams
astore 1
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/isObjectValid()Z
ifeq L1
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/doConvert()Ljava/util/Map;
areturn
L1:
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
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 1
ldc "data"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
invokevirtual org/json/JSONArray/length()I
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 5
new com/nd/android/backpacksystem/data/ReceiveItems
dup
invokespecial com/nd/android/backpacksystem/data/ReceiveItems/<init>()V
astore 6
aload 6
aload 5
ldc "fuid"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
putfield com/nd/android/backpacksystem/data/ReceiveItems/mFromUid J
aload 6
aload 5
ldc "itemtype"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
putfield com/nd/android/backpacksystem/data/ReceiveItems/mItemType J
aload 6
aload 5
ldc "count"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
putfield com/nd/android/backpacksystem/data/ReceiveItems/mAmount I
aload 6
aload 5
ldc "message"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/backpacksystem/data/ReceiveItems/mMessage Ljava/lang/String;
aload 6
aload 5
ldc "voiceurl"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/backpacksystem/data/ReceiveItems/mVoiceUrl Ljava/lang/String;
aload 6
aload 5
ldc "updatetime"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
putfield com/nd/android/backpacksystem/data/ReceiveItems/mUpdateTime J
aload 6
aload 5
ldc "servertime"
ldc2_w -1L
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
putfield com/nd/android/backpacksystem/data/ReceiveItems/mServerTime J
aload 6
invokevirtual com/nd/android/backpacksystem/data/ReceiveItems/isObjectValid()Z
ifeq L2
aload 4
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 4
areturn
.limit locals 7
.limit stack 5
.end method
