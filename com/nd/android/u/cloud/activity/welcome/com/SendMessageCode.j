.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/SendMessageCode
.super com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl
.inner class public static SendMessageCodeReqParams inner com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeReqParams outer com/nd/android/u/cloud/activity/welcome/com/SendMessageCode
.inner class public static SendMessageCodeResponse inner com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse outer com/nd/android/u/cloud/activity/welcome/com/SendMessageCode

.method public <init>()V
aload 0
invokespecial com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getHttpMethod()Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
getstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/POST Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
areturn
.limit locals 1
.limit stack 1
.end method

.method public requestUrl()Ljava/lang/String;
ldc "https://uap.99.com/ndsoap/sendcode"
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
new com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse/<init>()V
astore 2
aload 2
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse/mMsg Ljava/lang/String;
aload 2
invokevirtual com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse/isObjectValid()Z
ifeq L1
aload 2
iconst_0
putfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse/mIsSuccess I
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/S_BUSINESS_SUCCESS Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 2
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L1:
aload 2
iconst_1
putfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse/mIsSuccess I
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_SUCCESS_CONTENT_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 2
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L0:
new com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse/<init>()V
astore 2
aload 2
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse/mMsg Ljava/lang/String;
aload 2
iconst_1
putfield com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse/mIsSuccess I
aload 2
invokevirtual com/nd/android/u/cloud/activity/welcome/com/SendMessageCode$SendMessageCodeResponse/isObjectValid()Z
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
