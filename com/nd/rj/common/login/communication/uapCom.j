.bytecode 50.0
.class public synchronized com/nd/rj/common/login/communication/uapCom
.super java/lang/Object

.field private static final 'BASE_URL_IN' Ljava/lang/String; = "https://192.168.94.19/uaps/"

.field private static final 'BASE_URL_OUT' Ljava/lang/String; = "https://uap.99.com/"

.field private static final 'LOGIN_URL' Ljava/lang/String; = "login"

.field private static 'mCom' Lcom/nd/rj/common/login/communication/uapCom;

.field private final 'CHARGE_URL' Ljava/lang/String;

.field private final 'CHECKSESSION_URL' Ljava/lang/String;

.field private final 'GET_TICKET_BY_COOKIE_URL' Ljava/lang/String;

.field private final 'GET_USER_URL' Ljava/lang/String;

.field private final 'REG_PHONE' Ljava/lang/String;

.field private final 'SEND_CODE' Ljava/lang/String;

.field private final 'TICKET_URL' Ljava/lang/String;

.field private final 'USER_URL' Ljava/lang/String;

.field private 'mAppid' Ljava/lang/String;

.field private 'mContext' Landroid/content/Context;

.field private 'mHttpRequest' Lcom/common/android/utils/httpRequest/IHttpRequest;

.field private 'mUapAppid' Ljava/lang/String;

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "user"
putfield com/nd/rj/common/login/communication/uapCom/USER_URL Ljava/lang/String;
aload 0
ldc "ndsoap/alias_sendcode"
putfield com/nd/rj/common/login/communication/uapCom/SEND_CODE Ljava/lang/String;
aload 0
ldc "ndsoap/alias_regphone"
putfield com/nd/rj/common/login/communication/uapCom/REG_PHONE Ljava/lang/String;
aload 0
ldc "login/charge?sid=%s"
putfield com/nd/rj/common/login/communication/uapCom/CHARGE_URL Ljava/lang/String;
aload 0
ldc "user/%d?sid=%s"
putfield com/nd/rj/common/login/communication/uapCom/GET_USER_URL Ljava/lang/String;
aload 0
ldc "checksession?sid=%s"
putfield com/nd/rj/common/login/communication/uapCom/CHECKSESSION_URL Ljava/lang/String;
aload 0
ldc "login/cookie"
putfield com/nd/rj/common/login/communication/uapCom/GET_TICKET_BY_COOKIE_URL Ljava/lang/String;
aload 0
ldc "login/ticket"
putfield com/nd/rj/common/login/communication/uapCom/TICKET_URL Ljava/lang/String;
aload 0
aload 1
invokestatic com/common/android/utils/httpRequest/HttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
putfield com/nd/rj/common/login/communication/uapCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 0
aload 1
putfield com/nd/rj/common/login/communication/uapCom/mContext Landroid/content/Context;
aload 0
aload 1
invokestatic com/nd/rj/common/login/GlobalSetting/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/GlobalSetting;
invokevirtual com/nd/rj/common/login/GlobalSetting/getAppid()Ljava/lang/String;
putfield com/nd/rj/common/login/communication/uapCom/mAppid Ljava/lang/String;
aload 0
aload 1
invokestatic com/nd/rj/common/login/GlobalSetting/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/GlobalSetting;
invokevirtual com/nd/rj/common/login/GlobalSetting/getUapAppid()Ljava/lang/String;
putfield com/nd/rj/common/login/communication/uapCom/mUapAppid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private _getResponseErrMsg(Ljava/lang/StringBuilder;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 1
invokevirtual java/lang/StringBuilder/length()I
ifle L1
L0:
new org/json/JSONObject
dup
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "msg"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L1
aload 1
iconst_0
aload 1
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 1
aload 2
ldc "msg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 3
.limit stack 3
.end method

.method private appendUapAppid(Ljava/lang/String;)Ljava/lang/String;
aload 1
ldc "?"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
ifle L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&&appid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mUapAppid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?appid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mUapAppid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method private getBaseHttpUrl()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mContext Landroid/content/Context;
invokestatic com/nd/rj/common/login/GlobalSetting/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/GlobalSetting;
invokevirtual com/nd/rj/common/login/GlobalSetting/getNetworkEnv()I
istore 1
iload 1
iconst_2
if_icmpne L0
ldc "https://192.168.94.19/uaps/"
areturn
L0:
iload 1
ifne L1
ldc "https://uap.99.com/"
areturn
L1:
ldc "https://uap.99.com/"
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/uapCom;
getstatic com/nd/rj/common/login/communication/uapCom/mCom Lcom/nd/rj/common/login/communication/uapCom;
ifnonnull L0
new com/nd/rj/common/login/communication/uapCom
dup
aload 0
invokespecial com/nd/rj/common/login/communication/uapCom/<init>(Landroid/content/Context;)V
putstatic com/nd/rj/common/login/communication/uapCom/mCom Lcom/nd/rj/common/login/communication/uapCom;
L0:
getstatic com/nd/rj/common/login/communication/uapCom/mCom Lcom/nd/rj/common/login/communication/uapCom;
areturn
.limit locals 1
.limit stack 3
.end method

.method public checkSession(Ljava/lang/String;Ljava/lang/StringBuilder;)I
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokespecial com/nd/rj/common/login/communication/uapCom/getBaseHttpUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "checksession?sid=%s"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/login/communication/uapCom/appendUapAppid(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 1
aload 2
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I 2
istore 3
iload 3
sipush 200
if_icmpeq L0
aload 0
aload 2
invokespecial com/nd/rj/common/login/communication/uapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
iload 3
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 7
.end method

.method public getTicketByCookie(Ljava/lang/String;Ljava/lang/String;Lcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
.catch org/json/JSONException from L11 to L12 using L2
.catch org/json/JSONException from L13 to L14 using L2
.catch org/json/JSONException from L15 to L16 using L2
.catch org/json/JSONException from L17 to L18 using L2
.catch org/json/JSONException from L19 to L20 using L2
.catch org/json/JSONException from L21 to L22 using L2
.catch org/json/JSONException from L23 to L24 using L2
.catch org/json/JSONException from L25 to L26 using L2
getstatic com/nd/rj/common/R$string/nd_json_error I
istore 6
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokespecial com/nd/rj/common/login/communication/uapCom/getBaseHttpUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "login/cookie"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/login/communication/uapCom/appendUapAppid(Ljava/lang/String;)Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
iload 6
istore 5
L0:
aload 7
ldc "appid"
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mAppid Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
iload 6
istore 5
L3:
aload 7
ldc "blowfish"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
iload 6
istore 5
L5:
aload 7
ldc "cookie"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L6:
iload 6
istore 5
L7:
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 3
aload 7
aload 4
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I 3
istore 6
L8:
iload 6
sipush 200
if_icmpeq L27
iload 6
lookupswitch
400 : L28
403 : L14
404 : L18
503 : L22
default : L29
L30:
iload 6
istore 5
L9:
aload 0
aload 4
invokespecial com/nd/rj/common/login/communication/uapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L10:
iload 6
ireturn
L28:
iload 6
istore 5
L11:
aload 4
iconst_0
aload 4
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
L12:
iload 6
istore 5
L13:
getstatic com/nd/rj/common/R$string/nd_login_cookie_400 I
ireturn
L14:
iload 6
istore 5
L15:
aload 4
iconst_0
aload 4
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
L16:
iload 6
istore 5
L17:
getstatic com/nd/rj/common/R$string/nd_login_cookie_403 I
ireturn
L18:
iload 6
istore 5
L19:
aload 4
iconst_0
aload 4
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
L20:
iload 6
istore 5
L21:
getstatic com/nd/rj/common/R$string/nd_login_cookie_404 I
ireturn
L22:
iload 6
istore 5
L23:
aload 4
iconst_0
aload 4
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
L24:
iload 6
istore 5
L25:
getstatic com/nd/rj/common/R$string/nd_login_cookie_503 I
istore 6
L26:
iload 6
ireturn
L27:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iload 5
ireturn
L29:
goto L30
.limit locals 8
.limit stack 4
.end method

.method public getUserInfo(JLjava/lang/String;Ljava/lang/StringBuilder;)I
getstatic com/nd/rj/common/R$string/nd_get_user_profile_error I
istore 5
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokespecial com/nd/rj/common/login/communication/uapCom/getBaseHttpUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user/%d?sid=%s"
iconst_2
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_1
aload 3
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/login/communication/uapCom/appendUapAppid(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 3
aload 4
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I 2
istore 5
iload 5
sipush 200
if_icmpeq L0
iload 5
sipush 404
if_icmpeq L0
aload 0
aload 4
invokespecial com/nd/rj/common/login/communication/uapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
iload 5
ireturn
L0:
iconst_0
ireturn
.limit locals 6
.limit stack 8
.end method

.method public getWlSid(JILjava/lang/String;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
getstatic com/nd/rj/common/R$string/nd_get_wlsid_error I
istore 6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
L0:
aload 7
ldc "uid"
lload 1
invokestatic java/lang/Long/toString(J)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "siteid"
iload 3
invokestatic java/lang/Integer/toString(I)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokespecial com/nd/rj/common/login/communication/uapCom/getBaseHttpUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "login/charge?sid=%s"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 4
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/login/communication/uapCom/appendUapAppid(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 4
aload 7
aload 5
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I 3
istore 3
L1:
iload 3
sipush 200
if_icmpeq L5
L3:
aload 0
aload 5
invokespecial com/nd/rj/common/login/communication/uapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L4:
iload 3
ireturn
L5:
iconst_0
ireturn
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/nd/rj/common/R$string/nd_json_error I
ireturn
.limit locals 8
.limit stack 7
.end method

.method public logOut(JLjava/lang/String;)V
aload 0
ldc "%s/logout/%d?sid=%s"
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 0
invokespecial com/nd/rj/common/login/communication/uapCom/getBaseHttpUrl()Ljava/lang/String;
aastore
dup
iconst_1
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_2
aload 3
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokespecial com/nd/rj/common/login/communication/uapCom/appendUapAppid(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 3
ldc ""
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I 3
pop
return
.limit locals 4
.limit stack 7
.end method

.method public regPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
getstatic com/nd/rj/common/R$string/nd_reg_phone_error I
istore 7
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 8
L0:
aload 8
ldc "appid"
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mAppid Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "phone"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "password"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "nickname"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "verifycode"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "blowfish"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 8
ldc "rsa"
ldc "0"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokespecial com/nd/rj/common/login/communication/uapCom/getBaseHttpUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "ndsoap/alias_regphone"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/login/communication/uapCom/appendUapAppid(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 1
aload 8
aload 6
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I 3
istore 7
L1:
iload 7
sipush 201
if_icmpeq L5
iload 7
sipush 409
if_icmpeq L5
L3:
aload 0
aload 6
invokespecial com/nd/rj/common/login/communication/uapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L4:
iload 7
ireturn
L5:
iload 7
sipush 409
if_icmpne L6
iconst_1
ireturn
L6:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/nd/rj/common/R$string/nd_json_error I
ireturn
.limit locals 9
.limit stack 4
.end method

.method public sendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
getstatic com/nd/rj/common/R$string/nd_send_code_error I
istore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
L0:
aload 5
ldc "appid"
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mAppid Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "uid"
ldc ""
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "phone"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "type"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "rsa"
ldc "0"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokespecial com/nd/rj/common/login/communication/uapCom/getBaseHttpUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "ndsoap/alias_sendcode"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/login/communication/uapCom/appendUapAppid(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 1
aload 5
aload 3
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I 3
istore 4
L1:
iload 4
sipush 200
if_icmpeq L5
L3:
aload 0
aload 3
invokespecial com/nd/rj/common/login/communication/uapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L4:
iload 4
ireturn
L5:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/nd/rj/common/R$string/nd_json_error I
ireturn
.limit locals 6
.limit stack 4
.end method

.method public userLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch org/json/JSONException from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch org/json/JSONException from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch all from L12 to L13 using L3
getstatic com/nd/rj/common/R$string/nd_uap_login_error I
istore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
L0:
aload 6
ldc "appid"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 6
ldc "password"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "username"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "rsa"
ldc "1"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
aload 0
invokespecial com/nd/rj/common/login/communication/uapCom/getBaseHttpUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "login"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 0
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/login/communication/uapCom/appendUapAppid(Ljava/lang/String;)Ljava/lang/String;
aload 6
aload 4
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I 3
istore 1
L1:
iload 1
sipush 200
if_icmpeq L14
iload 1
tableswitch 400
L6
L4
L4
L8
L10
default : L15
L4:
aload 0
aload 4
invokespecial com/nd/rj/common/login/communication/uapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L5:
goto L16
L6:
aload 4
iconst_0
aload 4
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_limit I
istore 1
L7:
goto L16
L8:
aload 4
iconst_0
aload 4
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_psw_error I
istore 1
L9:
goto L16
L10:
aload 4
iconst_0
aload 4
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_account_not_exists I
istore 1
L11:
goto L16
L14:
iconst_0
istore 1
goto L16
L2:
astore 2
L12:
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/nd/rj/common/R$string/nd_json_error I
istore 1
L13:
iload 1
ireturn
L3:
astore 2
aload 2
athrow
L15:
goto L4
L16:
iload 1
ireturn
.limit locals 7
.limit stack 4
.end method

.method public userLoginTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
.catch org/json/JSONException from L11 to L12 using L2
.catch org/json/JSONException from L13 to L14 using L2
.catch org/json/JSONException from L15 to L16 using L2
.catch org/json/JSONException from L17 to L18 using L2
.catch org/json/JSONException from L19 to L20 using L2
.catch org/json/JSONException from L21 to L22 using L2
getstatic com/nd/rj/common/R$string/nd_json_error I
istore 5
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokespecial com/nd/rj/common/login/communication/uapCom/getBaseHttpUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "login/ticket"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/login/communication/uapCom/appendUapAppid(Ljava/lang/String;)Ljava/lang/String;
astore 6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
iload 5
istore 4
L0:
aload 7
ldc "appid"
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mAppid Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
iload 5
istore 4
L3:
aload 7
ldc "blowfish"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
iload 5
istore 4
L5:
aload 7
ldc "ticket"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L6:
iload 5
istore 4
L7:
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 6
aload 7
aload 3
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I 3
istore 5
L8:
iload 5
sipush 200
if_icmpeq L23
iload 5
tableswitch 400
L24
L25
L25
L14
L18
default : L26
L25:
iload 5
istore 4
L9:
aload 0
aload 3
invokespecial com/nd/rj/common/login/communication/uapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L10:
iload 5
ireturn
L24:
iload 5
istore 4
L11:
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
L12:
iload 5
istore 4
L13:
getstatic com/nd/rj/common/R$string/nd_login_process_error I
ireturn
L14:
iload 5
istore 4
L15:
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
L16:
iload 5
istore 4
L17:
getstatic com/nd/rj/common/R$string/nd_login_ticket_403 I
ireturn
L18:
iload 5
istore 4
L19:
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
L20:
iload 5
istore 4
L21:
getstatic com/nd/rj/common/R$string/nd_login_ticket_404 I
istore 5
L22:
iload 5
ireturn
L23:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iload 4
ireturn
L26:
goto L25
.limit locals 8
.limit stack 4
.end method

.method public userRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
getstatic com/nd/rj/common/R$string/nd_user_register_error I
istore 6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
L0:
aload 7
ldc "appid"
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mAppid Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "username"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "password"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "nickname"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "blowfish"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "rsa"
ldc "1"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokespecial com/nd/rj/common/login/communication/uapCom/getBaseHttpUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/login/communication/uapCom/appendUapAppid(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/login/communication/uapCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 1
aload 7
aload 5
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I 3
istore 6
L1:
iload 6
sipush 201
if_icmpeq L5
L3:
aload 0
aload 5
invokespecial com/nd/rj/common/login/communication/uapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L4:
iload 6
ireturn
L5:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/nd/rj/common/R$string/nd_json_error I
ireturn
.limit locals 8
.limit stack 4
.end method
