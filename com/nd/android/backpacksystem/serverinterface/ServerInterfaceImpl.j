.bytecode 50.0
.class public synchronized abstract com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl
.super java/lang/Object
.implements com/nd/android/backpacksystem/serverinterface/ServerInterface

.field public static final 'INVALID_VALUE' I = -1


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private joinUrl(Ljava/util/Map;)Ljava/lang/String;
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/lang/String;"
aload 1
ifnonnull L0
ldc ""
areturn
L0:
aload 1
ldc "sid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 1
ldc "cuid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
new java/lang/StringBuilder
dup
invokestatic com/product/android/business/config/Configuration/getFlowerServerUrl()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 2
aload 2
aload 0
invokevirtual com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl/requestStr()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
ifnull L1
aload 1
invokeinterface java/util/Map/isEmpty()Z 0
ifne L1
aload 2
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 2
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L2
L3:
aload 2
aload 2
invokevirtual java/lang/StringBuilder/length()I
iconst_1
isub
invokevirtual java/lang/StringBuilder/deleteCharAt(I)Ljava/lang/StringBuilder;
pop
L1:
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method private requestObjVerify(Ljava/lang/Object;)Lorg/json/JSONObject;
aload 1
ifnull L0
aload 0
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl/requestObj(Ljava/lang/Object;)Lorg/json/JSONObject;
astore 1
aload 1
ifnull L0
aload 1
areturn
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
.limit locals 2
.limit stack 2
.end method

.method public communicate(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Lcom/nd/android/backpacksystem/serverinterface/RequestResult;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
iconst_3
istore 4
L0:
iload 4
iconst_1
isub
istore 5
sipush 404
istore 4
aload 0
aload 2
invokevirtual com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl/requestUrlParams(Ljava/lang/Object;)Ljava/util/Map;
astore 7
aload 0
invokevirtual com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl/getHttpMethod()Lcom/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod;
astore 8
aload 8
getstatic com/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod/GET Lcom/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod;
invokevirtual com/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod/equals(Ljava/lang/Object;)Z
ifeq L1
aload 1
invokestatic com/common/android/utils/httpRequest/OapHttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 0
aload 7
invokespecial com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl/joinUrl(Ljava/util/Map;)Ljava/lang/String;
aload 6
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 4
L2:
iload 4
sipush 401
if_icmpne L3
iload 5
ifle L4
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$MainModel/getRelginSid()Ljava/lang/String;
pop
iload 5
istore 4
goto L0
L1:
aload 8
getstatic com/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod/POST Lcom/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod;
invokevirtual com/nd/android/backpacksystem/serverinterface/ServerInterface$HttpMethod/equals(Ljava/lang/Object;)Z
ifeq L2
aload 1
invokestatic com/common/android/utils/httpRequest/OapHttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 0
aload 7
invokespecial com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl/joinUrl(Ljava/util/Map;)Ljava/lang/String;
aload 0
aload 3
invokespecial com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl/requestObjVerify(Ljava/lang/Object;)Lorg/json/JSONObject;
aload 6
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 4
goto L2
L4:
new com/nd/android/backpacksystem/serverinterface/RequestResult
dup
iload 4
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/android/backpacksystem/serverinterface/RequestResult/<init>(ILjava/lang/String;)V
areturn
L3:
new com/nd/android/backpacksystem/serverinterface/RequestResult
dup
iload 4
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/android/backpacksystem/serverinterface/RequestResult/<init>(ILjava/lang/String;)V
areturn
.limit locals 9
.limit stack 4
.end method

.method public requestObj(Ljava/lang/Object;)Lorg/json/JSONObject;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public resolveResponse(Lcom/nd/android/backpacksystem/serverinterface/RequestResult;)Lcom/nd/android/backpacksystem/serverinterface/ResolvedResponse;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
L0:
new org/json/JSONObject
dup
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/RequestResult/getRetResponse()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
aload 1
invokevirtual com/nd/android/backpacksystem/serverinterface/RequestResult/getRetCode()I
sipush 200
if_icmpne L1
new com/nd/android/backpacksystem/serverinterface/ResolvedResponse
dup
iconst_1
aload 0
aload 2
invokevirtual com/nd/android/backpacksystem/serverinterface/ServerInterfaceImpl/resolveSuccessResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
invokespecial com/nd/android/backpacksystem/serverinterface/ResolvedResponse/<init>(ZLjava/lang/Object;)V
areturn
L1:
new com/nd/android/backpacksystem/serverinterface/ResolvedResponse
dup
iconst_0
aload 2
ldc "msg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/nd/android/backpacksystem/serverinterface/ResolvedResponse/<init>(ZLjava/lang/Object;)V
astore 1
L3:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
new com/nd/android/backpacksystem/serverinterface/ResolvedResponse
dup
invokespecial com/nd/android/backpacksystem/serverinterface/ResolvedResponse/<init>()V
areturn
.limit locals 3
.limit stack 5
.end method
