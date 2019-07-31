.bytecode 50.0
.class public synchronized com/nd/rj/common/login/impl/JobNumbLogin
.super com/nd/rj/common/login/impl/AbstractBaseLogin

.method public <init>(Landroid/content/Context;Lcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
aload 0
aload 1
aload 2
invokespecial com/nd/rj/common/login/impl/AbstractBaseLogin/<init>(Landroid/content/Context;Lcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
return
.limit locals 3
.limit stack 3
.end method

.method private getCheckCode(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch org/apache/http/client/ClientProtocolException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch org/apache/http/client/ClientProtocolException from L1 to L5 using L3
.catch java/io/IOException from L1 to L5 using L4
.catch org/apache/http/client/ClientProtocolException from L6 to L7 using L3
.catch java/io/IOException from L6 to L7 using L4
.catch org/apache/http/client/ClientProtocolException from L8 to L9 using L3
.catch java/io/IOException from L8 to L9 using L4
.catch org/apache/http/client/ClientProtocolException from L10 to L11 using L3
.catch java/io/IOException from L10 to L11 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/checkcode/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/Math/random()D
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
L0:
new com/common/android/utils/http/HttpComExt
dup
iconst_1
invokespecial com/common/android/utils/http/HttpComExt/<init>(I)V
aload 5
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
checkcast org/apache/http/HttpResponse
astore 4
L1:
aload 4
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
sipush 200
if_icmpne L12
aload 4
ldc "Set-Cookie"
invokeinterface org/apache/http/HttpResponse/getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header; 1
astore 5
aload 5
arraylength
istore 3
L5:
iconst_0
istore 2
L13:
iload 2
iload 3
if_icmpge L10
L6:
aload 5
iload 2
aaload
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
astore 6
aload 6
ldc "PHPSESSID="
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L14
aload 6
ldc "PHPSESSID="
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
ldc "; path=/"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 6
aload 1
invokestatic com/common/android/utils/httpRequest/OapHttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/OapHttpRequest;
aload 6
invokevirtual com/common/android/utils/httpRequest/OapHttpRequest/setSid(Ljava/lang/String;)V
L7:
goto L14
L2:
astore 4
L8:
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 5
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 4
new org/apache/http/impl/client/DefaultHttpClient
dup
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>()V
new org/apache/http/client/methods/HttpGet
dup
aload 4
invokespecial org/apache/http/client/methods/HttpGet/<init>(Ljava/lang/String;)V
invokeinterface org/apache/http/client/HttpClient/execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse; 1
astore 4
L9:
goto L1
L10:
new android/graphics/drawable/BitmapDrawable
dup
aload 4
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Ljava/io/InputStream;)V
astore 1
L11:
aload 1
areturn
L3:
astore 1
aload 1
invokevirtual org/apache/http/client/ClientProtocolException/printStackTrace()V
L12:
aconst_null
areturn
L4:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L12
L14:
iload 2
iconst_1
iadd
istore 2
goto L13
.limit locals 7
.limit stack 4
.end method

.method private ifNeedCheckCode(Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
iconst_1
istore 2
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L8
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 1
ldc "needchkcode"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
iconst_1
if_icmpne L9
L1:
aload 0
aload 3
invokevirtual com/nd/rj/common/login/impl/JobNumbLogin/outPutMsg(Ljava/lang/String;)V
L3:
iload 2
ifeq L8
L4:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/context Landroid/content/Context;
invokespecial com/nd/rj/common/login/impl/JobNumbLogin/getCheckCode(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
astore 1
L5:
aload 1
ifnonnull L6
return
L6:
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/listner Lcom/nd/rj/common/login/interfaces/LoginProcessListner;
ifnull L8
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/listner Lcom/nd/rj/common/login/interfaces/LoginProcessListner;
aload 1
invokeinterface com/nd/rj/common/login/interfaces/LoginProcessListner/onCheckCode(Landroid/graphics/drawable/Drawable;)V 1
L7:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L8:
return
L9:
iconst_0
istore 2
goto L1
.limit locals 4
.limit stack 3
.end method

.method private saveUser(Ljava/lang/String;)Z
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
.catch org/json/JSONException from L27 to L28 using L2
.catch org/json/JSONException from L29 to L30 using L2
.catch org/json/JSONException from L31 to L32 using L2
.catch org/json/JSONException from L33 to L34 using L2
.catch org/json/JSONException from L35 to L36 using L2
.catch org/json/JSONException from L37 to L38 using L2
.catch org/json/JSONException from L39 to L40 using L2
.catch org/json/JSONException from L41 to L42 using L2
.catch org/json/JSONException from L43 to L44 using L2
.catch org/json/JSONException from L45 to L46 using L2
.catch org/json/JSONException from L47 to L48 using L2
iconst_0
istore 4
iconst_0
istore 3
iload 3
istore 2
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
L1:
iload 3
istore 2
L3:
new com/nd/rj/common/login/entity/OapUser
dup
invokespecial com/nd/rj/common/login/entity/OapUser/<init>()V
astore 5
L4:
iload 3
istore 2
L5:
aload 5
lconst_0
putfield com/nd/rj/common/login/entity/OapUser/uapUid J
L6:
iload 3
istore 2
L7:
aload 5
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/rj/common/login/entity/OapUser/oapUid J
L8:
iload 3
istore 2
L9:
aload 1
ldc "sid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 6
L10:
iload 3
istore 2
L11:
aload 5
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/context Landroid/content/Context;
aload 5
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
aload 6
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getUserNickName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/nickName Ljava/lang/String;
L12:
iload 3
istore 2
L13:
aload 5
aload 1
ldc "unitid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/rj/common/login/entity/OapUser/oapUnitId I
L14:
iload 3
istore 2
L15:
aload 5
aload 1
ldc "pwd_time"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/pwdTime Ljava/lang/String;
L16:
iload 3
istore 2
L17:
aload 5
aload 1
ldc "bind_uap_account"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/bindUapAccount Ljava/lang/String;
L18:
iload 3
istore 2
L19:
aload 5
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/rj/common/login/entity/OapUser/type I
L20:
iload 3
istore 2
L21:
aload 5
iconst_1
putfield com/nd/rj/common/login/entity/OapUser/isCurrentUser Z
L22:
iload 3
istore 2
L23:
aload 5
iconst_1
putfield com/nd/rj/common/login/entity/OapUser/isAutoLogin Z
L24:
iload 3
istore 2
L25:
aload 5
ldc "yyyy-MM-dd kk:mm:ss"
invokestatic java/lang/System/currentTimeMillis()J
invokestatic android/text/format/DateFormat/format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
putfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
L26:
iload 3
istore 2
L27:
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/isTicket Z
ifeq L30
L28:
iload 3
istore 2
L29:
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/context Landroid/content/Context;
aload 5
getfield com/nd/rj/common/login/entity/OapUser/nickName Ljava/lang/String;
aload 5
getfield com/nd/rj/common/login/entity/OapUser/uapUid J
aload 5
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
invokestatic com/nd/rj/common/login/util/LoginDbUtil/updateOapNickName(Landroid/content/Context;Ljava/lang/String;JJ)Z
ireturn
L30:
iload 3
istore 2
L31:
aload 5
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/account Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/account Ljava/lang/String;
L32:
iload 3
istore 2
L33:
aload 5
aload 1
ldc "ticket"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/ticket Ljava/lang/String;
L34:
iload 3
istore 2
L35:
aload 5
aload 0
iconst_0
invokevirtual com/nd/rj/common/login/impl/JobNumbLogin/getBlowFish(Z)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/blowFish Ljava/lang/String;
L36:
iload 3
istore 2
L37:
aload 5
iconst_1
putfield com/nd/rj/common/login/entity/OapUser/loginType I
L38:
iload 3
istore 2
L39:
aload 5
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
lconst_0
lcmp
ifle L49
L40:
iload 3
istore 2
L41:
aload 5
getfield com/nd/rj/common/login/entity/OapUser/oapUnitId I
ifle L49
L42:
iload 3
istore 2
L43:
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/context Landroid/content/Context;
aload 5
invokestatic com/nd/rj/common/login/util/LoginDbUtil/saveOapUser(Landroid/content/Context;Lcom/nd/rj/common/login/entity/OapUser;)Z
istore 3
L44:
iload 3
istore 2
iload 3
ifeq L50
iload 3
istore 2
L45:
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/context Landroid/content/Context;
aload 5
getfield com/nd/rj/common/login/entity/OapUser/uapUid J
aload 5
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
invokestatic com/nd/rj/common/login/util/LoginDbUtil/updateOapLoginStatus(Landroid/content/Context;JJ)Z
pop
L46:
iload 3
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iload 2
ireturn
L49:
iload 3
istore 2
L47:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_org_not_found I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/JobNumbLogin/outPutMsg(Ljava/lang/String;)V
L48:
iload 4
istore 2
L50:
iload 2
ireturn
.limit locals 7
.limit stack 6
.end method

.method public buildNomalParams()Lorg/json/JSONObject;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 1
ldc "appid"
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/appId Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "blowfish"
aload 0
iconst_1
invokevirtual com/nd/rj/common/login/impl/JobNumbLogin/getBlowFish(Z)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "account"
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/account Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/encryptType I
iconst_1
if_icmpne L6
aload 1
ldc "password"
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/pwd Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/sha1(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 1
ldc "encrypt"
iconst_1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
ldc "flag"
iconst_1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/account Ljava/lang/String;
ldc "@"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L3
aload 1
ldc "unitid"
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getUnitId()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L3:
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/captcha Ljava/lang/String;
ifnull L4
aload 1
ldc "imgcode"
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/captcha Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
aload 1
ldc "clientinfo"
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/context Landroid/content/Context;
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getClientInfo(Landroid/content/Context;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L5:
aload 1
areturn
L6:
aload 1
ldc "password"
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/pwd Ljava/lang/String;
ldc "GB2312"
invokestatic com/nd/rj/common/util/EncryptTool/getMD5str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L7:
goto L1
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method public dealResult(ILjava/lang/String;)Z
iload 1
lookupswitch
-1 : L0
200 : L1
403 : L2
404 : L3
405 : L4
410 : L5
423 : L6
default : L7
L7:
aload 0
aload 2
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getResponseErrMsg(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/JobNumbLogin/outPutMsg(Ljava/lang/String;)V
L6:
aload 0
aload 2
invokespecial com/nd/rj/common/login/impl/JobNumbLogin/ifNeedCheckCode(Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 0
aload 2
invokespecial com/nd/rj/common/login/impl/JobNumbLogin/saveUser(Ljava/lang/String;)Z
ireturn
L0:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_process_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/JobNumbLogin/outPutMsg(Ljava/lang/String;)V
goto L6
L2:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_psw_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/JobNumbLogin/outPutMsg(Ljava/lang/String;)V
goto L6
L3:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_account_not_exists I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/JobNumbLogin/outPutMsg(Ljava/lang/String;)V
goto L6
L4:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_user_check_param_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/JobNumbLogin/outPutMsg(Ljava/lang/String;)V
goto L6
L5:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_process_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/JobNumbLogin/outPutMsg(Ljava/lang/String;)V
goto L6
.limit locals 3
.limit stack 3
.end method

.method public getLastUserTicket()[Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/JobNumbLogin/context Landroid/content/Context;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getOapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/OapUser;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 1
getfield com/nd/rj/common/login/entity/OapUser/ticket Ljava/lang/String;
aastore
dup
iconst_1
aload 1
getfield com/nd/rj/common/login/entity/OapUser/blowFish Ljava/lang/String;
aastore
areturn
.limit locals 2
.limit stack 4
.end method
