.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/ReqUserCheck
.super com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl
.inner class public static UserCheckFailedResponse inner com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckFailedResponse outer com/nd/rj/common/login/jobnumber/ReqUserCheck
.inner class public static UserCheckRequestParams inner com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams outer com/nd/rj/common/login/jobnumber/ReqUserCheck
.inner class public static UserCheckSuccessResponse inner com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckSuccessResponse outer com/nd/rj/common/login/jobnumber/ReqUserCheck

.method public <init>()V
aload 0
invokespecial com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Ljava/util/List;)Z
aload 0
invokestatic com/nd/rj/common/login/jobnumber/ReqUserCheck/isStrValuesValid(Ljava/util/List;)Z
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
getstatic com/product/android/business/config/Configuration/OAPSERVICEURL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/check?reset=1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public resolveBusinessResponse(Lorg/json/JSONObject;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
new com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckSuccessResponse
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckSuccessResponse/<init>()V
astore 2
aload 2
aload 1
ldc "isorgadmin"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckSuccessResponse/mIsorgadmin I
aload 2
aload 1
ldc "uap_uid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckSuccessResponse/mUapUid I
aload 2
aload 1
ldc "unitid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckSuccessResponse/mUnitid I
aload 2
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckSuccessResponse/mUid I
aload 2
aload 1
ldc "uap_account"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckSuccessResponse/mUapAccount Ljava/lang/String;
aload 2
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckSuccessResponse/mType I
aload 2
invokevirtual com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckSuccessResponse/isObjectValid()Z
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
new com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckFailedResponse
dup
invokespecial com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckFailedResponse/<init>()V
astore 2
aload 2
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckFailedResponse/mErrorMsg Ljava/lang/String;
aload 2
invokevirtual com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckFailedResponse/isObjectValid()Z
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
