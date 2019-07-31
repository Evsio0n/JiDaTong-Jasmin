.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/ReqRegister
.super com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl
.inner class public static RegisterFailedResponse inner com/nd/rj/common/login/jobnumber/ReqRegister$RegisterFailedResponse outer com/nd/rj/common/login/jobnumber/ReqRegister
.inner class public static RegisterRequestParams inner com/nd/rj/common/login/jobnumber/ReqRegister$RegisterRequestParams outer com/nd/rj/common/login/jobnumber/ReqRegister
.inner class public static RegisterSuccessResponse inner com/nd/rj/common/login/jobnumber/ReqRegister$RegisterSuccessResponse outer com/nd/rj/common/login/jobnumber/ReqRegister

.field private final 'SUCCESS_CODE' I

.method public <init>()V
aload 0
invokespecial com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/<init>()V
aload 0
sipush 200
putfield com/nd/rj/common/login/jobnumber/ReqRegister/SUCCESS_CODE I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Ljava/util/List;)Z
aload 0
invokestatic com/nd/rj/common/login/jobnumber/ReqRegister/isStrValuesValid(Ljava/util/List;)Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(I)Z
iload 0
invokestatic com/nd/rj/common/login/jobnumber/ReqRegister/isIntValueUsefully(I)Z
ireturn
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
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/config/Configuration/LOGIN_API_SERVICE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "student/reg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public resolveBusinessResponse(Lorg/json/JSONObject;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
aload 1
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 2
iload 2
sipush 200
if_icmpne L0
new com/nd/rj/common/login/jobnumber/ReqRegister$RegisterSuccessResponse
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqRegister$RegisterSuccessResponse/<init>()V
astore 3
aload 3
iload 2
putfield com/nd/rj/common/login/jobnumber/ReqRegister$RegisterSuccessResponse/mCode I
aload 3
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/ReqRegister$RegisterSuccessResponse/mMsg Ljava/lang/String;
aload 3
aload 1
ldc "uap_sid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/ReqRegister$RegisterSuccessResponse/mSid Ljava/lang/String;
aload 3
invokevirtual com/nd/rj/common/login/jobnumber/ReqRegister$RegisterSuccessResponse/isObjectValid()Z
ifeq L1
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/S_BUSINESS_SUCCESS Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 3
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L1:
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_SUCCESS_CONTENT_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 3
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L0:
new com/nd/rj/common/login/jobnumber/ReqRegister$RegisterFailedResponse
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqRegister$RegisterFailedResponse/<init>()V
astore 3
aload 3
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/ReqRegister$RegisterFailedResponse/mErrorMsg Ljava/lang/String;
aload 3
iload 2
putfield com/nd/rj/common/login/jobnumber/ReqRegister$RegisterFailedResponse/mCode I
aload 3
invokevirtual com/nd/rj/common/login/jobnumber/ReqRegister$RegisterFailedResponse/isObjectValid()Z
ifeq L2
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 3
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L2:
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL_CONTENT_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 3
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
.limit locals 4
.limit stack 4
.end method
