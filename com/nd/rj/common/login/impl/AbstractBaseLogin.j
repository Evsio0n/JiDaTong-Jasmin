.bytecode 50.0
.class public synchronized abstract com/nd/rj/common/login/impl/AbstractBaseLogin
.super java/lang/Object
.implements com/nd/rj/common/login/interfaces/BaseLoginInterface

.field protected 'appId' Ljava/lang/String;

.field private 'blowFish' Ljava/lang/String;

.field private 'code' I

.field protected 'context' Landroid/content/Context;

.field protected 'cookie' Ljava/lang/String;

.field protected 'isTicket' Z

.field protected 'listner' Lcom/nd/rj/common/login/interfaces/LoginProcessListner;

.field protected 'loginParams' Lcom/nd/rj/common/login/entity/LoginParam;

.field private 'mIsNeed99Assistant' Z

.field private 'msg' Ljava/lang/String;

.method public <init>(Landroid/content/Context;Lcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
aload 0
aload 1
iconst_0
iconst_0
aload 2
invokespecial com/nd/rj/common/login/impl/AbstractBaseLogin/<init>(Landroid/content/Context;ZZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
return
.limit locals 3
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;ZZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/nd/rj/common/login/impl/AbstractBaseLogin/code I
aload 0
aload 1
iload 2
iload 3
aload 4
invokespecial com/nd/rj/common/login/impl/AbstractBaseLogin/init(Landroid/content/Context;ZZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
return
.limit locals 5
.limit stack 5
.end method

.method private doAfterLogin(Ljava/lang/String;)Z
aconst_null
astore 4
aload 0
aload 1
invokevirtual com/nd/rj/common/login/impl/AbstractBaseLogin/getOapUidSid(Ljava/lang/String;)[Ljava/lang/String;
astore 6
getstatic com/product/android/business/config/Configuration/LOGIN_TYPE I
ifeq L0
aload 0
aload 1
invokespecial com/nd/rj/common/login/impl/AbstractBaseLogin/hasUnit(Ljava/lang/String;)Z
ifne L1
iconst_0
ireturn
L1:
aload 0
aload 6
invokespecial com/nd/rj/common/login/impl/AbstractBaseLogin/getBindUser([Ljava/lang/String;)Lcom/product/android/business/login/BindUser;
astore 5
aload 5
astore 4
aload 5
ifnonnull L0
aload 0
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_bind_user_err I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/AbstractBaseLogin/outPutMsg(Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/code I
aload 1
invokevirtual com/nd/rj/common/login/impl/AbstractBaseLogin/dealResult(ILjava/lang/String;)Z
istore 2
iload 2
istore 3
iload 2
ifeq L2
aload 4
ifnull L3
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
aload 4
invokestatic com/nd/rj/common/login/util/LoginDbUtil/saveBindUser(Landroid/content/Context;Lcom/product/android/business/login/BindUser;)Z
istore 2
L3:
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
aload 6
iconst_1
aaload
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/setUserSid(Landroid/content/Context;Ljava/lang/String;)V
iload 2
istore 3
L2:
iload 3
ireturn
.limit locals 7
.limit stack 3
.end method

.method private getBindUser([Ljava/lang/String;)Lcom/product/android/business/login/BindUser;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
aload 1
ifnull L5
aload 1
arraylength
iconst_2
if_icmpeq L6
L5:
aconst_null
areturn
L6:
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 2
aload 2
aload 1
iconst_1
aaload
invokevirtual com/common/android/utils/http/HttpComExt/setSid(Ljava/lang/String;)V
aload 2
iconst_0
invokevirtual com/common/android/utils/http/HttpComExt/setIsNeedRelogin(Z)V
L0:
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user/info?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
iconst_0
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
ldc "test"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "bindUser:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 1
ifnull L7
L3:
aload 1
ldc "type"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L7
new com/product/android/business/login/BindUser
dup
aload 1
invokespecial com/product/android/business/login/BindUser/<init>(Lorg/json/JSONObject;)V
astore 1
L4:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L7:
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/toSendNotifyIdentityExpired()V
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method private hasUnit(Ljava/lang/String;)Z
.catch org/json/JSONException from L0 to L1 using L2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_0
ireturn
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
ifeq L3
aload 1
ldc "unitid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 2
L1:
iload 2
ifeq L3
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L3:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_bind_user_unit_err I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/AbstractBaseLogin/outPutMsg(Ljava/lang/String;)V
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method private init(Landroid/content/Context;ZZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
aload 0
aload 1
putfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
aload 0
aload 4
putfield com/nd/rj/common/login/impl/AbstractBaseLogin/listner Lcom/nd/rj/common/login/interfaces/LoginProcessListner;
aload 0
iload 2
putfield com/nd/rj/common/login/impl/AbstractBaseLogin/mIsNeed99Assistant Z
aload 0
aload 1
invokestatic com/nd/rj/common/login/GlobalSetting/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/GlobalSetting;
invokevirtual com/nd/rj/common/login/GlobalSetting/getAppid()Ljava/lang/String;
putfield com/nd/rj/common/login/impl/AbstractBaseLogin/appId Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/mIsNeed99Assistant Z
ifeq L0
iload 3
ifne L1
aload 1
invokestatic com/nd/rj/common/login/NdLogin91Assistant/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isInitSuccessful()Z
ifne L0
aload 1
invokestatic com/nd/rj/common/login/NdLogin91Assistant/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isInitializing()Z
ifne L0
L1:
aload 1
invokestatic com/nd/rj/common/login/NdLogin91Assistant/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/doInit()I
pop
L0:
return
.limit locals 5
.limit stack 2
.end method

.method private preDoLogin()Z
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/mIsNeed99Assistant Z
ifne L0
L1:
iconst_1
ireturn
L0:
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/isTicket Z
ifne L1
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
invokestatic com/nd/rj/common/login/NdLogin91Assistant/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/NdLogin91Assistant;
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/requestCookie(Lcom/nd/rj/common/login/entity/LoginParam;)Z
ifeq L2
aload 0
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
invokestatic com/nd/rj/common/login/NdLogin91Assistant/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/getCookie()Ljava/lang/String;
putfield com/nd/rj/common/login/impl/AbstractBaseLogin/cookie Ljava/lang/String;
iconst_1
ireturn
L2:
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
invokestatic com/nd/rj/common/login/NdLogin91Assistant/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/getErrmsg()Ljava/lang/String;
astore 2
aload 2
astore 1
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_process_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 1
L3:
aload 0
aload 1
invokevirtual com/nd/rj/common/login/impl/AbstractBaseLogin/outPutMsg(Ljava/lang/String;)V
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method private requestLogin(Ljava/lang/String;Ljava/lang/StringBuilder;)I
iconst_0
istore 3
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/isTicket Z
ifeq L0
aload 0
invokevirtual com/nd/rj/common/login/impl/AbstractBaseLogin/getLastUserTicket()[Ljava/lang/String;
astore 4
aload 4
ifnull L1
aload 4
arraylength
iconst_2
if_icmpeq L2
L1:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_get_user_info_err I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/AbstractBaseLogin/outPutMsg(Ljava/lang/String;)V
iconst_m1
istore 3
L3:
iload 3
ireturn
L2:
aload 0
aload 4
iconst_0
aaload
aload 4
iconst_1
aaload
invokevirtual com/nd/rj/common/login/impl/AbstractBaseLogin/buildTicketParams(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
astore 4
L4:
aload 4
astore 5
aload 4
ifnonnull L5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
L5:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
invokestatic com/common/android/utils/httpRequest/HttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 1
aload 5
aload 2
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I 3
putfield com/nd/rj/common/login/impl/AbstractBaseLogin/code I
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
ldc "test"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "userInfo:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
aload 0
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_connect_err I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/AbstractBaseLogin/outPutMsg(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/code I
ireturn
L0:
aload 0
invokevirtual com/nd/rj/common/login/impl/AbstractBaseLogin/buildNomalParams()Lorg/json/JSONObject;
astore 4
goto L4
L6:
aload 1
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getResponseErrMsg(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/code I
sipush 200
if_icmpeq L3
L7:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L8
aload 0
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_process_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/AbstractBaseLogin/outPutMsg(Ljava/lang/String;)V
L9:
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/code I
ireturn
L8:
aload 0
aload 1
invokevirtual com/nd/rj/common/login/impl/AbstractBaseLogin/outPutMsg(Ljava/lang/String;)V
goto L9
.limit locals 6
.limit stack 5
.end method

.method public abstract buildNomalParams()Lorg/json/JSONObject;
.end method

.method public buildTicketParams(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.catch java/lang/Exception from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
L0:
aload 3
ldc "appid"
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/appId Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "blowfish"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "ticket"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "clientinfo"
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/context Landroid/content/Context;
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getClientInfo(Landroid/content/Context;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 3
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public abstract dealResult(ILjava/lang/String;)Z
.end method

.method public doLogin(Lcom/nd/rj/common/login/entity/LoginParam;Ljava/lang/String;)I
iconst_0
istore 3
aload 1
ifnonnull L0
iconst_1
istore 5
L1:
aload 0
iload 5
putfield com/nd/rj/common/login/impl/AbstractBaseLogin/isTicket Z
aload 0
aload 1
putfield com/nd/rj/common/login/impl/AbstractBaseLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
aload 0
invokespecial com/nd/rj/common/login/impl/AbstractBaseLogin/preDoLogin()Z
ifne L2
iconst_m1
ireturn
L0:
iconst_0
istore 5
goto L1
L2:
new java/lang/StringBuilder
dup
ldc ""
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 2
aload 1
invokespecial com/nd/rj/common/login/impl/AbstractBaseLogin/requestLogin(Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 4
iload 4
ifeq L3
iload 4
ireturn
L3:
aload 0
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/nd/rj/common/login/impl/AbstractBaseLogin/doAfterLogin(Ljava/lang/String;)Z
ifeq L4
L5:
iload 3
ireturn
L4:
iconst_m1
istore 3
goto L5
.limit locals 6
.limit stack 3
.end method

.method protected getBlowFish(Z)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/blowFish Ljava/lang/String;
ifnull L0
iload 1
ifeq L1
L0:
aload 0
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
putfield com/nd/rj/common/login/impl/AbstractBaseLogin/blowFish Ljava/lang/String;
L1:
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/blowFish Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public abstract getLastUserTicket()[Ljava/lang/String;
.end method

.method public getOapUidSid(Ljava/lang/String;)[Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
ldc ""
astore 3
ldc ""
astore 5
aload 3
astore 2
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 6
L1:
aload 3
astore 1
aload 3
astore 2
L3:
aload 6
ldc "uid"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L6
L4:
aload 3
astore 2
L5:
aload 6
ldc "uid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
L6:
aload 1
astore 2
L7:
aload 6
ldc "sid"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L15
L8:
aload 1
astore 2
L9:
aload 6
ldc "sid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
L10:
aload 1
astore 4
L16:
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 4
aastore
dup
iconst_1
aload 3
aastore
areturn
L15:
aload 5
astore 3
aload 1
astore 4
aload 1
astore 2
L11:
aload 6
ldc "uap_sid"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L16
L12:
aload 1
astore 2
L13:
aload 6
ldc "uap_sid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
L14:
aload 1
astore 4
goto L16
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 5
astore 3
aload 2
astore 4
goto L16
.limit locals 7
.limit stack 4
.end method

.method public getOutPutMsg()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/AbstractBaseLogin/msg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected outPutMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/login/impl/AbstractBaseLogin/msg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
