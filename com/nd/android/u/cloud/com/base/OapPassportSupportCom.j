.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/com/base/OapPassportSupportCom
.super com/nd/android/u/contact/com/base/OapSupportCom

.field private static final 'ACCOUNT_BIND' Ljava/lang/String; = "account/bind"

.field private static final 'CHANGEUSER' Ljava/lang/String; = "passport/changeuser"

.field private static final 'CHECKCODE' Ljava/lang/String; = "passport/checkcode"

.field private static final 'CHECKURL' Ljava/lang/String; = "passport/check"

.field private static final 'CURRENTUSER' Ljava/lang/String; = "passport/currentuser"

.field private static final 'INNERLOGINURL' Ljava/lang/String; = "user/login1"

.field private static final 'INNERPASSWORD' Ljava/lang/String; = "user/password"

.field private static final 'INNERlOGINTICKETURL' Ljava/lang/String; = "user/loginticket1"

.field private static final 'JOIN_BIND' Ljava/lang/String; = "join/bind"

.field private static final 'LOGINURL' Ljava/lang/String; = "passport/login"

.field private static final 'LOGOUTURL' Ljava/lang/String; = "passport/logout"

.field private static final 'lOGINTICKETURL' Ljava/lang/String; = "passport/loginticket"

.field private final 'PLATFORM' I

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapSupportCom/<init>()V
aload 0
bipush 30
putfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/PLATFORM I
return
.limit locals 1
.limit stack 2
.end method

.method public static joinBind(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo;>;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;"
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L9
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
L0:
aload 5
ldc "name"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "mobile"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 5
ldc "verifycode"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 2
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 4
ldc "unit_id"
aload 3
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/getUnitId()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 4
ldc "uid"
aload 3
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckIDFragment$SingleUnitInfo/getUid()J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
aload 4
invokevirtual org/json/JSONArray/put(Ljava/lang/Object;)Lorg/json/JSONArray;
pop
L4:
goto L3
L2:
astore 0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
L5:
aload 5
ldc "users"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L6:
invokestatic com/product/android/business/config/Configuration/getLoginApiServiceUrl()Ljava/lang/String;
ldc "join/bind"
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
aload 5
aload 2
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
sipush 200
if_icmpne L10
L7:
new org/json/JSONObject
dup
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
L8:
aload 0
areturn
L9:
astore 0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
L10:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
.limit locals 6
.limit stack 4
.end method

.method private putClientInfoJson(Lorg/json/JSONObject;Lcom/nd/rj/common/login/entity/ClientInfo;)V
.catch org/json/JSONException from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
aload 3
ldc "appid"
aload 2
invokevirtual com/nd/rj/common/login/entity/ClientInfo/getAppid()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "platform"
aload 2
invokevirtual com/nd/rj/common/login/entity/ClientInfo/getPlatform()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 3
ldc "platformver"
aload 2
invokevirtual com/nd/rj/common/login/entity/ClientInfo/getPlatformver()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "packetid"
aload 2
invokevirtual com/nd/rj/common/login/entity/ClientInfo/getPacketid()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "deviceid"
aload 2
invokevirtual com/nd/rj/common/login/entity/ClientInfo/getDeviceId()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "devicetype"
aload 2
invokevirtual com/nd/rj/common/login/entity/ClientInfo/getDeviceType()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "systype"
aload 2
invokevirtual com/nd/rj/common/login/entity/ClientInfo/getSysType()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "sysver"
aload 2
invokevirtual com/nd/rj/common/login/entity/ClientInfo/getSysVerion()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "clientinfo"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 4
.limit stack 3
.end method

.method public doAccountBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
invokestatic com/product/android/business/config/Configuration/getLoginApiServiceUrl()Ljava/lang/String;
ldc "account/bind"
invokestatic com/nd/android/u/cloud/com/OapAddOrgCom/joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
aload 6
ldc "logincookie"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "password"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 5
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
astore 1
aload 1
invokevirtual com/common/android/utils/http/Response/getHttpResponse()Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 4
aload 3
aload 1
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
iload 4
ireturn
.limit locals 7
.limit stack 3
.end method

.method public doChangePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
invokestatic com/product/android/business/config/Configuration/getLoginApiServiceUrl()Ljava/lang/String;
ldc "user/password"
invokestatic com/nd/android/u/cloud/com/OapAddOrgCom/joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
aload 6
ldc "curr_password"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "new_password"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 5
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
astore 1
aload 1
invokevirtual com/common/android/utils/http/Response/getHttpResponse()Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 4
aload 3
aload 1
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
iload 4
ireturn
.limit locals 7
.limit stack 3
.end method

.method public doChangeUser(Ljava/lang/String;J)Lorg/json/JSONObject;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/changeuser"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
aload 5
ldc "unitid"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
lload 2
lconst_0
lcmp
ifeq L0
aload 5
ldc "uid"
lload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L0:
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
aload 5
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 6
.limit stack 4
.end method

.method public doCheck(Ljava/lang/String;I)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/check"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 4
ldc "uap_sid"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
iload 2
ifle L0
aload 4
ldc "insidepassport"
ldc "1"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L0:
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
iconst_1
ireturn
.limit locals 5
.limit stack 3
.end method

.method public doCheck(Ljava/lang/String;ILcom/nd/rj/common/login/entity/ClientInfo;)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/check"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
aload 5
ldc "uap_sid"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
iload 2
ifle L0
aload 5
ldc "insidepassport"
ldc "1"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L0:
aload 0
aload 5
aload 3
invokespecial com/nd/android/u/cloud/com/base/OapPassportSupportCom/putClientInfoJson(Lorg/json/JSONObject;Lcom/nd/rj/common/login/entity/ClientInfo;)V
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 4
aconst_null
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
iconst_1
ireturn
.limit locals 6
.limit stack 3
.end method

.method public doInnerLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/product/android/business/config/Configuration/getLoginApiServiceUrl()Ljava/lang/String;
ldc "user/login1"
invokestatic com/nd/android/u/cloud/com/OapAddOrgCom/joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 10
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 12
aload 12
ldc "account"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 12
ldc "password"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
iload 5
iconst_m1
if_icmpeq L0
iload 5
ifeq L0
aload 12
ldc "unitid"
iload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L0:
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 12
ldc "unitcode"
aload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 12
ldc "blowfish"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L2:
iload 4
iconst_m1
if_icmpeq L3
aload 12
ldc "flag"
iload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L3:
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 12
ldc "imgcode"
aload 8
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 12
ldc "client_ip"
aload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L5:
iload 9
iconst_m1
if_icmpeq L6
aload 12
ldc "encrypt"
iconst_1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L6:
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
invokestatic com/nd/android/u/cloud/com/WorkIdLoginCom/getInstance()Lcom/nd/android/u/cloud/com/WorkIdLoginCom;
invokevirtual com/nd/android/u/cloud/com/WorkIdLoginCom/getSidFromCheckcode()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 10
aload 12
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
astore 1
aload 1
invokevirtual com/common/android/utils/http/Response/getHttpResponse()Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 4
aload 11
aload 1
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
iload 4
ireturn
.limit locals 13
.limit stack 3
.end method

.method public doInnerLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuilder;)I
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user/login1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 11
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 12
aload 12
ldc "account"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 12
ldc "password"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
iload 5
iconst_m1
if_icmpeq L0
iload 5
ifeq L0
aload 12
ldc "unitid"
iload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L0:
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 12
ldc "unitcode"
aload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 12
ldc "blowfish"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L2:
iload 4
iconst_m1
if_icmpeq L3
aload 12
ldc "flag"
iload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L3:
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 12
ldc "imgcode"
aload 8
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 12
ldc "client_ip"
aload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L5:
iload 9
iconst_m1
if_icmpeq L6
aload 12
ldc "encrypt"
iconst_0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L6:
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
invokestatic com/nd/android/u/cloud/com/WorkIdLoginCom/getInstance()Lcom/nd/android/u/cloud/com/WorkIdLoginCom;
invokevirtual com/nd/android/u/cloud/com/WorkIdLoginCom/getSidFromCheckcode()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/setSid(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 11
aload 12
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
astore 1
aload 1
invokevirtual com/common/android/utils/http/Response/getHttpResponse()Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 4
aload 10
aload 1
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
iload 4
ireturn
.limit locals 13
.limit stack 3
.end method

.method public doLogin(Ljava/lang/String;Ljava/lang/String;Lcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
invokestatic com/product/android/business/config/Configuration/getLoginApiServiceUrl()Ljava/lang/String;
ldc "user/loginticket1"
invokestatic com/nd/android/u/cloud/com/OapAddOrgCom/joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
aload 7
ldc "ticket"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "blowfish"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ifnull L0
aload 7
ldc "clientinfo"
aload 3
invokevirtual com/nd/rj/common/login/entity/ClientInfo/toJsonObject()Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L0:
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 6
aload 7
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
astore 1
aload 1
invokevirtual com/common/android/utils/http/Response/getHttpResponse()Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 5
aload 4
aload 1
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
iload 5
ireturn
.limit locals 8
.limit stack 3
.end method

.method public doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user/loginticket1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
aload 6
ldc "ticket"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "blowfish"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 5
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
astore 1
aload 1
invokevirtual com/common/android/utils/http/Response/getHttpResponse()Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 4
aload 3
aload 1
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
iload 4
ireturn
.limit locals 7
.limit stack 3
.end method

.method public doLogin(Ljava/lang/String;Ljava/lang/String;IIJ)Lorg/json/JSONObject;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/loginticket"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 8
aload 8
ldc "ticket"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "blowfish"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
iload 3
iconst_m1
if_icmpeq L0
aload 8
ldc "flag"
iload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L0:
iload 4
iconst_m1
if_icmpeq L1
iload 4
ifeq L1
aload 8
ldc "unitid"
iload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L1:
lload 5
ldc2_w -1L
lcmp
ifeq L2
iload 4
ifeq L2
aload 8
ldc "uid"
lload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L2:
aload 8
ldc "appid"
getstatic com/product/android/business/config/Configuration/MYAPPID I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 8
ldc "platform"
bipush 30
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 7
aload 8
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 9
.limit stack 4
.end method

.method public doLogin(Ljava/lang/String;Ljava/lang/String;IIJLcom/nd/rj/common/login/entity/ClientInfo;)Lorg/json/JSONObject;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/loginticket"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 8
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 9
aload 9
ldc "ticket"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "blowfish"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
iload 3
iconst_m1
if_icmpeq L0
aload 9
ldc "flag"
iload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L0:
iload 4
iconst_m1
if_icmpeq L1
iload 4
ifeq L1
aload 9
ldc "unitid"
iload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L1:
lload 5
ldc2_w -1L
lcmp
ifeq L2
iload 4
ifeq L2
aload 9
ldc "uid"
lload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L2:
aload 9
ldc "appid"
getstatic com/product/android/business/config/Configuration/MYAPPID I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 9
ldc "platform"
bipush 30
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
aload 9
aload 7
invokespecial com/nd/android/u/cloud/com/base/OapPassportSupportCom/putClientInfoJson(Lorg/json/JSONObject;Lcom/nd/rj/common/login/entity/ClientInfo;)V
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 8
aload 9
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 10
.limit stack 4
.end method

.method public doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/login"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 8
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 9
aload 9
ldc "account"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "password"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "blowfish"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
iload 4
iconst_m1
if_icmpeq L0
aload 9
ldc "flag"
iload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L0:
iload 5
iconst_m1
if_icmpeq L1
iload 5
ifeq L1
aload 9
ldc "unitid"
iload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L1:
lload 6
ldc2_w -1L
lcmp
ifeq L2
lload 6
lconst_0
lcmp
ifeq L2
aload 9
ldc "uid"
lload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L2:
aload 9
ldc "appid"
getstatic com/product/android/business/config/Configuration/MYAPPID I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 9
ldc "platform"
bipush 30
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 8
aload 9
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 10
.limit stack 4
.end method

.method public doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJLcom/nd/rj/common/login/entity/ClientInfo;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/login"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 9
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 10
aload 10
ldc "account"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "password"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "blowfish"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
iload 4
iconst_m1
if_icmpeq L0
aload 10
ldc "flag"
iload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L0:
iload 5
iconst_m1
if_icmpeq L1
iload 5
ifeq L1
aload 10
ldc "unitid"
iload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L1:
lload 6
ldc2_w -1L
lcmp
ifeq L2
lload 6
lconst_0
lcmp
ifeq L2
aload 10
ldc "uid"
lload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L2:
aload 10
ldc "appid"
getstatic com/product/android/business/config/Configuration/MYAPPID I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 10
ldc "platform"
bipush 30
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
aload 10
aload 8
invokespecial com/nd/android/u/cloud/com/base/OapPassportSupportCom/putClientInfoJson(Lorg/json/JSONObject;Lcom/nd/rj/common/login/entity/ClientInfo;)V
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 9
aload 10
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 11
.limit stack 4
.end method

.method public doLogout()Z
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/logout"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 1
aconst_null
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public doQueryCurrentUser()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/currentuser"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?getadmin=1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getCheckCode()Landroid/graphics/Bitmap;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch java/io/IOException from L4 to L5 using L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getLoginApiServiceUrl()Ljava/lang/String;
ldc "passport/checkcode"
invokestatic com/nd/android/u/cloud/com/OapAddOrgCom/joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/Math/random()D
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aconst_null
astore 2
L0:
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 1
aconst_null
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
astore 3
L1:
aload 2
astore 1
aload 3
ifnull L5
aload 2
astore 1
L4:
aload 3
invokevirtual com/common/android/utils/http/Response/getHttpResponse()Lorg/apache/http/HttpResponse;
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
sipush 200
if_icmpne L5
aload 3
invokevirtual com/common/android/utils/http/Response/asBitmap()Landroid/graphics/Bitmap;
astore 1
L5:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
L3:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method

.method public getUserInfoByCheck(Ljava/lang/String;)Lcom/product/android/business/bean/UserInfo;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/setSid(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/check"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 4
ldc "uap_sid"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aconst_null
astore 2
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
aload 3
ifnull L0
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
astore 2
aload 2
aload 3
ldc "uap_uid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setOapUid(J)V
aload 2
aload 3
ldc "uid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 2
aload 3
ldc "unitid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/product/android/business/bean/UserInfo/setOapUnitId(I)V
aload 2
aload 1
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
L0:
aload 2
areturn
.limit locals 5
.limit stack 3
.end method

.method public getUserInfoByCheck(Ljava/lang/String;Lcom/nd/rj/common/login/entity/ClientInfo;)Lcom/product/android/business/bean/UserInfo;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/setSid(Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/check"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 4
ldc "uap_sid"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
aload 4
aload 2
invokespecial com/nd/android/u/cloud/com/base/OapPassportSupportCom/putClientInfoJson(Lorg/json/JSONObject;Lcom/nd/rj/common/login/entity/ClientInfo;)V
aconst_null
astore 2
aload 0
getfield com/nd/android/u/cloud/com/base/OapPassportSupportCom/oapApiHttps Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
aload 3
ifnull L0
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
astore 2
aload 2
aload 3
ldc "uap_uid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setOapUid(J)V
aload 2
aload 3
ldc "uid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 2
aload 3
ldc "unitid"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/product/android/business/bean/UserInfo/setOapUnitId(I)V
aload 2
aload 1
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
L0:
aload 2
areturn
.limit locals 5
.limit stack 3
.end method
