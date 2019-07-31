.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/ReqVerification
.super com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl
.inner class public static VerificationFailedResponse inner com/nd/rj/common/login/jobnumber/ReqVerification$VerificationFailedResponse outer com/nd/rj/common/login/jobnumber/ReqVerification
.inner class public static VerificationRequestParams inner com/nd/rj/common/login/jobnumber/ReqVerification$VerificationRequestParams outer com/nd/rj/common/login/jobnumber/ReqVerification
.inner class public static VerificationSuccessResponse inner com/nd/rj/common/login/jobnumber/ReqVerification$VerificationSuccessResponse outer com/nd/rj/common/login/jobnumber/ReqVerification

.field private final 'SUCCESS_CODE' I

.method public <init>()V
aload 0
invokespecial com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/<init>()V
aload 0
sipush 200
putfield com/nd/rj/common/login/jobnumber/ReqVerification/SUCCESS_CODE I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Ljava/util/List;)Z
aload 0
invokestatic com/nd/rj/common/login/jobnumber/ReqVerification/isStrValuesValid(Ljava/util/List;)Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(I)Z
iload 0
invokestatic com/nd/rj/common/login/jobnumber/ReqVerification/isIntValueUsefully(I)Z
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
ldc "student/check"
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
new com/nd/rj/common/login/jobnumber/ReqVerification$VerificationSuccessResponse
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqVerification$VerificationSuccessResponse/<init>()V
astore 3
aload 3
iload 2
putfield com/nd/rj/common/login/jobnumber/ReqVerification$VerificationSuccessResponse/mCode I
aload 3
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/ReqVerification$VerificationSuccessResponse/mMsg Ljava/lang/String;
aload 3
invokevirtual com/nd/rj/common/login/jobnumber/ReqVerification$VerificationSuccessResponse/isObjectValid()Z
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
new com/nd/rj/common/login/jobnumber/ReqVerification$VerificationFailedResponse
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqVerification$VerificationFailedResponse/<init>()V
astore 3
aload 3
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/ReqVerification$VerificationFailedResponse/mErrorMsg Ljava/lang/String;
aload 3
iload 2
putfield com/nd/rj/common/login/jobnumber/ReqVerification$VerificationFailedResponse/mCode I
aload 3
invokevirtual com/nd/rj/common/login/jobnumber/ReqVerification$VerificationFailedResponse/isObjectValid()Z
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
