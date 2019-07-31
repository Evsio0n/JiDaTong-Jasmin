.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/GetSecPhone
.super com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl
.inner class public static GetSecPhoneFailResponse inner com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneFailResponse outer com/nd/android/u/cloud/activity/welcome/com/GetSecPhone
.inner class public static GetSecPhoneReqParams inner com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneReqParams outer com/nd/android/u/cloud/activity/welcome/com/GetSecPhone
.inner class public static GetSecPhoneSuccessResponse inner com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneSuccessResponse outer com/nd/android/u/cloud/activity/welcome/com/GetSecPhone

.method public <init>()V
aload 0
invokespecial com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
iconst_0
istore 4
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetSecPhone/getHttpMethod()Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
getstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/GET Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
if_acmpne L0
aload 1
invokestatic com/common/android/utils/httpRequest/OapHttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetSecPhone/requestUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokeinterface com/nd/rj/common/serverinterfaces/UrlParamsConvert/doConvert()Ljava/util/Map; 0
ldc "uid"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 4
L0:
new com/nd/rj/common/serverinterfaces/OriginalHttpResponse
dup
iload 4
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/serverinterfaces/OriginalHttpResponse/<init>(ILjava/lang/String;)V
areturn
.limit locals 5
.limit stack 4
.end method

.method public getHttpMethod()Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
getstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/GET Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
areturn
.limit locals 1
.limit stack 1
.end method

.method public requestUrl()Ljava/lang/String;
ldc "https://uap.99.com/ndsoap/getsecphone/"
areturn
.limit locals 1
.limit stack 1
.end method

.method public resolveBusinessResponse(Lorg/json/JSONObject;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
aload 1
ldc "phone"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L0
new com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneSuccessResponse
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneSuccessResponse/<init>()V
astore 2
aload 2
aload 1
ldc "phone"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneSuccessResponse/mPhone Ljava/lang/String;
aload 2
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneSuccessResponse/isObjectValid()Z
ifeq L1
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/S_BUSINESS_SUCCESS Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 2
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L1:
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_SUCCESS_CONTENT_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 2
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L0:
new com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneFailResponse
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneFailResponse/<init>()V
astore 2
aload 2
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneFailResponse/mMsg Ljava/lang/String;
aload 2
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetSecPhone$GetSecPhoneFailResponse/isObjectValid()Z
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
