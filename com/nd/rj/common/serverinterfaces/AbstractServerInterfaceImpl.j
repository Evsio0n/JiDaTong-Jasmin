.bytecode 50.0
.class public synchronized abstract com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl
.super java/lang/Object
.implements com/nd/rj/common/serverinterfaces/ServerInterface

.field protected static final 'INVALID_VALUE' I = -1


.field private final 'RETRY_CODE' I

.field private final 'TIMES' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_3
putfield com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/TIMES I
aload 0
sipush 401
putfield com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/RETRY_CODE I
return
.limit locals 1
.limit stack 2
.end method

.method protected static isIntValueUsefully(I)Z
iload 0
iconst_m1
if_icmpeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected static isStrValuesValid(Ljava/util/List;)Z
.signature "(Ljava/util/List<Ljava/lang/String;>;)Z"
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L0:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method private joinUrl(Ljava/util/Map;)Ljava/lang/String;
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/lang/String;"
new java/lang/StringBuilder
dup
aload 0
invokevirtual com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/requestUrl()Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 2
aload 1
ifnull L0
aload 1
invokeinterface java/util/Map/isEmpty()Z 0
ifne L0
aload 2
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
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
goto L1
L2:
aload 2
aload 2
invokevirtual java/lang/StringBuilder/length()I
iconst_1
isub
invokevirtual java/lang/StringBuilder/deleteCharAt(I)Ljava/lang/StringBuilder;
pop
L0:
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method private requestObjVerify(Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lorg/json/JSONObject;
aload 1
ifnonnull L0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
L0:
aload 1
invokeinterface com/nd/rj/common/serverinterfaces/JsonBodyParamsConvert/isObjectValid()Z 0
ifeq L1
aload 1
invokeinterface com/nd/rj/common/serverinterfaces/JsonBodyParamsConvert/doConvert()Lorg/json/JSONObject; 0
areturn
L1:
new java/security/InvalidParameterException
dup
ldc "Invalid parameter(requestParams)"
invokespecial java/security/InvalidParameterException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;
aload 2
ifnonnull L0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
L1:
iconst_3
istore 4
L2:
iload 4
iconst_1
isub
istore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
aload 0
invokevirtual com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/getHttpMethod()Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
astore 7
aload 7
getstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/GET Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
if_acmpne L3
aload 1
invokestatic com/common/android/utils/httpRequest/OapHttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 0
aload 2
invokespecial com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/joinUrl(Ljava/util/Map;)Ljava/lang/String;
aload 6
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 4
L4:
iload 4
sipush 401
if_icmpne L5
iload 5
ifle L6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/clearSid()V 0
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$MainModel/getRelginSid()Ljava/lang/String;
astore 6
iload 5
istore 4
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 1
aload 6
invokestatic com/nd/rj/common/login/LoginInterfaceManager/reSetSid(Landroid/content/Context;Ljava/lang/String;)V
iload 5
istore 4
goto L2
L0:
aload 2
invokeinterface com/nd/rj/common/serverinterfaces/UrlParamsConvert/isObjectValid()Z 0
ifeq L7
aload 2
invokeinterface com/nd/rj/common/serverinterfaces/UrlParamsConvert/doConvert()Ljava/util/Map; 0
astore 2
goto L1
L7:
new java/security/InvalidParameterException
dup
ldc "Invalid parameter(urlParams)"
invokespecial java/security/InvalidParameterException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 7
getstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/POST Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
if_acmpne L8
aload 1
invokestatic com/common/android/utils/httpRequest/OapHttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 0
aload 2
invokespecial com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/joinUrl(Ljava/util/Map;)Ljava/lang/String;
aload 0
aload 3
invokespecial com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/requestObjVerify(Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lorg/json/JSONObject;
aload 6
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 4
goto L4
L8:
new java/security/InvalidParameterException
dup
ldc "Unsupported http method"
invokespecial java/security/InvalidParameterException/<init>(Ljava/lang/String;)V
athrow
L6:
new com/nd/rj/common/serverinterfaces/OriginalHttpResponse
dup
iload 4
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/serverinterfaces/OriginalHttpResponse/<init>(ILjava/lang/String;)V
areturn
L5:
new com/nd/rj/common/serverinterfaces/OriginalHttpResponse
dup
iload 4
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/serverinterfaces/OriginalHttpResponse/<init>(ILjava/lang/String;)V
areturn
.limit locals 8
.limit stack 4
.end method

.method public resolveResponse(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
.catch org/json/JSONException from L0 to L1 using L2
L0:
aload 0
new org/json/JSONObject
dup
aload 1
invokevirtual com/nd/rj/common/serverinterfaces/OriginalHttpResponse/getResponseContent()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/resolveBusinessResponse(Lorg/json/JSONObject;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>()V
areturn
.limit locals 2
.limit stack 4
.end method
