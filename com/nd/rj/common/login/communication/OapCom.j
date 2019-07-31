.bytecode 50.0
.class public synchronized com/nd/rj/common/login/communication/OapCom
.super java/lang/Object

.field private static 'mCom' Lcom/nd/rj/common/login/communication/OapCom;

.field private final 'BINDUSER_URL' Ljava/lang/String;

.field private final 'CHANGEUSER_URL' Ljava/lang/String;

.field private final 'DEPT_URL' Ljava/lang/String;

.field private final 'LOGIN_URL' Ljava/lang/String;

.field private final 'LOGIN_URL_COOKIE' Ljava/lang/String;

.field private final 'LOGIN_URL_TICKET' Ljava/lang/String;

.field private final 'USERBINDCANCEL_URL' Ljava/lang/String;

.field private final 'USERBIND_URL' Ljava/lang/String;

.field private final 'USERDETAIL_URL' Ljava/lang/String;

.field private final 'USER_CHECK' Ljava/lang/String;

.field private 'mAppid' Ljava/lang/String;

.field private 'mHttpRequest' Lcom/common/android/utils/httpRequest/OapHttpRequest;

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "passport/login"
putfield com/nd/rj/common/login/communication/OapCom/LOGIN_URL Ljava/lang/String;
aload 0
ldc "unit/depts"
putfield com/nd/rj/common/login/communication/OapCom/DEPT_URL Ljava/lang/String;
aload 0
ldc "user/info"
putfield com/nd/rj/common/login/communication/OapCom/USERDETAIL_URL Ljava/lang/String;
aload 0
ldc "user/list"
putfield com/nd/rj/common/login/communication/OapCom/BINDUSER_URL Ljava/lang/String;
aload 0
ldc "passport/changeuser"
putfield com/nd/rj/common/login/communication/OapCom/CHANGEUSER_URL Ljava/lang/String;
aload 0
ldc "org/userbind"
putfield com/nd/rj/common/login/communication/OapCom/USERBIND_URL Ljava/lang/String;
aload 0
ldc "org/userbindcancel"
putfield com/nd/rj/common/login/communication/OapCom/USERBINDCANCEL_URL Ljava/lang/String;
aload 0
ldc "passport/cookielogin"
putfield com/nd/rj/common/login/communication/OapCom/LOGIN_URL_COOKIE Ljava/lang/String;
aload 0
ldc "passport/loginticket"
putfield com/nd/rj/common/login/communication/OapCom/LOGIN_URL_TICKET Ljava/lang/String;
aload 0
ldc "v2/passport/api/user/check"
putfield com/nd/rj/common/login/communication/OapCom/USER_CHECK Ljava/lang/String;
aload 0
aload 1
invokestatic com/common/android/utils/httpRequest/OapHttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
putfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 0
aload 1
invokestatic com/nd/rj/common/login/GlobalSetting/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/GlobalSetting;
invokevirtual com/nd/rj/common/login/GlobalSetting/getAppid()Ljava/lang/String;
putfield com/nd/rj/common/login/communication/OapCom/mAppid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private _getResponseErrMsg(Ljava/lang/StringBuilder;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 1
ifnull L1
aload 1
invokevirtual java/lang/StringBuilder/length()I
ifle L1
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "java.lang.NullPointerException"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
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
return
.limit locals 3
.limit stack 3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/OapCom;
getstatic com/nd/rj/common/login/communication/OapCom/mCom Lcom/nd/rj/common/login/communication/OapCom;
ifnonnull L0
new com/nd/rj/common/login/communication/OapCom
dup
aload 0
invokespecial com/nd/rj/common/login/communication/OapCom/<init>(Landroid/content/Context;)V
putstatic com/nd/rj/common/login/communication/OapCom/mCom Lcom/nd/rj/common/login/communication/OapCom;
L0:
getstatic com/nd/rj/common/login/communication/OapCom/mCom Lcom/nd/rj/common/login/communication/OapCom;
areturn
.limit locals 1
.limit stack 3
.end method

.method public changeUser(JJLjava/lang/String;Ljava/lang/StringBuilder;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
iconst_0
istore 8
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 9
iload 8
istore 7
L0:
aload 9
ldc "unitid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
iload 8
istore 7
L3:
aload 9
ldc "uid"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L4:
iload 8
istore 7
L5:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 10
L6:
iload 8
istore 7
L7:
aload 10
aload 0
invokevirtual com/nd/rj/common/login/communication/OapCom/getBaseUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/changeuser"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L8:
iload 8
istore 7
L9:
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 5
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
L10:
iload 8
istore 7
L11:
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 10
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 9
aload 6
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 8
L12:
iload 8
sipush 200
if_icmpeq L15
iload 8
istore 7
L13:
aload 0
aload 6
invokespecial com/nd/rj/common/login/communication/OapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L14:
iload 8
ireturn
L15:
iconst_0
ireturn
L2:
astore 5
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
iload 7
ireturn
.limit locals 11
.limit stack 4
.end method

.method public getBaseUrl()Ljava/lang/String;
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBindUser(Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
iconst_0
istore 4
iload 4
istore 3
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
L1:
iload 4
istore 3
L3:
aload 5
aload 0
invokevirtual com/nd/rj/common/login/communication/OapCom/getBaseUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L4:
iload 4
istore 3
L5:
aload 5
ldc "user/list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L6:
iload 4
istore 3
L7:
aload 5
ldc "?unitid=0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L8:
iload 4
istore 3
L9:
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 1
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
L10:
iload 4
istore 3
L11:
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 4
L12:
iload 4
sipush 200
if_icmpeq L15
iload 4
istore 3
L13:
aload 0
aload 2
invokespecial com/nd/rj/common/login/communication/OapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L14:
iload 4
ireturn
L15:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iload 3
ireturn
.limit locals 6
.limit stack 3
.end method

.method public getDepts(Ljava/lang/StringBuilder;JJILjava/lang/String;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
iconst_0
istore 9
iload 9
istore 8
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 10
L1:
iload 9
istore 8
L3:
aload 10
aload 0
invokevirtual com/nd/rj/common/login/communication/OapCom/getBaseUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "unit/depts"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L4:
lload 2
lconst_0
lcmp
ifle L17
iload 9
istore 8
L5:
aload 10
ldc "?unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L6:
iload 9
istore 8
L7:
aload 10
ldc "&issub="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L8:
iload 9
istore 8
L9:
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 7
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
L10:
iload 9
istore 8
L11:
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 10
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 6
L12:
iload 6
sipush 200
if_icmpeq L18
iload 6
istore 8
L13:
aload 0
aload 1
invokespecial com/nd/rj/common/login/communication/OapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L14:
iload 6
ireturn
L17:
iload 9
istore 8
L15:
aload 10
ldc "&deptid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L16:
goto L6
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iload 8
ireturn
L18:
iconst_0
ireturn
.limit locals 11
.limit stack 4
.end method

.method public getUserDetail(JLjava/lang/String;Ljava/lang/StringBuilder;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
iconst_0
istore 6
iload 6
istore 5
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
L1:
iload 6
istore 5
L3:
aload 7
aload 0
invokevirtual com/nd/rj/common/login/communication/OapCom/getBaseUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user/info"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L4:
iload 6
istore 5
L5:
aload 7
ldc "?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L6:
iload 6
istore 5
L7:
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 3
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
L8:
iload 6
istore 5
L9:
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 4
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doGet(Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 6
L10:
iload 6
sipush 200
if_icmpeq L13
iload 6
istore 5
L11:
aload 0
aload 4
invokespecial com/nd/rj/common/login/communication/OapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L12:
iload 6
ireturn
L13:
iconst_0
ireturn
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
iload 5
ireturn
.limit locals 8
.limit stack 3
.end method

.method public userBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
iconst_0
istore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
iload 5
istore 4
L0:
aload 6
ldc "authcode"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
iload 5
istore 4
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
L4:
iload 5
istore 4
L5:
aload 1
aload 0
invokevirtual com/nd/rj/common/login/communication/OapCom/getBaseUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "org/userbind"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L6:
iload 5
istore 4
L7:
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 2
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
L8:
iload 5
istore 4
L9:
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 6
aload 3
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 5
L10:
iload 5
sipush 200
if_icmpeq L13
iload 5
istore 4
L11:
aload 0
aload 3
invokespecial com/nd/rj/common/login/communication/OapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L12:
iload 5
ireturn
L13:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iload 4
ireturn
.limit locals 7
.limit stack 4
.end method

.method public userBindCancel(JJLjava/lang/String;Ljava/lang/StringBuilder;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
iconst_0
istore 8
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 9
iload 8
istore 7
L0:
aload 9
ldc "unitid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
iload 8
istore 7
L3:
aload 9
ldc "uid"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L4:
iload 8
istore 7
L5:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 10
L6:
iload 8
istore 7
L7:
aload 10
aload 0
invokevirtual com/nd/rj/common/login/communication/OapCom/getBaseUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "org/userbindcancel"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L8:
iload 8
istore 7
L9:
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 5
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
L10:
iload 8
istore 7
L11:
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 10
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 9
aload 6
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 8
L12:
iload 8
sipush 200
if_icmpeq L15
iload 8
istore 7
L13:
aload 0
aload 6
invokespecial com/nd/rj/common/login/communication/OapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L14:
iload 8
ireturn
L15:
iconst_0
ireturn
L2:
astore 5
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
iload 7
ireturn
.limit locals 11
.limit stack 4
.end method

.method public userCheck(Ljava/lang/String;Ljava/lang/StringBuilder;)I
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
.catch org/json/JSONException from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch org/json/JSONException from L14 to L15 using L2
.catch all from L14 to L15 using L3
.catch all from L16 to L17 using L3
getstatic com/nd/rj/common/R$string/nd_user_check_error I
istore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "uap_sid"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOapNewServerUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "v2/passport/api/user/check"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 1
aload 4
aload 2
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 3
L1:
iload 3
sipush 200
if_icmpeq L18
iload 3
tableswitch 400
L10
L4
L8
L12
L14
L4
L6
default : L19
L4:
aload 0
aload 2
invokespecial com/nd/rj/common/login/communication/OapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
getstatic com/nd/rj/common/R$string/nd_connect_server_error I
istore 3
L5:
goto L20
L6:
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_user_check_fail I
istore 3
L7:
goto L20
L8:
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_user_check_param_error I
istore 3
L9:
goto L20
L10:
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_limit I
istore 3
L11:
goto L20
L12:
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
ldc "LOGIN2"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic com/nd/rj/common/R$string/nd_login_psw_error I
istore 3
L13:
goto L20
L14:
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_account_not_exists I
istore 3
L15:
goto L20
L18:
iconst_0
istore 3
goto L20
L2:
astore 1
L16:
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/nd/rj/common/R$string/nd_json_error I
istore 3
L17:
iload 3
ireturn
L3:
astore 1
aload 1
athrow
L19:
goto L4
L20:
iload 3
ireturn
.limit locals 5
.limit stack 4
.end method

.method public userLogin(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch org/json/JSONException from L7 to L8 using L2
.catch all from L7 to L8 using L3
.catch org/json/JSONException from L9 to L10 using L2
.catch all from L9 to L10 using L3
.catch org/json/JSONException from L11 to L12 using L2
.catch all from L11 to L12 using L3
.catch org/json/JSONException from L13 to L14 using L2
.catch all from L13 to L14 using L3
.catch org/json/JSONException from L15 to L16 using L2
.catch all from L15 to L16 using L3
.catch org/json/JSONException from L17 to L18 using L2
.catch all from L17 to L18 using L3
.catch all from L19 to L20 using L3
getstatic com/nd/rj/common/R$string/nd_oap_login_error I
istore 9
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 10
L0:
aload 10
ldc "password"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "account"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
lload 4
lconst_0
lcmp
ifle L5
L4:
aload 10
ldc "unitid"
lload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 10
ldc "uid"
lload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L5:
iload 1
ifle L7
L6:
aload 10
ldc "appid"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L7:
aload 10
ldc "rsa"
ldc "1"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "platform"
ldc "30"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
invokevirtual com/nd/rj/common/login/communication/OapCom/getBaseUrl()Ljava/lang/String;
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/login"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 2
aload 10
aload 8
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 1
L8:
iload 1
sipush 200
if_icmpeq L21
L9:
ldc "LOGIN"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "statusCode:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L10:
iload 1
tableswitch 400
L13
L11
L11
L15
L17
default : L22
L11:
aload 0
aload 8
invokespecial com/nd/rj/common/login/communication/OapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L12:
goto L23
L13:
aload 8
iconst_0
aload 8
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_limit I
istore 1
L14:
goto L23
L15:
aload 8
iconst_0
aload 8
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_psw_error I
istore 1
L16:
goto L23
L17:
aload 8
iconst_0
aload 8
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_account_not_exists I
istore 1
L18:
goto L23
L21:
iconst_0
istore 1
goto L23
L2:
astore 2
L19:
getstatic com/nd/rj/common/R$string/nd_json_error I
istore 1
L20:
iload 1
ireturn
L3:
astore 2
aload 2
athrow
L22:
goto L11
L23:
iload 1
ireturn
.limit locals 11
.limit stack 4
.end method

.method public userLoginCookie(Ljava/lang/String;Ljava/lang/String;JJILcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch org/json/JSONException from L5 to L6 using L2
.catch all from L5 to L6 using L3
.catch org/json/JSONException from L7 to L8 using L2
.catch all from L7 to L8 using L3
.catch org/json/JSONException from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch org/json/JSONException from L10 to L11 using L2
.catch all from L10 to L11 using L3
.catch org/json/JSONException from L12 to L13 using L2
.catch all from L12 to L13 using L3
.catch org/json/JSONException from L14 to L15 using L2
.catch all from L14 to L15 using L3
.catch org/json/JSONException from L16 to L17 using L2
.catch all from L16 to L17 using L3
.catch org/json/JSONException from L18 to L19 using L2
.catch all from L18 to L19 using L3
.catch all from L20 to L21 using L3
getstatic com/nd/rj/common/R$string/nd_oap_login_error I
istore 10
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 11
L0:
aload 11
ldc "cookie"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 11
ldc "appid"
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mAppid Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 11
ldc "blowfish"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
lload 3
lconst_0
lcmp
ifle L5
L4:
aload 11
ldc "unitid"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 11
ldc "uid"
lload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L5:
aload 11
ldc "isedu"
iload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L6:
aload 8
ifnull L8
L7:
aload 11
ldc "clientinfo"
aload 8
invokevirtual com/nd/rj/common/login/entity/ClientInfo/toJsonObject()Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L8:
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/cookielogin"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 1
aload 11
aload 9
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 7
L9:
iload 7
sipush 200
if_icmpeq L22
L10:
ldc "LOGIN Cookie"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "statusCode:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L11:
iload 7
lookupswitch
403 : L16
405 : L18
430 : L14
default : L23
L12:
aload 0
aload 9
invokespecial com/nd/rj/common/login/communication/OapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L13:
goto L24
L14:
aload 9
iconst_0
aload 9
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_cookie_430 I
istore 7
L15:
goto L24
L16:
aload 9
iconst_0
aload 9
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_cookie_403 I
istore 7
L17:
goto L24
L18:
aload 9
iconst_0
aload 9
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_cookie_405_OAP I
istore 7
L19:
goto L24
L22:
iconst_0
istore 7
goto L24
L2:
astore 1
L20:
getstatic com/nd/rj/common/R$string/nd_json_error I
istore 7
L21:
iload 7
ireturn
L3:
astore 1
aload 1
athrow
L23:
goto L12
L24:
iload 7
ireturn
.limit locals 12
.limit stack 4
.end method

.method public userLoginCookie(Ljava/lang/String;Ljava/lang/String;JJLcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
aload 0
aload 1
aload 2
lload 3
lload 5
iconst_0
aload 7
aload 8
invokevirtual com/nd/rj/common/login/communication/OapCom/userLoginCookie(Ljava/lang/String;Ljava/lang/String;JJILcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 9
.limit stack 10
.end method

.method public userLoginTicket(Ljava/lang/String;Ljava/lang/String;JJLcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch org/json/JSONException from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch org/json/JSONException from L7 to L8 using L2
.catch all from L7 to L8 using L3
.catch org/json/JSONException from L9 to L10 using L2
.catch all from L9 to L10 using L3
.catch org/json/JSONException from L11 to L12 using L2
.catch all from L11 to L12 using L3
.catch org/json/JSONException from L13 to L14 using L2
.catch all from L13 to L14 using L3
.catch org/json/JSONException from L15 to L16 using L2
.catch all from L15 to L16 using L3
.catch org/json/JSONException from L17 to L18 using L2
.catch all from L17 to L18 using L3
.catch all from L19 to L20 using L3
getstatic com/nd/rj/common/R$string/nd_oap_login_error I
istore 9
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 10
L0:
aload 10
ldc "ticket"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "appid"
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mAppid Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "blowfish"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
lload 3
lconst_0
lcmp
ifle L5
L4:
aload 10
ldc "unitid"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 10
ldc "uid"
lload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L5:
aload 7
ifnull L7
L6:
aload 10
ldc "clientinfo"
aload 7
invokevirtual com/nd/rj/common/login/entity/ClientInfo/toJsonObject()Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L7:
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/loginticket"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/rj/common/login/communication/OapCom/mHttpRequest Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 1
aload 10
aload 8
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I
istore 9
L8:
iload 9
sipush 200
if_icmpeq L21
L9:
ldc "LOGIN Ticket"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "statusCode:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 9
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L10:
iload 9
lookupswitch
403 : L15
404 : L17
430 : L13
default : L22
L11:
aload 0
aload 8
invokespecial com/nd/rj/common/login/communication/OapCom/_getResponseErrMsg(Ljava/lang/StringBuilder;)V
L12:
goto L23
L13:
aload 8
iconst_0
aload 8
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_cookie_430 I
istore 9
L14:
goto L23
L15:
aload 8
iconst_0
aload 8
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_ticket_403 I
istore 9
L16:
goto L23
L17:
aload 8
iconst_0
aload 8
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
getstatic com/nd/rj/common/R$string/nd_login_ticket_404 I
istore 9
L18:
goto L23
L21:
iconst_0
istore 9
goto L23
L2:
astore 1
L19:
getstatic com/nd/rj/common/R$string/nd_json_error I
istore 9
L20:
iload 9
ireturn
L3:
astore 1
aload 1
athrow
L22:
goto L11
L23:
iload 9
ireturn
.limit locals 11
.limit stack 4
.end method
