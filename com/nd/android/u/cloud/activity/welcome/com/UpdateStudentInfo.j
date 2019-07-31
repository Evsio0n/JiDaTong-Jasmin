.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo
.super com/nd/rj/common/serverinterfaces/AbstractServerInterfaceImpl
.inner class public static UpdateStudentInfoFailedResponse inner com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoFailedResponse outer com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo
.inner class public static UpdateStudentInfoReqParams inner com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoReqParams outer com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo
.inner class public static UpdateStudentInfoSuccessResponse inner com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse outer com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo

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
astore 3
aload 2
ifnull L3
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo/getHttpMethod()Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
getstatic com/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod/POST Lcom/nd/rj/common/serverinterfaces/ServerInterface$HttpMethod;
if_acmpne L3
aload 2
invokeinterface com/nd/rj/common/serverinterfaces/UrlParamsConvert/doConvert()Ljava/util/Map; 0
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 4
ldc "areacode"
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L4
aload 2
new org/apache/http/message/BasicNameValuePair
dup
ldc "areacode"
aload 4
ldc "areacode"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
aload 4
ldc "highschoolcode"
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L5
aload 2
new org/apache/http/message/BasicNameValuePair
dup
ldc "highschoolcode"
aload 4
ldc "highschoolcode"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
aload 4
ldc "top"
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L6
aload 2
new org/apache/http/message/BasicNameValuePair
dup
ldc "top"
aload 4
ldc "top"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L6:
aload 4
ldc "showcount"
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L0
aload 2
new org/apache/http/message/BasicNameValuePair
dup
ldc "showcount"
aload 4
ldc "showcount"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
invokespecial org/apache/http/message/BasicNameValuePair/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L0:
aload 1
invokestatic com/common/android/utils/httpRequest/OapHttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
aload 1
aload 0
invokevirtual com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo/requestUrl()Ljava/lang/String;
new org/apache/http/client/entity/UrlEncodedFormEntity
dup
aload 2
invokespecial org/apache/http/client/entity/UrlEncodedFormEntity/<init>(Ljava/util/List;)V
aload 3
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/StringBuilder;)I
pop
L1:
new com/nd/rj/common/serverinterfaces/OriginalHttpResponse
dup
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/serverinterfaces/OriginalHttpResponse/<init>(ILjava/lang/String;)V
areturn
L2:
astore 1
aload 1
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L1
L3:
new java/security/InvalidParameterException
dup
ldc "request params is wrong"
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
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/config/Configuration/V2_API_SERVICE_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "api/guide/setinfo"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public resolveBusinessResponse(Lorg/json/JSONObject;)Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse;
.catch org/json/JSONException from L0 to L1 using L2
aload 1
ldc "code"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L3
aload 1
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
sipush 200
if_icmpne L3
new com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/<init>()V
astore 3
aload 1
ldc "info"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 4
aload 3
aload 4
ldc "areacode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mAreaCode Ljava/lang/String;
aload 3
aload 4
ldc "highschoolcode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mHighSchoolCode Ljava/lang/String;
aload 4
ldc "classmatenum"
iconst_0
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
istore 2
iload 2
ifle L4
aload 3
iload 2
putfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mClassmateNum I
L4:
aload 4
ldc "townsmennum"
iconst_0
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
istore 2
iload 2
ifle L5
aload 3
iload 2
putfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mTownsmennum I
L5:
aload 1
ldc "data"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
iconst_0
istore 2
L6:
iload 2
aload 1
invokevirtual org/json/JSONArray/length()I
if_icmpge L7
L0:
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 5
new com/nd/android/u/cloud/activity/welcome/FriendInfo
dup
invokespecial com/nd/android/u/cloud/activity/welcome/FriendInfo/<init>()V
astore 6
aload 6
aload 5
ldc "name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/welcome/FriendInfo/setName(Ljava/lang/String;)V
aload 6
aload 5
ldc "relationship"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/cloud/activity/welcome/FriendInfo/setRelationship(I)V
aload 6
aload 5
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokevirtual com/nd/android/u/cloud/activity/welcome/FriendInfo/setUid(J)V
aload 4
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
iload 2
iconst_1
iadd
istore 2
goto L6
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
L7:
aload 3
aload 4
putfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/mData Ljava/util/List;
aload 3
invokevirtual com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse/isObjectValid()Z
ifeq L8
getstatic com/nd/android/u/cloud/activity/welcome/WelcomeInfo/INSTANCE Lcom/nd/android/u/cloud/activity/welcome/WelcomeInfo;
aload 3
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeInfo/setResponse(Lcom/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoSuccessResponse;)V
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/S_BUSINESS_SUCCESS Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 3
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L8:
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/S_BUSINESS_SUCCESS Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 3
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L3:
new com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoFailedResponse
dup
invokespecial com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoFailedResponse/<init>()V
astore 3
aload 3
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoFailedResponse/mErrorMsg Ljava/lang/String;
aload 3
invokevirtual com/nd/android/u/cloud/activity/welcome/com/UpdateStudentInfo$UpdateStudentInfoFailedResponse/isObjectValid()Z
ifeq L9
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 3
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
L9:
new com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse
dup
getstatic com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult/F_BUSINESS_FAIL_CONTENT_FAIL Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;
aload 3
invokespecial com/nd/rj/common/serverinterfaces/ResolvedBusinessResponse/<init>(Lcom/nd/rj/common/serverinterfaces/ResolvedBusinessResponse$ResponseResolvedResult;Lcom/nd/rj/common/interfaces/VerifyObject;)V
areturn
.limit locals 7
.limit stack 4
.end method
