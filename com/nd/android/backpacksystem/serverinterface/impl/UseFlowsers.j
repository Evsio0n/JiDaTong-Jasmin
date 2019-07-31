.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers
.super com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem
.inner class public static UseFlowsersRequestParams inner com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers$UseFlowsersRequestParams outer com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers

.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public requestObj(Ljava/lang/Object;)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
aload 1
instanceof com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers$UseFlowsersRequestParams
ifne L3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
L3:
aload 1
checkcast com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers$UseFlowsersRequestParams
astore 2
aload 2
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers$UseFlowsersRequestParams/isObjectValid()Z
ifne L4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
L4:
aload 0
aload 2
getfield com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers$UseFlowsersRequestParams/mAbstractParams Lcom/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams;
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers/requestObjHelper(Ljava/lang/Object;)Lorg/json/JSONObject;
astore 1
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
L0:
aload 3
ldc "tuid"
aload 2
getfield com/nd/android/backpacksystem/serverinterface/impl/UseFlowsers$UseFlowsersRequestParams/mToUid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 1
ldc "sendflower"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 1
areturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 1
areturn
.limit locals 4
.limit stack 4
.end method

.method public resolveSuccessResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
