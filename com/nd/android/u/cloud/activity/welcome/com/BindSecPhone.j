.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/BindSecPhone
.super com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl
.inner class public static BindSecPhoneReqParams inner com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams outer com/nd/android/u/cloud/activity/welcome/com/BindSecPhone
.inner class public static BindSecPhoneResponse inner com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneResponse outer com/nd/android/u/cloud/activity/welcome/com/BindSecPhone

.method public <init>()V
aload 0
invokespecial com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private joinUrl(Ljava/util/Map;)Ljava/lang/String;
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/lang/String;"
new java/lang/StringBuilder
dup
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/com/BindSecPhone/requestUrl()Ljava/lang/String;
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
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/com/BindSecPhone/getHttpMethod()Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
getstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/POST Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
if_acmpne L2
aload 1
invokestatic com/common/android/utils/httpRequest/OapHttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
new com/nd/rj/common/serverinterfaces/OriginalHttpResponse
dup
aload 1
aload 0
aload 2
invokespecial com/nd/android/u/cloud/activity/welcome/com/BindSecPhone/joinUrl(Ljava/util/Map;)Ljava/lang/String;
aload 0
aload 3
invokespecial com/nd/android/u/cloud/activity/welcome/com/BindSecPhone/requestObjVerify(Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lorg/json/JSONObject;
aload 4
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/serverinterfaces/OriginalHttpResponse/<init>(ILjava/lang/String;)V
areturn
L0:
aload 2
invokeinterface com/nd/rj/common/serverinterfaces/UrlParamsConvert/isObjectValid()Z 0
ifeq L3
aload 2
invokeinterface com/nd/rj/common/serverinterfaces/UrlParamsConvert/doConvert()Ljava/util/Map; 0
astore 2
goto L1
L3:
new java/security/InvalidParameterException
dup
ldc "Invalid parameter(urlParams)"
invokespecial java/security/InvalidParameterException/<init>(Ljava/lang/String;)V
athrow
L2:
new java/security/InvalidParameterException
dup
ldc "Unsupported http method"
invokespecial java/security/InvalidParameterException/<init>(Ljava/lang/String;)V
athrow
.limit locals 5
.limit stack 6
.end method

.method public getHttpMethod()Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
getstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/POST Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
areturn
.limit locals 1
.limit stack 1
.end method

.method public requestUrl()Ljava/lang/String;
ldc "https://uap.99.com/ndsoap/bindsecphone"
areturn
.limit locals 1
.limit stack 1
.end method

.method public resolveBusinessResponse(Lorg/json/JSONObject;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L0
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
ldc "\u53d1\u9001\u77ed\u4fe1\u9a8c\u8bc1\u7801\u6210\u529f"
if_acmpne L0
new com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneResponse
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneResponse/<init>()V
astore 2
aload 2
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneResponse/mMsg Ljava/lang/String;
aload 2
invokevirtual com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneResponse/isObjectValid()Z
ifeq L1
aload 2
iconst_0
putfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneResponse/mIsSuccess I
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/S_BUSINESS_SUCCESS Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 2
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L1:
aload 2
iconst_1
putfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneResponse/mIsSuccess I
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_SUCCESS_CONTENT_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 2
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L0:
new com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneResponse
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneResponse/<init>()V
astore 2
aload 2
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneResponse/mMsg Ljava/lang/String;
aload 2
iconst_1
putfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneResponse/mIsSuccess I
aload 2
invokevirtual com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneResponse/isObjectValid()Z
ifeq L2
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 2
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L2:
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL_CONTENT_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 2
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
.limit locals 3
.limit stack 4
.end method
