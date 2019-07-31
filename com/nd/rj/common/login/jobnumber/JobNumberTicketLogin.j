.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/JobNumberTicketLogin
.super com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl
.inner class public static TicketLoginFailedResponse inner com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginFailedResponse outer com/nd/rj/common/login/jobnumber/JobNumberTicketLogin
.inner class public static TicketLoginRequestParams inner com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginRequestParams outer com/nd/rj/common/login/jobnumber/JobNumberTicketLogin
.inner class public static TicketLoginSuccessResponse inner com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse outer com/nd/rj/common/login/jobnumber/JobNumberTicketLogin

.method public <init>()V
aload 0
invokespecial com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;
aload 0
aload 1
aload 2
aload 3
invokespecial com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;
areturn
.limit locals 4
.limit stack 4
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
ldc "user/loginticket1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public resolveBusinessResponse(Lorg/json/JSONObject;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
aload 1
ldc "sid"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L0
new com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse
dup
invokespecial com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse/<init>()V
astore 2
aload 2
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse/mUid J
aload 2
aload 1
ldc "sid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse/mSid Ljava/lang/String;
aload 2
aload 1
ldc "unitid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse/mUnitId I
aload 2
aload 1
ldc "pwdtime"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse/mPasswordModifyTime Ljava/lang/String;
aload 2
aload 1
ldc "bind_uap_account"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse/mBind99Account Ljava/lang/String;
aload 2
aload 1
ldc "type"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
putfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse/mIdentity I
aload 2
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginSuccessResponse/isObjectValid()Z
ifeq L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getstatic com/product/android/business/ApplicationVariable$LoginType/_JOB_NUMBER_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
invokevirtual com/product/android/business/ApplicationVariable/saveLoginType(Lcom/product/android/business/ApplicationVariable$LoginType;)V
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
new com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginFailedResponse
dup
invokespecial com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginFailedResponse/<init>()V
astore 2
aload 2
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginFailedResponse/mErrorMsg Ljava/lang/String;
aload 2
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberTicketLogin$TicketLoginFailedResponse/isObjectValid()Z
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
