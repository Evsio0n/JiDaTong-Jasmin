.bytecode 50.0
.class public synchronized com/nd/rj/common/login/impl/NdWorkLogin
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

.method private saveData(Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L2
.catch java/lang/Exception from L17 to L18 using L2
.catch java/lang/Exception from L19 to L20 using L2
.catch java/lang/Exception from L21 to L22 using L2
.catch java/lang/Exception from L23 to L24 using L2
.catch java/lang/Exception from L25 to L26 using L2
.catch java/lang/Exception from L27 to L28 using L2
.catch java/lang/Exception from L29 to L30 using L2
.catch java/lang/Exception from L31 to L32 using L2
.catch java/lang/Exception from L33 to L34 using L2
.catch java/lang/Exception from L35 to L36 using L2
.catch java/lang/Exception from L37 to L38 using L2
.catch java/lang/Exception from L39 to L40 using L2
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
astore 4
L4:
iload 3
istore 2
L5:
aload 1
ldc "sid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 5
L6:
iload 3
istore 2
L7:
aload 4
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/nd/rj/common/login/entity/OapUser/uapUid J
L8:
iload 3
istore 2
L9:
aload 4
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
putfield com/nd/rj/common/login/entity/OapUser/oapUid J
L10:
iload 3
istore 2
L11:
aload 4
aload 1
ldc "unitid"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/nd/rj/common/login/entity/OapUser/oapUnitId I
L12:
iload 3
istore 2
L13:
aload 0
aload 5
invokespecial com/nd/rj/common/login/impl/NdWorkLogin/userCheck(Ljava/lang/String;)Z
istore 3
L14:
iload 3
istore 2
iload 3
ifeq L41
iload 3
istore 2
L15:
aload 4
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/account Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/account Ljava/lang/String;
L16:
iload 3
istore 2
L17:
aload 4
iconst_1
putfield com/nd/rj/common/login/entity/OapUser/isCurrentUser Z
L18:
iload 3
istore 2
L19:
aload 4
iconst_1
putfield com/nd/rj/common/login/entity/OapUser/isAutoLogin Z
L20:
iload 3
istore 2
L21:
aload 4
ldc "yyyy-MM-dd kk:mm:ss"
invokestatic java/lang/System/currentTimeMillis()J
invokestatic android/text/format/DateFormat/format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
putfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
L22:
iload 3
istore 2
L23:
aload 4
ldc ""
putfield com/nd/rj/common/login/entity/OapUser/nickName Ljava/lang/String;
L24:
iload 3
istore 2
L25:
aload 4
iconst_0
putfield com/nd/rj/common/login/entity/OapUser/loginType I
L26:
iload 3
istore 2
L27:
aload 4
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
lconst_0
lcmp
ifle L42
L28:
iload 3
istore 2
L29:
aload 4
getfield com/nd/rj/common/login/entity/OapUser/oapUnitId I
ifle L42
L30:
iload 3
istore 2
L31:
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
aload 4
invokestatic com/nd/rj/common/login/util/LoginDbUtil/saveOapUser(Landroid/content/Context;Lcom/nd/rj/common/login/entity/OapUser;)Z
istore 3
L32:
iload 3
ifeq L36
iload 3
istore 2
L33:
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
aload 4
getfield com/nd/rj/common/login/entity/OapUser/uapUid J
aload 4
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
invokestatic com/nd/rj/common/login/util/LoginDbUtil/updateOapLoginStatus(Landroid/content/Context;JJ)Z
pop
L34:
iload 3
istore 2
L35:
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/pwd Ljava/lang/String;
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/setUserPwd(Landroid/content/Context;Ljava/lang/String;)V
L36:
iload 3
istore 2
iload 3
ifne L41
iload 3
istore 2
L37:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_process_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/NdWorkLogin/outPutMsg(Ljava/lang/String;)V
L38:
iload 3
ireturn
L42:
iload 3
istore 2
L39:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_org_not_found I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/NdWorkLogin/outPutMsg(Ljava/lang/String;)V
L40:
iload 3
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L41:
iload 2
ireturn
.limit locals 6
.limit stack 5
.end method

.method private userCheck(Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/Exception from L12 to L13 using L2
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 2
ldc "uap_sid"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOapNewHttpsServerUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "v2/passport/api/user/check"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
ldc ""
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 3
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
invokestatic com/common/android/utils/httpRequest/HttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 1
aload 2
aload 3
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I 3
lookupswitch
200 : L14
400 : L8
402 : L6
403 : L10
404 : L12
406 : L4
default : L15
L1:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_connect_server_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/NdWorkLogin/outPutMsg(Ljava/lang/String;)V
L3:
goto L16
L4:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_user_check_fail I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/NdWorkLogin/outPutMsg(Ljava/lang/String;)V
L5:
goto L16
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L16
L6:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_user_check_param_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/NdWorkLogin/outPutMsg(Ljava/lang/String;)V
L7:
goto L16
L8:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_limit I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/NdWorkLogin/outPutMsg(Ljava/lang/String;)V
L9:
goto L16
L10:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_psw_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/NdWorkLogin/outPutMsg(Ljava/lang/String;)V
L11:
goto L16
L12:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_account_not_exists I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/NdWorkLogin/outPutMsg(Ljava/lang/String;)V
L13:
goto L16
L15:
goto L1
L16:
iconst_0
ireturn
L14:
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public buildNomalParams()Lorg/json/JSONObject;
.catch java/lang/Exception from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 1
ldc "password"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/pwd Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\uff0c\u3002fdjf,jkgfkl"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/Md5NdDigest(Ljava/lang/String;Z)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "account"
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/account Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "encrypt"
ldc "1"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "unitcode"
ldc "nd"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "clientinfo"
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getClientInfo(Landroid/content/Context;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 1
areturn
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
400 : L2
403 : L3
404 : L4
default : L5
L5:
aload 0
aload 2
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getResponseErrMsg(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/NdWorkLogin/outPutMsg(Ljava/lang/String;)V
L6:
iconst_0
ireturn
L1:
aload 0
aload 2
invokespecial com/nd/rj/common/login/impl/NdWorkLogin/saveData(Ljava/lang/String;)Z
ireturn
L0:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_process_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/NdWorkLogin/outPutMsg(Ljava/lang/String;)V
goto L6
L2:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_limit I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/NdWorkLogin/outPutMsg(Ljava/lang/String;)V
goto L6
L3:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_psw_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/NdWorkLogin/outPutMsg(Ljava/lang/String;)V
goto L6
L4:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/NdWorkLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_account_not_exists I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/NdWorkLogin/outPutMsg(Ljava/lang/String;)V
goto L6
.limit locals 3
.limit stack 3
.end method

.method public getLastUserTicket()[Ljava/lang/String;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method
