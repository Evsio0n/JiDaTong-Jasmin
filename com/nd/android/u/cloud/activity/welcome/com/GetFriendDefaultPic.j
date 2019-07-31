.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic
.super com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl
.inner class public static GetFriendPicFailResponse inner com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicFailResponse outer com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic
.inner class public static GetFriendPicRequestParams inner com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicRequestParams outer com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic
.inner class public static GetFriendPicSuccessResponse inner com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicSuccessResponse outer com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic

.field public static final 'PIC_BIG' Ljava/lang/String; = "Android_large"

.field public static final 'PIC_SMALL' Ljava/lang/String; = "Android_small"

.method public <init>()V
aload 0
invokespecial com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public communicate(Landroid/content/Context;Lcom/nd/rj/common/serverinterfaces/UrlParamsConvert;Lcom/nd/rj/common/serverinterfaces/JsonBodyParamsConvert;)Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
iconst_0
istore 4
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic/getHttpMethod()Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
getstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/POST Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
if_acmpne L3
aload 3
ifnull L3
aload 3
invokeinterface com/nd/rj/common/serverinterfaces/JsonBodyParamsConvert/doConvert()Lorg/json/JSONObject; 0
astore 3
aload 1
invokestatic com/common/android/utils/httpRequest/OapHttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 6
new org/apache/http/message/BasicNameValuePair
dup
ldc "type"
aload 3
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 6
new org/apache/http/message/BasicNameValuePair
dup
ldc "unit_id"
aload 3
ldc "unit_id"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L0:
aload 1
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic/requestUrl()Ljava/lang/String;
new org/apache/http/client/entity/UrlEncodedFormEntity
dup
aload 6
invokespecial org/apache/http/client/entity/UrlEncodedFormEntity/<init>(Ljava/util/List;)V
aload 2
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I
istore 5
L1:
iload 5
istore 4
L4:
new com/nd/rj/common/serverinterfaces/OriginalHttpResponse
dup
iload 4
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/serverinterfaces/OriginalHttpResponse/<init>(ILjava/lang/String;)V
areturn
L2:
astore 1
aload 1
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L4
L3:
new java/security/InvalidParameterException
dup
ldc "Unsupported http method"
invokespecial java/security/InvalidParameterException/<init>(Ljava/lang/String;)V
athrow
.limit locals 7
.limit stack 6
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
getstatic com/product/android/business/config/Configuration/V2_API_SERVICE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "api/guide/getpic"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public resolveBusinessResponse(Lorg/json/JSONObject;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
aload 1
ldc "url"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L0
new com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicSuccessResponse
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicSuccessResponse/<init>()V
astore 2
aload 2
aload 1
ldc "url"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicSuccessResponse/mPicUrl Ljava/lang/String;
aload 2
aload 1
ldc "time"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicSuccessResponse/mTime Ljava/lang/String;
aload 2
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicSuccessResponse/isObjectValid()Z
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
new com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicFailResponse
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicFailResponse/<init>()V
astore 2
aload 2
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicFailResponse/mErrorMsg Ljava/lang/String;
aload 2
invokevirtual com/nd/android/u/cloud/activity/welcome/com/GetFriendDefaultPic$GetFriendPicFailResponse/isObjectValid()Z
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
