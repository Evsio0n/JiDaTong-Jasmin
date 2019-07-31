.bytecode 50.0
.class public synchronized abstract com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem
.super com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl
.inner class public static AbstractRequestParams inner com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams outer com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem

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

.method protected requestObjHelper(Ljava/lang/Object;)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 1
instanceof com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams
ifne L3
L4:
aload 2
areturn
L3:
aload 1
checkcast com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams
astore 1
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams/isObjectValid()Z
ifeq L4
L0:
aload 2
ldc "itemid"
aload 1
getfield com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams/mItemId J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "amount"
aload 1
getfield com/nd/android/backpacksystem/serverinterface/impl/AbstractUseItem$AbstractRequestParams/mAmount J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 2
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public requestStr()Ljava/lang/String;
ldc "itemc/useitem"
areturn
.limit locals 1
.limit stack 1
.end method

.method public requestUrlParams(Ljava/lang/Object;)Ljava/util/Map;
.signature "(Ljava/lang/Object;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
areturn
.limit locals 2
.limit stack 2
.end method
