.bytecode 50.0
.class public synchronized com/nd/rj/common/login/LoginInterfaceManager
.super java/lang/Object
.inner class static final inner com/nd/rj/common/login/LoginInterfaceManager$1
.inner class static final inner com/nd/rj/common/login/LoginInterfaceManager$2

.field private static final 'SUCCESS' Ljava/lang/String; = "LOGIN_SUCCESS"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static accountAndJobLogin(Landroid/content/Context;Lcom/nd/rj/common/login/entity/LoginParam;ZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)Ljava/lang/String;
new com/nd/rj/common/login/LoginInterfaceManager$1
dup
aload 3
invokespecial com/nd/rj/common/login/LoginInterfaceManager$1/<init>(Lcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
invokestatic com/nd/rj/common/login/NdMiscCallbackListener/setOnGetCheckcodeListener(Lcom/nd/rj/common/login/NdMiscCallbackListener$IGetCheckcodeListener;)V
aload 1
ifnonnull L0
iconst_1
istore 6
L1:
aload 0
iload 2
aload 3
invokestatic com/nd/rj/common/login/LoginInterfaceManager/createNomalLogin(Landroid/content/Context;ZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)Lcom/nd/rj/common/login/interfaces/BaseLoginInterface;
astore 7
aload 7
aload 1
iload 6
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getNomalUrl(Z)Ljava/lang/String;
invokeinterface com/nd/rj/common/login/interfaces/BaseLoginInterface/doLogin(Lcom/nd/rj/common/login/entity/LoginParam;Ljava/lang/String;)I 2
ifne L2
iconst_1
istore 4
L3:
iload 4
istore 5
iload 4
ifne L4
aload 0
aload 3
invokestatic com/nd/rj/common/login/LoginInterfaceManager/createJobLogin(Landroid/content/Context;Lcom/nd/rj/common/login/interfaces/LoginProcessListner;)Lcom/nd/rj/common/login/interfaces/BaseLoginInterface;
astore 7
aload 7
aload 1
iload 6
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getJobUrl(Z)Ljava/lang/String;
invokeinterface com/nd/rj/common/login/interfaces/BaseLoginInterface/doLogin(Lcom/nd/rj/common/login/entity/LoginParam;Ljava/lang/String;)I 2
ifne L5
iconst_1
istore 5
L4:
iload 5
ifeq L6
ldc "LOGIN_SUCCESS"
areturn
L0:
iconst_0
istore 6
goto L1
L2:
iconst_0
istore 4
goto L3
L5:
iconst_0
istore 5
goto L4
L6:
aload 7
invokeinterface com/nd/rj/common/login/interfaces/BaseLoginInterface/getOutPutMsg()Ljava/lang/String; 0
areturn
.limit locals 8
.limit stack 3
.end method

.method private static createJobLogin(Landroid/content/Context;Lcom/nd/rj/common/login/interfaces/LoginProcessListner;)Lcom/nd/rj/common/login/interfaces/BaseLoginInterface;
new com/nd/rj/common/login/impl/JobNumbLogin
dup
aload 0
aload 1
invokespecial com/nd/rj/common/login/impl/JobNumbLogin/<init>(Landroid/content/Context;Lcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method private static createNomalLogin(Landroid/content/Context;ZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)Lcom/nd/rj/common/login/interfaces/BaseLoginInterface;
getstatic com/product/android/business/config/Configuration/LOGIN_TYPE I
tableswitch 0
L0
L1
default : L2
L2:
aconst_null
areturn
L0:
new com/nd/rj/common/login/impl/UAPLogin
dup
aload 0
iload 1
aload 2
invokespecial com/nd/rj/common/login/impl/UAPLogin/<init>(Landroid/content/Context;ZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
areturn
L1:
new com/nd/rj/common/login/impl/OAPLogin
dup
aload 0
iload 1
aload 2
invokespecial com/nd/rj/common/login/impl/OAPLogin/<init>(Landroid/content/Context;ZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
areturn
.limit locals 3
.limit stack 5
.end method

.method public static delByAccount(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/delByAccount(Landroid/content/Context;Ljava/lang/String;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public static delOapUserByOapUid(Landroid/content/Context;J)Z
aload 0
lload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/delOapUserByOapUid(Landroid/content/Context;J)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static delOapUserByUapUid(Landroid/content/Context;J)Z
aload 0
lload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/delOapUserByUapUid(Landroid/content/Context;J)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static getAllLoginUserName(Landroid/content/Context;)Ljava/util/List;
.signature "(Landroid/content/Context;)Ljava/util/List<Ljava/lang/String;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/qryAllOapUser(Landroid/content/Context;)Ljava/util/List;
astore 0
aload 0
new com/nd/rj/common/login/LoginInterfaceManager$2
dup
invokespecial com/nd/rj/common/login/LoginInterfaceManager$2/<init>()V
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L0:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/rj/common/login/entity/OapUser
getfield com/nd/rj/common/login/entity/OapUser/account Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getIUser(Landroid/content/Context;)Lcom/product/android/business/login/IGetUserInfo;
new com/nd/rj/common/login/impl/GetUserInfo
dup
aload 0
invokespecial com/nd/rj/common/login/impl/GetUserInfo/<init>(Landroid/content/Context;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method private static getJobUrl(Z)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getLoginApiServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user/login1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
iload 0
ifeq L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getLoginApiServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "user/loginticket1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getLastUserAccount(Landroid/content/Context;)Ljava/lang/String;
ldc ""
astore 1
aload 0
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getAllLoginUserName(Landroid/content/Context;)Ljava/util/List;
astore 2
aload 1
astore 0
aload 2
ifnull L0
aload 1
astore 0
aload 2
invokeinterface java/util/List/size()I 0
ifle L0
aload 2
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/String
astore 0
L0:
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method private static getNomalUrl(Z)Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/LOGIN_TYPE I
tableswitch 0
L0
L1
L2
default : L3
L3:
ldc ""
areturn
L0:
iload 0
ifeq L4
ldc "https://uap.99.com/login/ticket"
areturn
L4:
ldc "https://uap.99.com/login/cookie"
areturn
L1:
iload 0
ifeq L5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/loginticket"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L5:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/cookielogin"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L2:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getHttpsOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "passport/login1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getOapLastLoginUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/OapUser;
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getOapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/OapUser;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static login(Landroid/content/Context;Lcom/nd/rj/common/login/entity/LoginParam;ZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
aload 3
ifnull L0
aload 3
invokeinterface com/nd/rj/common/login/interfaces/LoginProcessListner/onStart()V 0
L0:
iconst_0
istore 5
getstatic com/product/android/business/config/Configuration/LOGIN_TYPE I
iconst_2
if_icmpne L1
aload 0
aload 1
aload 3
invokestatic com/nd/rj/common/login/LoginInterfaceManager/nduLogin(Landroid/content/Context;Lcom/nd/rj/common/login/entity/LoginParam;Lcom/nd/rj/common/login/interfaces/LoginProcessListner;)Ljava/lang/String;
astore 0
L2:
iload 5
istore 4
aload 0
ifnull L3
iload 5
istore 4
aload 0
ldc "LOGIN_SUCCESS"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
iconst_1
istore 4
L3:
aload 3
ifnull L4
iload 4
ifeq L5
aload 3
invokeinterface com/nd/rj/common/login/interfaces/LoginProcessListner/onSuccess()V 0
L6:
aload 3
invokeinterface com/nd/rj/common/login/interfaces/LoginProcessListner/onFinish()V 0
L4:
return
L1:
aload 0
aload 1
iload 2
aload 3
invokestatic com/nd/rj/common/login/LoginInterfaceManager/accountAndJobLogin(Landroid/content/Context;Lcom/nd/rj/common/login/entity/LoginParam;ZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)Ljava/lang/String;
astore 0
goto L2
L5:
aload 0
astore 1
aload 0
ifnonnull L7
ldc ""
astore 1
L7:
aload 3
aload 1
invokeinterface com/nd/rj/common/login/interfaces/LoginProcessListner/onErr(Ljava/lang/String;)V 1
goto L6
.limit locals 6
.limit stack 4
.end method

.method private static nduLogin(Landroid/content/Context;Lcom/nd/rj/common/login/entity/LoginParam;Lcom/nd/rj/common/login/interfaces/LoginProcessListner;)Ljava/lang/String;
iconst_0
istore 3
new com/nd/rj/common/login/impl/NdWorkLogin
dup
aload 0
aload 2
invokespecial com/nd/rj/common/login/impl/NdWorkLogin/<init>(Landroid/content/Context;Lcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
astore 0
aload 0
aload 1
iconst_0
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getNomalUrl(Z)Ljava/lang/String;
invokeinterface com/nd/rj/common/login/interfaces/BaseLoginInterface/doLogin(Lcom/nd/rj/common/login/entity/LoginParam;Ljava/lang/String;)I 2
ifne L0
iconst_1
istore 3
L0:
iload 3
ifeq L1
ldc "LOGIN_SUCCESS"
areturn
L1:
aload 0
invokeinterface com/nd/rj/common/login/interfaces/BaseLoginInterface/getOutPutMsg()Ljava/lang/String; 0
areturn
.limit locals 4
.limit stack 4
.end method

.method public static normalLogin(Landroid/content/Context;ZLcom/nd/rj/common/login/entity/LoginParam;Ljava/lang/StringBuffer;)Z
aload 0
iload 1
aconst_null
invokestatic com/nd/rj/common/login/LoginInterfaceManager/createNomalLogin(Landroid/content/Context;ZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)Lcom/nd/rj/common/login/interfaces/BaseLoginInterface;
astore 0
aload 2
ifnonnull L0
iconst_1
istore 1
L1:
aload 0
aload 2
iload 1
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getNomalUrl(Z)Ljava/lang/String;
invokeinterface com/nd/rj/common/login/interfaces/BaseLoginInterface/doLogin(Lcom/nd/rj/common/login/entity/LoginParam;Ljava/lang/String;)I 2
ifne L2
iconst_1
istore 1
L3:
iload 1
ifeq L4
iload 1
ireturn
L0:
iconst_0
istore 1
goto L1
L2:
iconst_0
istore 1
goto L3
L4:
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuffer/length()I
invokevirtual java/lang/StringBuffer/delete(II)Ljava/lang/StringBuffer;
pop
aload 3
aload 0
invokeinterface com/nd/rj/common/login/interfaces/BaseLoginInterface/getOutPutMsg()Ljava/lang/String; 0
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 1
ireturn
.limit locals 4
.limit stack 3
.end method

.method public static reSetSid(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/setUserSid(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static saveOapUser(Landroid/content/Context;Lcom/nd/rj/common/login/entity/OapUser;)Z
aload 0
aload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/saveOapUser(Landroid/content/Context;Lcom/nd/rj/common/login/entity/OapUser;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static ticketLogin(Landroid/content/Context;)I
ldc ""
astore 5
aconst_null
astore 6
aconst_null
astore 4
getstatic com/product/android/business/config/Configuration/LOGIN_TYPE I
tableswitch 0
L0
L1
L2
default : L3
L3:
aload 5
astore 2
aload 4
astore 3
aload 6
astore 1
L4:
aload 1
ifnull L5
aload 1
aload 3
aload 2
invokeinterface com/nd/rj/common/login/interfaces/BaseLoginInterface/doLogin(Lcom/nd/rj/common/login/entity/LoginParam;Ljava/lang/String;)I 2
ireturn
L0:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getUapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/UapUser;
astore 7
aload 6
astore 1
aload 4
astore 3
aload 5
astore 2
aload 7
ifnull L4
aload 6
astore 1
aload 4
astore 3
aload 5
astore 2
aload 7
getfield com/nd/rj/common/login/entity/UapUser/ticket Ljava/lang/String;
ifnull L4
aload 6
astore 1
aload 4
astore 3
aload 5
astore 2
aload 7
getfield com/nd/rj/common/login/entity/UapUser/blowFish Ljava/lang/String;
ifnull L4
aload 0
iconst_1
aconst_null
invokestatic com/nd/rj/common/login/LoginInterfaceManager/createNomalLogin(Landroid/content/Context;ZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)Lcom/nd/rj/common/login/interfaces/BaseLoginInterface;
astore 1
iconst_1
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getNomalUrl(Z)Ljava/lang/String;
astore 2
aload 4
astore 3
goto L4
L1:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getOapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/OapUser;
astore 7
aload 6
astore 1
aload 4
astore 3
aload 5
astore 2
aload 7
ifnull L4
aload 6
astore 1
aload 4
astore 3
aload 5
astore 2
aload 7
getfield com/nd/rj/common/login/entity/OapUser/ticket Ljava/lang/String;
ifnull L4
aload 6
astore 1
aload 4
astore 3
aload 5
astore 2
aload 7
getfield com/nd/rj/common/login/entity/OapUser/blowFish Ljava/lang/String;
ifnull L4
aload 7
getfield com/nd/rj/common/login/entity/OapUser/loginType I
iconst_1
if_icmpne L6
aload 0
aconst_null
invokestatic com/nd/rj/common/login/LoginInterfaceManager/createJobLogin(Landroid/content/Context;Lcom/nd/rj/common/login/interfaces/LoginProcessListner;)Lcom/nd/rj/common/login/interfaces/BaseLoginInterface;
astore 1
iconst_1
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getJobUrl(Z)Ljava/lang/String;
astore 2
aload 4
astore 3
goto L4
L6:
aload 0
iconst_1
aconst_null
invokestatic com/nd/rj/common/login/LoginInterfaceManager/createNomalLogin(Landroid/content/Context;ZLcom/nd/rj/common/login/interfaces/LoginProcessListner;)Lcom/nd/rj/common/login/interfaces/BaseLoginInterface;
astore 1
iconst_1
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getNomalUrl(Z)Ljava/lang/String;
astore 2
aload 4
astore 3
goto L4
L2:
aload 0
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getOapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/OapUser;
astore 7
aload 6
astore 1
aload 4
astore 3
aload 5
astore 2
aload 7
ifnull L4
new com/nd/rj/common/login/entity/LoginParam
dup
invokespecial com/nd/rj/common/login/entity/LoginParam/<init>()V
astore 3
aload 3
aload 7
getfield com/nd/rj/common/login/entity/OapUser/account Ljava/lang/String;
putfield com/nd/rj/common/login/entity/LoginParam/account Ljava/lang/String;
aload 3
aload 0
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getUserPwd(Landroid/content/Context;)Ljava/lang/String;
putfield com/nd/rj/common/login/entity/LoginParam/pwd Ljava/lang/String;
new com/nd/rj/common/login/impl/NdWorkLogin
dup
aload 0
aconst_null
invokespecial com/nd/rj/common/login/impl/NdWorkLogin/<init>(Landroid/content/Context;Lcom/nd/rj/common/login/interfaces/LoginProcessListner;)V
astore 1
iconst_1
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getNomalUrl(Z)Ljava/lang/String;
astore 2
goto L4
L5:
iconst_m1
ireturn
.limit locals 8
.limit stack 4
.end method
