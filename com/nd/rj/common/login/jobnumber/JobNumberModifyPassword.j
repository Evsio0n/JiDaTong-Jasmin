.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/JobNumberModifyPassword
.super com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl
.inner class public static ModifyPasswordFailedResponse inner com/nd/rj/common/login/jobnumber/JobNumberModifyPassword$ModifyPasswordFailedResponse outer com/nd/rj/common/login/jobnumber/JobNumberModifyPassword
.inner class public static ModifyPasswordRequestParams inner com/nd/rj/common/login/jobnumber/JobNumberModifyPassword$ModifyPasswordRequestParams outer com/nd/rj/common/login/jobnumber/JobNumberModifyPassword

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
ldc "https://oa.99.com/v2/passport/api/user/password"
areturn
.limit locals 1
.limit stack 1
.end method

.method public resolveBusinessResponse(Lorg/json/JSONObject;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L0
new com/nd/rj/common/login/jobnumber/JobNumberModifyPassword$ModifyPasswordFailedResponse
dup
invokespecial com/nd/rj/common/login/jobnumber/JobNumberModifyPassword$ModifyPasswordFailedResponse/<init>()V
astore 2
aload 2
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/JobNumberModifyPassword$ModifyPasswordFailedResponse/mErrorMsg Ljava/lang/String;
aload 2
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberModifyPassword$ModifyPasswordFailedResponse/isObjectValid()Z
ifeq L1
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 2
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L1:
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL_CONTENT_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 2
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L0:
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/S_BUSINESS_SUCCESS Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aconst_null
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
.limit locals 3
.limit stack 4
.end method
