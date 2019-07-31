.bytecode 50.0
.class public synchronized com/nd/rj/common/login/impl/OAPLogin
.super com/nd/rj/common/login/impl/AbstractBaseLogin

.method public <init>(Landroid/content/Context;ZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
aload 0
aload 1
iconst_1
iload 2
aload 3
invokespecial com/nd/rj/common/login/impl/AbstractBaseLogin/<init>(Landroid/content/Context;ZZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
return
.limit locals 4
.limit stack 5
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
iconst_1
istore 3
iconst_0
istore 5
iconst_0
istore 4
iload 4
istore 2
L0:
new com/nd/rj/common/login/entity/OapUser
dup
invokespecial com/nd/rj/common/login/entity/OapUser/<init>()V
astore 6
L1:
iload 4
istore 2
L3:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
L4:
iload 4
istore 2
L5:
aload 6
aload 1
ldc "uap_uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/rj/common/login/entity/OapUser/uapUid J
L6:
iload 4
istore 2
L7:
aload 1
ldc "uap_sid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 7
L8:
iload 4
istore 2
L9:
aload 6
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/rj/common/login/entity/OapUser/oapUid J
L10:
iload 4
istore 2
L11:
aload 6
aload 1
ldc "unitid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/rj/common/login/entity/OapUser/oapUnitId I
L12:
iload 4
istore 2
L13:
aload 6
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
aload 6
getfield com/nd/rj/common/login/entity/OapUser/uapUid J
aload 7
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getUserNickName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/nickName Ljava/lang/String;
L14:
iload 4
istore 2
L15:
aload 6
iconst_1
putfield com/nd/rj/common/login/entity/OapUser/isCurrentUser Z
L16:
iload 4
istore 2
L17:
aload 6
iconst_1
putfield com/nd/rj/common/login/entity/OapUser/isAutoLogin Z
L18:
iload 4
istore 2
L19:
aload 6
ldc "yyyy-MM-dd kk:mm:ss"
invokestatic java/lang/System/currentTimeMillis()J
invokestatic android/text/format/DateFormat/format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
putfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
L20:
iload 4
istore 2
L21:
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/isTicket Z
ifeq L24
L22:
iload 4
istore 2
L23:
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
aload 6
getfield com/nd/rj/common/login/entity/OapUser/nickName Ljava/lang/String;
aload 6
getfield com/nd/rj/common/login/entity/OapUser/uapUid J
aload 6
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
invokestatic com/nd/rj/common/login/util/LoginDbUtil/updateOapNickName(Landroid/content/Context;Ljava/lang/String;JJ)Z
ireturn
L24:
iload 4
istore 2
L25:
aload 6
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/account Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/account Ljava/lang/String;
L26:
iload 4
istore 2
L27:
aload 6
aload 1
ldc "ticket"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/ticket Ljava/lang/String;
L28:
iload 4
istore 2
L29:
aload 6
aload 0
iconst_0
invokevirtual com/nd/rj/common/login/impl/OAPLogin/getBlowFish(Z)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/OapUser/blowFish Ljava/lang/String;
L30:
iload 4
istore 2
L31:
aload 1
ldc "isorgadmin"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
iconst_1
if_icmpne L49
L32:
iload 4
istore 2
L33:
aload 6
iload 3
putfield com/nd/rj/common/login/entity/OapUser/isOrgAdmin Z
L34:
iload 4
istore 2
L35:
aload 6
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/rj/common/login/entity/OapUser/type I
L36:
iload 4
istore 2
L37:
aload 6
iconst_0
putfield com/nd/rj/common/login/entity/OapUser/loginType I
L38:
iload 4
istore 2
L39:
aload 6
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
lconst_0
lcmp
ifle L50
L40:
iload 4
istore 2
L41:
aload 6
getfield com/nd/rj/common/login/entity/OapUser/oapUnitId I
ifle L50
L42:
iload 4
istore 2
L43:
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
aload 6
invokestatic com/nd/rj/common/login/util/LoginDbUtil/saveOapUser(Landroid/content/Context;Lcom/nd/rj/common/login/entity/OapUser;)Z
istore 3
L44:
iload 3
istore 2
iload 3
ifeq L51
iload 3
istore 2
L45:
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
aload 6
getfield com/nd/rj/common/login/entity/OapUser/uapUid J
aload 6
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
iconst_0
istore 3
goto L32
L50:
iload 4
istore 2
L47:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_org_not_found I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/OAPLogin/outPutMsg(Ljava/lang/String;)V
L48:
iload 5
istore 2
L51:
iload 2
ireturn
.limit locals 8
.limit stack 6
.end method

.method public buildNomalParams()Lorg/json/JSONObject;
.catch java/lang/Exception from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 0
iconst_1
invokevirtual com/nd/rj/common/login/impl/OAPLogin/getBlowFish(Z)Ljava/lang/String;
astore 2
aload 1
ldc "appid"
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/appId Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "blowfish"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "cookie"
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/cookie Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "clientinfo"
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
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
.limit stack 3
.end method

.method public dealResult(ILjava/lang/String;)Z
iload 1
lookupswitch
-1 : L0
200 : L1
400 : L2
403 : L3
404 : L4
405 : L5
430 : L6
503 : L7
default : L8
L8:
aload 0
aload 2
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getResponseErrMsg(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/OAPLogin/outPutMsg(Ljava/lang/String;)V
L9:
iconst_0
ireturn
L1:
aload 0
aload 2
invokespecial com/nd/rj/common/login/impl/OAPLogin/saveUser(Ljava/lang/String;)Z
ireturn
L0:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_process_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/OAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
L2:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_cookie_400 I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/OAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
L3:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_cookie_403 I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/OAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
L4:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_cookie_404 I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/OAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
L7:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_cookie_503 I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/OAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
L6:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_cookie_430 I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/OAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
L5:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_cookie_405_OAP I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/OAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
.limit locals 3
.limit stack 3
.end method

.method public getLastUserTicket()[Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/OAPLogin/context Landroid/content/Context;
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
