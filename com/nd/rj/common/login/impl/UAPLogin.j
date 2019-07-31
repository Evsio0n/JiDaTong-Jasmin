.bytecode 50.0
.class public synchronized com/nd/rj/common/login/impl/UAPLogin
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
new com/nd/rj/common/login/entity/UapUser
dup
invokespecial com/nd/rj/common/login/entity/UapUser/<init>()V
astore 4
L4:
iload 3
istore 2
L5:
aload 4
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/rj/common/login/entity/UapUser/uid J
L6:
iload 3
istore 2
L7:
aload 1
ldc "sid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 5
L8:
iload 3
istore 2
L9:
aload 4
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/context Landroid/content/Context;
aload 4
getfield com/nd/rj/common/login/entity/UapUser/uid J
aload 5
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getUserNickName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/UapUser/nickName Ljava/lang/String;
L10:
iload 3
istore 2
L11:
aload 4
iconst_1
putfield com/nd/rj/common/login/entity/UapUser/isCurrentUser Z
L12:
iload 3
istore 2
L13:
aload 4
iconst_1
putfield com/nd/rj/common/login/entity/UapUser/isAutoLogin Z
L14:
iload 3
istore 2
L15:
aload 4
ldc "yyyy-MM-dd kk:mm:ss"
invokestatic java/lang/System/currentTimeMillis()J
invokestatic android/text/format/DateFormat/format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
putfield com/nd/rj/common/login/entity/UapUser/lastLoginTime Ljava/lang/String;
L16:
iload 3
istore 2
L17:
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/isTicket Z
ifeq L20
L18:
iload 3
istore 2
L19:
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/context Landroid/content/Context;
aload 4
getfield com/nd/rj/common/login/entity/UapUser/nickName Ljava/lang/String;
aload 4
getfield com/nd/rj/common/login/entity/UapUser/uid J
invokestatic com/nd/rj/common/login/util/LoginDbUtil/updateUapNickName(Landroid/content/Context;Ljava/lang/String;J)Z
ireturn
L20:
iload 3
istore 2
L21:
aload 4
aload 0
iconst_0
invokevirtual com/nd/rj/common/login/impl/UAPLogin/getBlowFish(Z)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/UapUser/blowFish Ljava/lang/String;
L22:
iload 3
istore 2
L23:
aload 4
aload 1
ldc "ticket"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/UapUser/ticket Ljava/lang/String;
L24:
iload 3
istore 2
L25:
aload 4
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/loginParams Lcom/nd/rj/common/login/entity/LoginParam;
getfield com/nd/rj/common/login/entity/LoginParam/account Ljava/lang/String;
putfield com/nd/rj/common/login/entity/UapUser/account Ljava/lang/String;
L26:
iload 3
istore 2
L27:
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/context Landroid/content/Context;
aload 4
invokestatic com/nd/rj/common/login/util/LoginDbUtil/saveUapUser(Landroid/content/Context;Lcom/nd/rj/common/login/entity/UapUser;)Z
istore 3
L28:
iload 3
istore 2
iload 3
ifeq L31
iload 3
istore 2
L29:
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/context Landroid/content/Context;
aload 4
getfield com/nd/rj/common/login/entity/UapUser/uid J
invokestatic com/nd/rj/common/login/util/LoginDbUtil/updateUapLoginStatus(Landroid/content/Context;J)Z
pop
L30:
iload 3
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L31:
iload 2
ireturn
.limit locals 6
.limit stack 5
.end method

.method public buildNomalParams()Lorg/json/JSONObject;
.catch java/lang/Exception from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 1
ldc "appid"
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/appId Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "blowfish"
aload 0
iconst_1
invokevirtual com/nd/rj/common/login/impl/UAPLogin/getBlowFish(Z)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "cookie"
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/cookie Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "clientinfo"
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/context Landroid/content/Context;
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
405 : L5
430 : L6
503 : L7
default : L8
L8:
aload 0
aload 2
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getResponseErrMsg(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/UAPLogin/outPutMsg(Ljava/lang/String;)V
L9:
iconst_0
ireturn
L1:
aload 0
aload 2
invokespecial com/nd/rj/common/login/impl/UAPLogin/saveUser(Ljava/lang/String;)Z
ireturn
L0:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_process_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/UAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
L2:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_cookie_400 I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/UAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
L3:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_cookie_403 I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/UAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
L4:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_cookie_404 I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/UAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
L7:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_cookie_503 I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/UAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
L6:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_cookie_430 I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/UAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
L5:
aload 0
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/context Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_login_cookie_405_OAP I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/impl/UAPLogin/outPutMsg(Ljava/lang/String;)V
goto L9
.limit locals 3
.limit stack 3
.end method

.method public getLastUserTicket()[Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/UAPLogin/context Landroid/content/Context;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getUapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/UapUser;
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
getfield com/nd/rj/common/login/entity/UapUser/ticket Ljava/lang/String;
aastore
dup
iconst_1
aload 1
getfield com/nd/rj/common/login/entity/UapUser/blowFish Ljava/lang/String;
aastore
areturn
.limit locals 2
.limit stack 4
.end method
