.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/com/OapAddOrgCom
.super java/lang/Object

.field private static 'BaseURL' Ljava/lang/String;

.field public static final 'CODE_SUCCESS' I = 200


.field private static final 'DEBUG' Z = 1


.field public static final 'RET_CODE' Ljava/lang/String; = "code"

.field public static final 'RET_MSG' Ljava/lang/String; = "msg"

.field public static final 'bindcheck' Ljava/lang/String; = "join/bindcheck"

.field public static final 'joinverify' Ljava/lang/String; = "join/verify"

.field public static final 'loginjoin' Ljava/lang/String; = "register/loginjoin"

.field public static final 'regbind' Ljava/lang/String; = "register/regbind"

.field public static final 'regjoin' Ljava/lang/String; = "register/regjoin"

.field public static final 'servicesim' Ljava/lang/String; = "unit/servicesim"

.field public static final 'verifycheck' Ljava/lang/String; = "join/verifycheck"

.field public static final 'verifyidcard' Ljava/lang/String; = "join/verifyidcard"

.field protected 'moapApi' Lcom/common/android/utils/http/HttpCom;

.method static <clinit>()V
ldc "https://xiaoyou.99.com/"
putstatic com/nd/android/u/cloud/com/OapAddOrgCom/BaseURL Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/http/HttpCom
dup
invokespecial com/common/android/utils/http/HttpCom/<init>()V
putfield com/nd/android/u/cloud/com/OapAddOrgCom/moapApi Lcom/common/android/utils/http/HttpCom;
return
.limit locals 1
.limit stack 3
.end method

.method public static bindCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "name"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
ldc "mobile"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
ldc "usersflag"
iconst_1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 4
ldc "verifycode"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
ldc "join/bindcheck"
invokestatic com/nd/android/u/cloud/com/OapAddOrgCom/joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 0
invokestatic com/common/android/utils/httpRequest/OapHttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
astore 0
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
aload 0
aload 1
aload 4
aload 2
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
sipush 200
if_icmpne L6
L3:
new org/json/JSONObject
dup
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
L4:
aload 0
areturn
L2:
astore 0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
L5:
astore 0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
L6:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
.limit locals 5
.limit stack 4
.end method

.method public static getVerificationCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
.catch org/json/JSONException from L4 to L5 using L6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "name"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 4
ldc "mobile"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 4
ldc "email"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
ldc "join/verify"
invokestatic com/nd/android/u/cloud/com/OapAddOrgCom/joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 0
invokestatic com/common/android/utils/httpRequest/OapHttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
astore 0
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
aload 0
aload 1
aload 4
aload 2
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
sipush 200
if_icmpne L7
L4:
new org/json/JSONObject
dup
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
L5:
aload 0
areturn
L2:
astore 0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
L6:
astore 0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
L7:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
.limit locals 5
.limit stack 4
.end method

.method public static joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
invokevirtual java/lang/String/length()I
iconst_1
isub
istore 2
aload 0
astore 3
aload 0
iload 2
invokevirtual java/lang/String/charAt(I)C
bipush 47
if_icmpne L0
aload 0
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 3
L0:
aload 1
astore 0
aload 1
iconst_0
invokevirtual java/lang/String/charAt(I)C
bipush 47
if_icmpne L1
aload 1
iconst_1
aload 1
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 0
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 47
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method private searchFRFromJson(Lorg/json/JSONObject;Lcom/nd/android/u/cloud/bean/OapAddOrgParamsOut;)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
L0:
aload 1
ldc "users"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L11
aload 1
ldc "users"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
L1:
iconst_0
istore 6
iconst_m1
istore 7
iconst_0
istore 3
L12:
iload 6
istore 5
iload 7
istore 4
L3:
iload 3
aload 1
invokevirtual org/json/JSONArray/length()I
if_icmpge L13
aload 1
iload 3
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 9
new com/nd/android/u/contact/dataStructure/OapUnit
dup
invokespecial com/nd/android/u/contact/dataStructure/OapUnit/<init>()V
astore 10
aload 10
aload 9
ldc "unit_id"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setUnitid(I)V
aload 10
aload 9
ldc "unitname"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setUnitname(Ljava/lang/String;)V
aload 10
aload 9
ldc "uid"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
i2l
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setUid(J)V
aload 8
aload 10
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 9
ldc "unit_id"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
if_icmpne L14
L4:
iconst_1
istore 5
iload 3
istore 4
L13:
aconst_null
astore 1
iload 5
ifeq L9
L5:
aload 8
iload 4
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/OapUnit
astore 1
L6:
aload 1
ifnull L11
L7:
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsOut/getUnitlist()Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L8:
return
L9:
aload 8
invokevirtual java/util/ArrayList/size()I
ifle L6
aload 8
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/OapUnit
astore 1
L10:
goto L6
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L11:
return
L14:
iload 3
iconst_1
iadd
istore 3
goto L12
.limit locals 11
.limit stack 3
.end method

.method public applyService(Ljava/lang/String;Landroid/content/Context;)Z
.throws com/nd/android/u/cloud/ComException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L1 to L4 using L2
.catch org/json/JSONException from L1 to L4 using L3
.catch com/common/android/utils/http/HttpException from L5 to L2 using L2
.catch org/json/JSONException from L5 to L2 using L3
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 4
ldc "appid"
sipush 191
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 4
ldc "code"
sipush 9090
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 4
ldc "msg"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/cloud/com/OapAddOrgCom/moapApi Lcom/common/android/utils/http/HttpCom;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "unit/servicesim"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 4
invokevirtual com/common/android/utils/http/HttpCom/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/getHttpResponse()Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 3
L4:
iload 3
sipush 200
if_icmpne L5
iconst_1
ireturn
L5:
new com/nd/android/u/cloud/ComException
dup
iload 3
aload 2
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131493003
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/cloud/ComException/<init>(ILjava/lang/String;)V
athrow
L2:
astore 1
new com/nd/android/u/cloud/ComException
dup
aload 1
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
aload 2
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131493003
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/cloud/ComException/<init>(ILjava/lang/String;)V
athrow
L3:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
.limit locals 5
.limit stack 5
.end method

.method public changeUserIden(Lcom/nd/android/u/contact/dataStructure/OapUnit;)Z
.catch com/common/android/utils/http/HttpAuthException from L0 to L1 using L2
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpServerException from L0 to L1 using L4
.catch org/json/JSONException from L0 to L1 using L5
.catch com/common/android/utils/http/HttpException from L0 to L1 using L6
L0:
invokestatic com/nd/android/u/cloud/business/OapComFactory/getInstance()Lcom/nd/android/u/cloud/business/OapComFactory;
invokevirtual com/nd/android/u/cloud/business/OapComFactory/getOapPassportCom()Lcom/nd/android/u/cloud/com/OapPassportCom;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUid()J
invokevirtual com/nd/android/u/cloud/com/OapPassportCom/doChangeUser(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
iconst_0
ireturn
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
iconst_0
ireturn
L4:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
iconst_0
ireturn
L5:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
L6:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method public createUserInfo(Lorg/json/JSONObject;Lcom/nd/android/u/cloud/bean/OapAddOrgParamsIn;)Lcom/product/android/business/bean/UserInfo;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
astore 4
L0:
aload 4
aload 1
ldc "sid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
aload 4
aload 1
ldc "oap_uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setOapUid(J)V
aload 4
aload 1
ldc "unit_id"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/product/android/business/bean/UserInfo/setOapUnitId(I)V
aload 4
aload 1
ldc "uap_uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 4
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getAccount()Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
aload 4
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getPassword()Ljava/lang/String;
ldc "ECBC644F598318E42CA7ED92497BFB8019D4C166B62A60D0E83E73321FC6CE8596421F981545CAF93EE8231CA4D544BEBF0A6AEA3F9305A6ED675C96A4CA87A9"
ldc "10001"
invokestatic com/nd/rj/common/login/NdLoginComFun/RSAEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPass(Ljava/lang/String;)V
aload 4
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getPassword()Ljava/lang/String;
invokestatic com/nd/rj/common/login/NdLoginComFun/Md5Digest(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPassMd5(Ljava/lang/String;)V
aload 4
iconst_1
invokevirtual com/product/android/business/bean/UserInfo/setIsSaveAccount(Z)V
aload 4
iconst_1
invokevirtual com/product/android/business/bean/UserInfo/setIsAutoLogin(Z)V
L1:
iconst_0
istore 3
L3:
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getMobile()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
L4:
iconst_1
istore 3
L5:
aload 4
iload 3
invokevirtual com/product/android/business/bean/UserInfo/setIs_phone(I)V
L6:
aload 4
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 4
areturn
.limit locals 5
.limit stack 4
.end method

.method public getVerificationCode(Lcom/nd/android/u/cloud/bean/OapAddOrgParamsIn;)Z
.throws com/nd/android/u/cloud/ComException
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpAuthException from L0 to L1 using L3
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L4
.catch com/common/android/utils/http/HttpServerException from L0 to L1 using L5
.catch com/common/android/utils/http/HttpException from L0 to L1 using L6
.catch org/json/JSONException from L1 to L7 using L2
.catch com/common/android/utils/http/HttpAuthException from L1 to L7 using L3
.catch com/common/android/utils/http/ResponseException from L1 to L7 using L4
.catch com/common/android/utils/http/HttpServerException from L1 to L7 using L5
.catch com/common/android/utils/http/HttpException from L1 to L7 using L6
.catch org/json/JSONException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpAuthException from L7 to L8 using L3
.catch com/common/android/utils/http/ResponseException from L7 to L8 using L4
.catch com/common/android/utils/http/HttpServerException from L7 to L8 using L5
.catch com/common/android/utils/http/HttpException from L7 to L8 using L6
.catch org/json/JSONException from L9 to L10 using L2
.catch com/common/android/utils/http/HttpAuthException from L9 to L10 using L3
.catch com/common/android/utils/http/ResponseException from L9 to L10 using L4
.catch com/common/android/utils/http/HttpServerException from L9 to L10 using L5
.catch com/common/android/utils/http/HttpException from L9 to L10 using L6
.catch org/json/JSONException from L11 to L2 using L2
.catch com/common/android/utils/http/HttpAuthException from L11 to L2 using L3
.catch com/common/android/utils/http/ResponseException from L11 to L2 using L4
.catch com/common/android/utils/http/HttpServerException from L11 to L2 using L5
.catch com/common/android/utils/http/HttpException from L11 to L2 using L6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
L0:
aload 3
ldc "name"
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getName()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getMobile()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 3
ldc "mobile"
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getMobile()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getEmail()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L7
aload 3
ldc "email"
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getEmail()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L7:
aload 0
getfield com/nd/android/u/cloud/com/OapAddOrgCom/moapApi Lcom/common/android/utils/http/HttpCom;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/cloud/com/OapAddOrgCom/BaseURL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "join/verify"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
invokevirtual com/common/android/utils/http/HttpCom/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
L8:
aload 1
ifnull L12
L9:
aload 1
ldc "code"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 2
L10:
iload 2
sipush 200
if_icmpne L11
iconst_1
ireturn
L11:
new com/nd/android/u/cloud/ComException
dup
iload 2
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/nd/android/u/cloud/ComException/<init>(ILjava/lang/String;)V
athrow
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
iconst_0
ireturn
L4:
astore 1
aload 1
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
iconst_0
ireturn
L5:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
iconst_0
ireturn
L6:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L12:
iconst_0
ireturn
.limit locals 4
.limit stack 5
.end method

.method public regAndBind(Landroid/content/Context;Lcom/nd/android/u/cloud/bean/OapAddOrgParamsIn;Lcom/product/android/business/bean/UserInfo;)Z
.throws com/nd/android/u/cloud/ComException
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpAuthException from L0 to L1 using L3
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L4
.catch com/common/android/utils/http/HttpServerException from L0 to L1 using L5
.catch com/common/android/utils/http/HttpException from L0 to L1 using L6
.catch org/json/JSONException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpAuthException from L7 to L8 using L3
.catch com/common/android/utils/http/ResponseException from L7 to L8 using L4
.catch com/common/android/utils/http/HttpServerException from L7 to L8 using L5
.catch com/common/android/utils/http/HttpException from L7 to L8 using L6
.catch org/json/JSONException from L9 to L10 using L2
.catch com/common/android/utils/http/HttpAuthException from L9 to L10 using L3
.catch com/common/android/utils/http/ResponseException from L9 to L10 using L4
.catch com/common/android/utils/http/HttpServerException from L9 to L10 using L5
.catch com/common/android/utils/http/HttpException from L9 to L10 using L6
.catch org/json/JSONException from L11 to L12 using L2
.catch com/common/android/utils/http/HttpAuthException from L11 to L12 using L3
.catch com/common/android/utils/http/ResponseException from L11 to L12 using L4
.catch com/common/android/utils/http/HttpServerException from L11 to L12 using L5
.catch com/common/android/utils/http/HttpException from L11 to L12 using L6
.catch org/json/JSONException from L13 to L14 using L2
.catch com/common/android/utils/http/HttpAuthException from L13 to L14 using L3
.catch com/common/android/utils/http/ResponseException from L13 to L14 using L4
.catch com/common/android/utils/http/HttpServerException from L13 to L14 using L5
.catch com/common/android/utils/http/HttpException from L13 to L14 using L6
.catch org/json/JSONException from L15 to L16 using L2
.catch com/common/android/utils/http/HttpAuthException from L15 to L16 using L3
.catch com/common/android/utils/http/ResponseException from L15 to L16 using L4
.catch com/common/android/utils/http/HttpServerException from L15 to L16 using L5
.catch com/common/android/utils/http/HttpException from L15 to L16 using L6
.catch org/json/JSONException from L17 to L18 using L2
.catch com/common/android/utils/http/HttpAuthException from L17 to L18 using L3
.catch com/common/android/utils/http/ResponseException from L17 to L18 using L4
.catch com/common/android/utils/http/HttpServerException from L17 to L18 using L5
.catch com/common/android/utils/http/HttpException from L17 to L18 using L6
.catch org/json/JSONException from L19 to L20 using L2
.catch com/common/android/utils/http/HttpAuthException from L19 to L20 using L3
.catch com/common/android/utils/http/ResponseException from L19 to L20 using L4
.catch com/common/android/utils/http/HttpServerException from L19 to L20 using L5
.catch com/common/android/utils/http/HttpException from L19 to L20 using L6
.catch org/json/JSONException from L21 to L22 using L2
.catch com/common/android/utils/http/HttpAuthException from L21 to L22 using L3
.catch com/common/android/utils/http/ResponseException from L21 to L22 using L4
.catch com/common/android/utils/http/HttpServerException from L21 to L22 using L5
.catch com/common/android/utils/http/HttpException from L21 to L22 using L6
.catch org/json/JSONException from L23 to L24 using L2
.catch com/common/android/utils/http/HttpAuthException from L23 to L24 using L3
.catch com/common/android/utils/http/ResponseException from L23 to L24 using L4
.catch com/common/android/utils/http/HttpServerException from L23 to L24 using L5
.catch com/common/android/utils/http/HttpException from L23 to L24 using L6
.catch org/json/JSONException from L25 to L26 using L2
.catch com/common/android/utils/http/HttpAuthException from L25 to L26 using L3
.catch com/common/android/utils/http/ResponseException from L25 to L26 using L4
.catch com/common/android/utils/http/HttpServerException from L25 to L26 using L5
.catch com/common/android/utils/http/HttpException from L25 to L26 using L6
.catch org/json/JSONException from L27 to L28 using L2
.catch com/common/android/utils/http/HttpAuthException from L27 to L28 using L3
.catch com/common/android/utils/http/ResponseException from L27 to L28 using L4
.catch com/common/android/utils/http/HttpServerException from L27 to L28 using L5
.catch com/common/android/utils/http/HttpException from L27 to L28 using L6
.catch org/json/JSONException from L29 to L30 using L2
.catch com/common/android/utils/http/HttpAuthException from L29 to L30 using L3
.catch com/common/android/utils/http/ResponseException from L29 to L30 using L4
.catch com/common/android/utils/http/HttpServerException from L29 to L30 using L5
.catch com/common/android/utils/http/HttpException from L29 to L30 using L6
.catch org/json/JSONException from L31 to L32 using L2
.catch com/common/android/utils/http/HttpAuthException from L31 to L32 using L3
.catch com/common/android/utils/http/ResponseException from L31 to L32 using L4
.catch com/common/android/utils/http/HttpServerException from L31 to L32 using L5
.catch com/common/android/utils/http/HttpException from L31 to L32 using L6
.catch org/json/JSONException from L33 to L34 using L2
.catch com/common/android/utils/http/HttpAuthException from L33 to L34 using L3
.catch com/common/android/utils/http/ResponseException from L33 to L34 using L4
.catch com/common/android/utils/http/HttpServerException from L33 to L34 using L5
.catch com/common/android/utils/http/HttpException from L33 to L34 using L6
.catch org/json/JSONException from L35 to L36 using L2
.catch com/common/android/utils/http/HttpAuthException from L35 to L36 using L3
.catch com/common/android/utils/http/ResponseException from L35 to L36 using L4
.catch com/common/android/utils/http/HttpServerException from L35 to L36 using L5
.catch com/common/android/utils/http/HttpException from L35 to L36 using L6
.catch org/json/JSONException from L37 to L38 using L2
.catch com/common/android/utils/http/HttpAuthException from L37 to L38 using L3
.catch com/common/android/utils/http/ResponseException from L37 to L38 using L4
.catch com/common/android/utils/http/HttpServerException from L37 to L38 using L5
.catch com/common/android/utils/http/HttpException from L37 to L38 using L6
.catch org/json/JSONException from L39 to L40 using L41
.catch com/common/android/utils/http/HttpAuthException from L39 to L40 using L3
.catch com/common/android/utils/http/ResponseException from L39 to L40 using L4
.catch com/common/android/utils/http/HttpServerException from L39 to L40 using L5
.catch com/common/android/utils/http/HttpException from L39 to L40 using L6
.catch org/json/JSONException from L42 to L43 using L41
.catch com/common/android/utils/http/HttpAuthException from L42 to L43 using L3
.catch com/common/android/utils/http/ResponseException from L42 to L43 using L4
.catch com/common/android/utils/http/HttpServerException from L42 to L43 using L5
.catch com/common/android/utils/http/HttpException from L42 to L43 using L6
.catch org/json/JSONException from L44 to L45 using L41
.catch com/common/android/utils/http/HttpAuthException from L44 to L45 using L3
.catch com/common/android/utils/http/ResponseException from L44 to L45 using L4
.catch com/common/android/utils/http/HttpServerException from L44 to L45 using L5
.catch com/common/android/utils/http/HttpException from L44 to L45 using L6
.catch org/json/JSONException from L46 to L47 using L41
.catch com/common/android/utils/http/HttpAuthException from L46 to L47 using L3
.catch com/common/android/utils/http/ResponseException from L46 to L47 using L4
.catch com/common/android/utils/http/HttpServerException from L46 to L47 using L5
.catch com/common/android/utils/http/HttpException from L46 to L47 using L6
.catch org/json/JSONException from L48 to L49 using L41
.catch com/common/android/utils/http/HttpAuthException from L48 to L49 using L3
.catch com/common/android/utils/http/ResponseException from L48 to L49 using L4
.catch com/common/android/utils/http/HttpServerException from L48 to L49 using L5
.catch com/common/android/utils/http/HttpException from L48 to L49 using L6
.catch org/json/JSONException from L50 to L51 using L41
.catch com/common/android/utils/http/HttpAuthException from L50 to L51 using L3
.catch com/common/android/utils/http/ResponseException from L50 to L51 using L4
.catch com/common/android/utils/http/HttpServerException from L50 to L51 using L5
.catch com/common/android/utils/http/HttpException from L50 to L51 using L6
.catch org/json/JSONException from L52 to L53 using L41
.catch com/common/android/utils/http/HttpAuthException from L52 to L53 using L3
.catch com/common/android/utils/http/ResponseException from L52 to L53 using L4
.catch com/common/android/utils/http/HttpServerException from L52 to L53 using L5
.catch com/common/android/utils/http/HttpException from L52 to L53 using L6
.catch org/json/JSONException from L54 to L55 using L41
.catch com/common/android/utils/http/HttpAuthException from L54 to L55 using L3
.catch com/common/android/utils/http/ResponseException from L54 to L55 using L4
.catch com/common/android/utils/http/HttpServerException from L54 to L55 using L5
.catch com/common/android/utils/http/HttpException from L54 to L55 using L6
.catch org/json/JSONException from L56 to L57 using L41
.catch com/common/android/utils/http/HttpAuthException from L56 to L57 using L3
.catch com/common/android/utils/http/ResponseException from L56 to L57 using L4
.catch com/common/android/utils/http/HttpServerException from L56 to L57 using L5
.catch com/common/android/utils/http/HttpException from L56 to L57 using L6
.catch org/json/JSONException from L58 to L59 using L41
.catch com/common/android/utils/http/HttpAuthException from L58 to L59 using L3
.catch com/common/android/utils/http/ResponseException from L58 to L59 using L4
.catch com/common/android/utils/http/HttpServerException from L58 to L59 using L5
.catch com/common/android/utils/http/HttpException from L58 to L59 using L6
.catch org/json/JSONException from L60 to L61 using L41
.catch com/common/android/utils/http/HttpAuthException from L60 to L61 using L3
.catch com/common/android/utils/http/ResponseException from L60 to L61 using L4
.catch com/common/android/utils/http/HttpServerException from L60 to L61 using L5
.catch com/common/android/utils/http/HttpException from L60 to L61 using L6
.catch org/json/JSONException from L62 to L63 using L2
.catch com/common/android/utils/http/HttpAuthException from L62 to L63 using L3
.catch com/common/android/utils/http/ResponseException from L62 to L63 using L4
.catch com/common/android/utils/http/HttpServerException from L62 to L63 using L5
.catch com/common/android/utils/http/HttpException from L62 to L63 using L6
.catch org/json/JSONException from L64 to L4 using L2
.catch com/common/android/utils/http/HttpAuthException from L64 to L4 using L3
.catch com/common/android/utils/http/ResponseException from L64 to L4 using L4
.catch com/common/android/utils/http/HttpServerException from L64 to L4 using L5
.catch com/common/android/utils/http/HttpException from L64 to L4 using L6
iconst_0
istore 15
iconst_0
istore 11
iconst_0
istore 12
iconst_0
istore 13
iconst_0
istore 14
iconst_0
istore 10
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L1:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L7:
aload 1
ldc "mobile"
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getMobile()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L8:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L9:
aload 1
ldc "name"
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getName()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L10:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L11:
aload 1
ldc "password"
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getPassword()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L12:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L13:
aload 1
ldc "oapcode"
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getVerifyCode()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L14:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L15:
aload 1
ldc "uapcode"
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getVerifyCodeforjoin()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L16:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L17:
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 16
L18:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L19:
aload 2
getfield com/nd/android/u/cloud/bean/OapAddOrgParamsIn/unitlist Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 17
L20:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L21:
aload 17
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L65
L22:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L23:
aload 17
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapUnit
astore 18
L24:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L25:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 19
L26:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L27:
aload 19
ldc "unit_id"
aload 18
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L28:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L29:
aload 19
ldc "uid"
aload 18
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUid()J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L30:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L31:
aload 16
aload 19
invokevirtual org/json/JSONArray/put(Ljava/lang/Object;)Lorg/json/JSONArray;
pop
L32:
goto L20
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L66:
iload 5
ireturn
L65:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L33:
aload 1
ldc "users"
aload 16
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L34:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L35:
aload 0
getfield com/nd/android/u/cloud/com/OapAddOrgCom/moapApi Lcom/common/android/utils/http/HttpCom;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/cloud/com/OapAddOrgCom/BaseURL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "register/regbind"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokevirtual com/common/android/utils/http/HttpCom/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
L36:
iload 15
istore 5
aload 1
ifnull L66
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L37:
aload 1
ldc "code"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 4
L38:
iload 4
sipush 200
if_icmpne L67
iconst_1
istore 10
iconst_1
istore 11
iconst_1
istore 12
iconst_1
istore 13
iconst_1
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 9
L39:
aload 3
aload 1
ldc "logininfo"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
ldc "sid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
L40:
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 9
L42:
aload 3
aload 1
ldc "oap_uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setOapUid(J)V
L43:
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 9
L44:
aload 3
aload 1
ldc "unit_id"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/product/android/business/bean/UserInfo/setOapUnitId(I)V
L45:
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 9
L46:
aload 3
aload 1
ldc "uap_uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
L47:
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 9
L48:
aload 3
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getMobile()Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
L49:
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 9
L50:
aload 3
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getPassword()Ljava/lang/String;
ldc "ECBC644F598318E42CA7ED92497BFB8019D4C166B62A60D0E83E73321FC6CE8596421F981545CAF93EE8231CA4D544BEBF0A6AEA3F9305A6ED675C96A4CA87A9"
ldc "10001"
invokestatic com/nd/rj/common/login/NdLoginComFun/RSAEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPass(Ljava/lang/String;)V
L51:
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 9
L52:
aload 3
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getPassword()Ljava/lang/String;
invokestatic com/nd/rj/common/login/NdLoginComFun/Md5Digest(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPassMd5(Ljava/lang/String;)V
L53:
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 9
L54:
aload 3
iconst_1
invokevirtual com/product/android/business/bean/UserInfo/setIsSaveAccount(Z)V
L55:
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 9
L56:
aload 3
iconst_1
invokevirtual com/product/android/business/bean/UserInfo/setIsAutoLogin(Z)V
L57:
iconst_0
istore 4
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 9
L58:
aload 2
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getMobile()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L68
L59:
iconst_1
istore 4
L68:
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 9
L60:
aload 3
iload 4
invokevirtual com/product/android/business/bean/UserInfo/setIs_phone(I)V
L61:
iconst_1
ireturn
L41:
astore 1
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 9
L62:
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L63:
iconst_1
ireturn
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
iload 6
ireturn
L67:
iload 10
istore 5
iload 11
istore 6
iload 12
istore 7
iload 13
istore 8
iload 14
istore 9
L64:
new com/nd/android/u/cloud/ComException
dup
iload 4
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/nd/android/u/cloud/ComException/<init>(ILjava/lang/String;)V
athrow
L4:
astore 1
aload 1
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
iload 7
ireturn
L5:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
iload 8
ireturn
L6:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 9
ireturn
.limit locals 20
.limit stack 5
.end method

.method public verifyCheck(Lcom/nd/android/u/cloud/bean/OapAddOrgParamsIn;Lcom/nd/android/u/cloud/bean/OapAddOrgParamsOut;)Z
.throws com/nd/android/u/cloud/ComException
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpAuthException from L0 to L1 using L3
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L4
.catch com/common/android/utils/http/HttpServerException from L0 to L1 using L5
.catch com/common/android/utils/http/HttpException from L0 to L1 using L6
.catch org/json/JSONException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpAuthException from L7 to L8 using L3
.catch com/common/android/utils/http/ResponseException from L7 to L8 using L4
.catch com/common/android/utils/http/HttpServerException from L7 to L8 using L5
.catch com/common/android/utils/http/HttpException from L7 to L8 using L6
.catch org/json/JSONException from L9 to L10 using L2
.catch com/common/android/utils/http/HttpAuthException from L9 to L10 using L3
.catch com/common/android/utils/http/ResponseException from L9 to L10 using L4
.catch com/common/android/utils/http/HttpServerException from L9 to L10 using L5
.catch com/common/android/utils/http/HttpException from L9 to L10 using L6
.catch org/json/JSONException from L11 to L12 using L2
.catch com/common/android/utils/http/HttpAuthException from L11 to L12 using L3
.catch com/common/android/utils/http/ResponseException from L11 to L12 using L4
.catch com/common/android/utils/http/HttpServerException from L11 to L12 using L5
.catch com/common/android/utils/http/HttpException from L11 to L12 using L6
.catch org/json/JSONException from L13 to L14 using L2
.catch com/common/android/utils/http/HttpAuthException from L13 to L14 using L3
.catch com/common/android/utils/http/ResponseException from L13 to L14 using L4
.catch com/common/android/utils/http/HttpServerException from L13 to L14 using L5
.catch com/common/android/utils/http/HttpException from L13 to L14 using L6
.catch org/json/JSONException from L15 to L16 using L2
.catch com/common/android/utils/http/HttpAuthException from L15 to L16 using L3
.catch com/common/android/utils/http/ResponseException from L15 to L16 using L4
.catch com/common/android/utils/http/HttpServerException from L15 to L16 using L5
.catch com/common/android/utils/http/HttpException from L15 to L16 using L6
.catch org/json/JSONException from L17 to L18 using L2
.catch com/common/android/utils/http/HttpAuthException from L17 to L18 using L3
.catch com/common/android/utils/http/ResponseException from L17 to L18 using L4
.catch com/common/android/utils/http/HttpServerException from L17 to L18 using L5
.catch com/common/android/utils/http/HttpException from L17 to L18 using L6
.catch org/json/JSONException from L19 to L20 using L2
.catch com/common/android/utils/http/HttpAuthException from L19 to L20 using L3
.catch com/common/android/utils/http/ResponseException from L19 to L20 using L4
.catch com/common/android/utils/http/HttpServerException from L19 to L20 using L5
.catch com/common/android/utils/http/HttpException from L19 to L20 using L6
.catch org/json/JSONException from L21 to L22 using L2
.catch com/common/android/utils/http/HttpAuthException from L21 to L22 using L3
.catch com/common/android/utils/http/ResponseException from L21 to L22 using L4
.catch com/common/android/utils/http/HttpServerException from L21 to L22 using L5
.catch com/common/android/utils/http/HttpException from L21 to L22 using L6
.catch org/json/JSONException from L23 to L24 using L2
.catch com/common/android/utils/http/HttpAuthException from L23 to L24 using L3
.catch com/common/android/utils/http/ResponseException from L23 to L24 using L4
.catch com/common/android/utils/http/HttpServerException from L23 to L24 using L5
.catch com/common/android/utils/http/HttpException from L23 to L24 using L6
.catch org/json/JSONException from L25 to L2 using L2
.catch com/common/android/utils/http/HttpAuthException from L25 to L2 using L3
.catch com/common/android/utils/http/ResponseException from L25 to L2 using L4
.catch com/common/android/utils/http/HttpServerException from L25 to L2 using L5
.catch com/common/android/utils/http/HttpException from L25 to L2 using L6
iconst_0
istore 10
iconst_0
istore 11
iconst_0
istore 12
iconst_0
istore 13
iconst_0
istore 14
iconst_0
istore 9
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 15
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L0:
aload 15
ldc "name"
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getName()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L7:
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getMobile()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L10
L8:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L9:
aload 15
ldc "mobile"
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getMobile()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L10:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L11:
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getEmail()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L14
L12:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L13:
aload 15
ldc "email"
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getEmail()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L14:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L15:
aload 15
ldc "verifycode"
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getVerifyCode()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L16:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L17:
aload 15
ldc "usersflag"
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getFlag()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L18:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L19:
aload 0
getfield com/nd/android/u/cloud/com/OapAddOrgCom/moapApi Lcom/common/android/utils/http/HttpCom;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/cloud/com/OapAddOrgCom/BaseURL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "join/verifycheck"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 15
invokevirtual com/common/android/utils/http/HttpCom/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
L20:
iload 14
istore 4
aload 1
ifnull L26
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L21:
aload 1
ldc "code"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 3
L22:
iload 3
sipush 200
if_icmpne L27
iconst_1
istore 6
iconst_1
istore 7
iconst_1
istore 8
iconst_1
istore 4
iconst_1
istore 5
L23:
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/cloud/com/OapAddOrgCom/searchFRFromJson(Lorg/json/JSONObject;Lcom/nd/android/u/cloud/bean/OapAddOrgParamsOut;)V
L24:
iconst_1
ireturn
L27:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L25:
new com/nd/android/u/cloud/ComException
dup
iload 3
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/nd/android/u/cloud/ComException/<init>(ILjava/lang/String;)V
athrow
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iload 5
ireturn
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
iload 6
ireturn
L4:
astore 1
aload 1
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
iload 7
ireturn
L5:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
iload 8
ireturn
L6:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L26:
iload 4
ireturn
.limit locals 16
.limit stack 5
.end method

.method public verifyIDCard(Lcom/nd/android/u/cloud/bean/OapAddOrgParamsIn;Lcom/nd/android/u/cloud/bean/OapAddOrgParamsOut;)Z
.throws com/nd/android/u/cloud/ComException
.catch org/json/JSONException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpAuthException from L0 to L1 using L3
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L4
.catch com/common/android/utils/http/HttpServerException from L0 to L1 using L5
.catch com/common/android/utils/http/HttpException from L0 to L1 using L6
.catch org/json/JSONException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpAuthException from L7 to L8 using L3
.catch com/common/android/utils/http/ResponseException from L7 to L8 using L4
.catch com/common/android/utils/http/HttpServerException from L7 to L8 using L5
.catch com/common/android/utils/http/HttpException from L7 to L8 using L6
.catch org/json/JSONException from L9 to L10 using L2
.catch com/common/android/utils/http/HttpAuthException from L9 to L10 using L3
.catch com/common/android/utils/http/ResponseException from L9 to L10 using L4
.catch com/common/android/utils/http/HttpServerException from L9 to L10 using L5
.catch com/common/android/utils/http/HttpException from L9 to L10 using L6
.catch org/json/JSONException from L11 to L12 using L2
.catch com/common/android/utils/http/HttpAuthException from L11 to L12 using L3
.catch com/common/android/utils/http/ResponseException from L11 to L12 using L4
.catch com/common/android/utils/http/HttpServerException from L11 to L12 using L5
.catch com/common/android/utils/http/HttpException from L11 to L12 using L6
.catch org/json/JSONException from L13 to L14 using L2
.catch com/common/android/utils/http/HttpAuthException from L13 to L14 using L3
.catch com/common/android/utils/http/ResponseException from L13 to L14 using L4
.catch com/common/android/utils/http/HttpServerException from L13 to L14 using L5
.catch com/common/android/utils/http/HttpException from L13 to L14 using L6
.catch org/json/JSONException from L15 to L16 using L2
.catch com/common/android/utils/http/HttpAuthException from L15 to L16 using L3
.catch com/common/android/utils/http/ResponseException from L15 to L16 using L4
.catch com/common/android/utils/http/HttpServerException from L15 to L16 using L5
.catch com/common/android/utils/http/HttpException from L15 to L16 using L6
.catch org/json/JSONException from L17 to L18 using L2
.catch com/common/android/utils/http/HttpAuthException from L17 to L18 using L3
.catch com/common/android/utils/http/ResponseException from L17 to L18 using L4
.catch com/common/android/utils/http/HttpServerException from L17 to L18 using L5
.catch com/common/android/utils/http/HttpException from L17 to L18 using L6
.catch org/json/JSONException from L19 to L20 using L2
.catch com/common/android/utils/http/HttpAuthException from L19 to L20 using L3
.catch com/common/android/utils/http/ResponseException from L19 to L20 using L4
.catch com/common/android/utils/http/HttpServerException from L19 to L20 using L5
.catch com/common/android/utils/http/HttpException from L19 to L20 using L6
.catch org/json/JSONException from L21 to L22 using L2
.catch com/common/android/utils/http/HttpAuthException from L21 to L22 using L3
.catch com/common/android/utils/http/ResponseException from L21 to L22 using L4
.catch com/common/android/utils/http/HttpServerException from L21 to L22 using L5
.catch com/common/android/utils/http/HttpException from L21 to L22 using L6
.catch org/json/JSONException from L23 to L24 using L2
.catch com/common/android/utils/http/HttpAuthException from L23 to L24 using L3
.catch com/common/android/utils/http/ResponseException from L23 to L24 using L4
.catch com/common/android/utils/http/HttpServerException from L23 to L24 using L5
.catch com/common/android/utils/http/HttpException from L23 to L24 using L6
.catch org/json/JSONException from L25 to L2 using L2
.catch com/common/android/utils/http/HttpAuthException from L25 to L2 using L3
.catch com/common/android/utils/http/ResponseException from L25 to L2 using L4
.catch com/common/android/utils/http/HttpServerException from L25 to L2 using L5
.catch com/common/android/utils/http/HttpException from L25 to L2 using L6
iconst_0
istore 10
iconst_0
istore 11
iconst_0
istore 12
iconst_0
istore 13
iconst_0
istore 14
iconst_0
istore 9
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 15
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L0:
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getMobile()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L8
L1:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L7:
aload 15
ldc "mobile"
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getMobile()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L8:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L9:
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getEmail()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L12
L10:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L11:
aload 15
ldc "email"
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getEmail()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L12:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L13:
aload 15
ldc "name"
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getName()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L14:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L15:
aload 15
ldc "idcard"
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getIdcard()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L16:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L17:
aload 15
ldc "usersflag"
aload 1
invokevirtual com/nd/android/u/cloud/bean/OapAddOrgParamsIn/getFlag()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L18:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L19:
aload 0
getfield com/nd/android/u/cloud/com/OapAddOrgCom/moapApi Lcom/common/android/utils/http/HttpCom;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/cloud/com/OapAddOrgCom/BaseURL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "join/verifyidcard"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 15
invokevirtual com/common/android/utils/http/HttpCom/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
L20:
iload 14
istore 4
aload 1
ifnull L26
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L21:
aload 1
ldc "code"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 3
L22:
iload 3
sipush 200
if_icmpne L27
iconst_1
istore 6
iconst_1
istore 7
iconst_1
istore 8
iconst_1
istore 4
iconst_1
istore 5
L23:
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/cloud/com/OapAddOrgCom/searchFRFromJson(Lorg/json/JSONObject;Lcom/nd/android/u/cloud/bean/OapAddOrgParamsOut;)V
L24:
iconst_1
ireturn
L27:
iload 9
istore 5
iload 10
istore 6
iload 11
istore 7
iload 12
istore 8
iload 13
istore 4
L25:
new com/nd/android/u/cloud/ComException
dup
iload 3
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/nd/android/u/cloud/ComException/<init>(ILjava/lang/String;)V
athrow
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iload 5
ireturn
L3:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
iload 6
ireturn
L4:
astore 1
aload 1
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
iload 7
ireturn
L5:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
iload 8
ireturn
L6:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L26:
iload 4
ireturn
.limit locals 16
.limit stack 5
.end method
