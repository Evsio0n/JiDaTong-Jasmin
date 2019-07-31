.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/JobNumberNormalLogin
.super com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl
.inner class public static NormalLoginFailedResponse inner com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginFailedResponse outer com/nd/rj/common/login/jobnumber/JobNumberNormalLogin
.inner class public static NormalLoginRequestParams inner com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginRequestParams outer com/nd/rj/common/login/jobnumber/JobNumberNormalLogin
.inner class public static NormalLoginSuccessResponse inner com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginSuccessResponse outer com/nd/rj/common/login/jobnumber/JobNumberNormalLogin

.method public <init>()V
aload 0
invokespecial com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Ljava/util/List;)Z
aload 0
invokestatic com/nd/rj/common/login/jobnumber/JobNumberNormalLogin/isStrValuesValid(Ljava/util/List;)Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(I)Z
iload 0
invokestatic com/nd/rj/common/login/jobnumber/JobNumberNormalLogin/isIntValueUsefully(I)Z
ireturn
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
ldc "user/login1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public resolveBusinessResponse(Lorg/json/JSONObject;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
iconst_1
istore 2
aload 1
ldc "sid"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L0
new com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginSuccessResponse
dup
invokespecial com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginSuccessResponse/<init>()V
astore 3
aload 3
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginSuccessResponse/mUid J
aload 3
aload 1
ldc "sid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginSuccessResponse/mSid Ljava/lang/String;
aload 3
aload 1
ldc "unitid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginSuccessResponse/mUnitId I
aload 3
aload 1
ldc "pwdtime"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginSuccessResponse/mPasswordModifyTime Ljava/lang/String;
aload 3
aload 1
ldc "bind_uap_account"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginSuccessResponse/mBind99Account Ljava/lang/String;
aload 3
aload 1
ldc "ticket"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginSuccessResponse/mTicket Ljava/lang/String;
aload 3
aload 1
ldc "type"
iconst_m1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
putfield com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginSuccessResponse/mIdentity I
aload 3
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginSuccessResponse/isObjectValid()Z
ifeq L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getstatic com/product/android/business/ApplicationVariable$LoginType/_JOB_NUMBER_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
invokevirtual com/product/android/business/ApplicationVariable/saveLoginType(Lcom/product/android/business/ApplicationVariable$LoginType;)V
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
new com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginFailedResponse
dup
invokespecial com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginFailedResponse/<init>()V
astore 3
aload 3
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginFailedResponse/mErrorMsg Ljava/lang/String;
aload 1
ldc "needchkcode"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
iconst_1
if_icmpne L2
L3:
aload 3
iload 2
putfield com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginFailedResponse/mIsNeedCaptcha Z
aload 3
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberNormalLogin$NormalLoginFailedResponse/isObjectValid()Z
ifeq L4
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 3
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L2:
iconst_0
istore 2
goto L3
L4:
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL_CONTENT_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 3
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
.limit locals 4
.limit stack 4
.end method
