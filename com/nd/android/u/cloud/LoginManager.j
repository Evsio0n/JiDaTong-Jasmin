.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/LoginManager
.super java/lang/Object
.inner class static final inner com/nd/android/u/cloud/LoginManager$1

.field public static final 'IDENTITYEXPIREDCODE' I = 402


.field private static final 'TAG' Ljava/lang/String; = "LoginManager"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static ReadTestDetailAlready(Landroid/content/Context;J)Z
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "ReadTestDetail"
invokestatic com/common/android/utils/ConfigHelper/loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static doAfterChangeIdentity(Landroid/content/Context;)V
aload 0
aconst_null
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/setOauth2AccessToken(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
return
.limit locals 1
.limit stack 2
.end method

.method public static doAfterLogout(Landroid/content/Context;)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
invokevirtual com/nd/android/u/ChatEntry/logoutIMS()V
invokestatic com/nd/android/u/cloud/LoginManager/doLoginOut()V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/clearGroupsList()V
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
ldc ""
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/setWlSid(Ljava/lang/String;)V
aload 0
aconst_null
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/setOauth2AccessToken(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
invokestatic com/nd/android/u/contact/business/alarm/BirthdayRemindAlarm/stopAlarm()V
return
.limit locals 1
.limit stack 2
.end method

.method public static doLoginOut()V
new com/nd/android/u/cloud/LoginManager$1
dup
invokespecial com/nd/android/u/cloud/LoginManager$1/<init>()V
invokevirtual com/nd/android/u/cloud/LoginManager$1/start()V
return
.limit locals 0
.limit stack 2
.end method

.method public static doSysExit()V
return
.limit locals 0
.limit stack 0
.end method

.method public static getBusinessInfo(Lcom/product/android/business/login/BindUser;)V
.catch all from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch all from L3 to L4 using L2
.catch all from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L10
.catch all from L8 to L9 using L2
.catch java/lang/Exception from L9 to L11 using L12
.catch all from L9 to L11 using L2
.catch java/lang/Exception from L13 to L14 using L12
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
ldc com/nd/android/u/cloud/LoginManager
monitorenter
L0:
aload 0
invokevirtual com/product/android/business/login/BindUser/getType()I
iconst_3
if_icmpne L8
aload 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
istore 1
L1:
iload 1
ifeq L4
L3:
aload 0
invokestatic com/nd/android/u/contact/business/ContactOapRequestProces/getInstance()Lcom/nd/android/u/contact/business/ContactOapRequestProces;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
invokevirtual com/nd/android/u/contact/business/ContactOapRequestProces/getUnitNameByBindUserList(I)Ljava/lang/String;
invokevirtual com/product/android/business/login/BindUser/setUnitname(Ljava/lang/String;)V
L4:
ldc com/nd/android/u/cloud/LoginManager
monitorexit
return
L5:
astore 2
L6:
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
ldc "LoginManager"
ldc "get unitname  fail"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
ldc2_w -1L
invokevirtual com/product/android/business/login/BindUser/setUpdatetime(J)V
L7:
goto L4
L2:
astore 0
ldc com/nd/android/u/cloud/LoginManager
monitorexit
aload 0
athrow
L8:
invokestatic com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/getInstance()Lcom/nd/android/u/cloud/oapprocess/OapRequestProcessImpl;
aload 0
invokevirtual com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/queryCurrentUserIsAdmin(Lcom/product/android/business/login/BindUser;)Lcom/product/android/business/login/BindUser;
pop
L9:
invokestatic com/nd/android/u/contact/business/ContactOapRequestProces/getInstance()Lcom/nd/android/u/contact/business/ContactOapRequestProces;
aload 0
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
invokevirtual com/nd/android/u/contact/business/ContactOapRequestProces/searchDetail(I)Ljava/util/List;
astore 2
L11:
aload 2
ifnull L4
L13:
aload 2
invokeinterface java/util/List/size()I 0
ifle L4
aload 2
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapUnit
astore 2
aload 0
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitcode()Ljava/lang/String;
invokevirtual com/product/android/business/login/BindUser/setUnitcode(Ljava/lang/String;)V
aload 0
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnittype()I
invokevirtual com/product/android/business/login/BindUser/setUnittype(I)V
L14:
goto L4
L12:
astore 2
L15:
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
ldc "LoginManager"
ldc "get unittype fail"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
ldc2_w -1L
invokevirtual com/product/android/business/login/BindUser/setUpdatetime(J)V
L16:
goto L4
L10:
astore 2
L17:
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
ldc "LoginManager"
ldc "get admin type fail"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
ldc2_w -1L
invokevirtual com/product/android/business/login/BindUser/setUpdatetime(J)V
L18:
goto L9
.limit locals 3
.limit stack 3
.end method

.method public static isBinding(Lcom/product/android/business/bean/UserInfo;)Z
aload 0
ifnull L0
aload 0
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
lconst_0
lcmp
ifeq L0
aload 0
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method

.method public static isGuideBefore(Landroid/content/Context;J)Z
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "guidebefore"
invokestatic com/common/android/utils/ConfigHelper/loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static isNotBinding(Lcom/product/android/business/bean/UserInfo;)Z
aload 0
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
lconst_0
lcmp
ifne L0
aload 0
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method

.method public static loginauthentication()I
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
iconst_0
istore 0
ldc com/nd/android/u/cloud/LoginManager
monitorenter
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
istore 3
L1:
iload 3
ifne L3
L13:
ldc com/nd/android/u/cloud/LoginManager
monitorexit
iload 0
ireturn
L3:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/isIdentityExpired Z
ifeq L14
ldc "LOGIN"
ldc "IdentityExpired"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
sipush 402
istore 0
goto L13
L14:
iconst_m1
istore 1
iload 1
istore 0
L5:
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/checkCanRelogin()Z
ifeq L13
L6:
iconst_0
istore 2
iload 1
istore 0
L15:
iload 0
istore 1
iload 2
iconst_2
if_icmpge L16
L7:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/rj/common/login/LoginInterfaceManager/ticketLogin(Landroid/content/Context;)I
istore 0
L8:
iload 0
ifne L17
L9:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getIUser(Landroid/content/Context;)Lcom/product/android/business/login/IGetUserInfo;
invokevirtual com/product/android/business/ApplicationVariable/setIUser(Lcom/product/android/business/login/IGetUserInfo;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
iconst_0
putfield com/product/android/business/ApplicationVariable/isIdentityExpired Z
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/nd/android/u/cloud/LoginManager/doAfterChangeIdentity(Landroid/content/Context;)V
L10:
iload 0
istore 1
goto L16
L11:
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/toSendNotifyIdentityExpired()V
L12:
iload 1
istore 0
goto L13
L2:
astore 4
ldc com/nd/android/u/cloud/LoginManager
monitorexit
aload 4
athrow
L17:
iload 2
iconst_1
iadd
istore 2
goto L15
L18:
sipush 402
istore 0
goto L13
L16:
iload 1
istore 0
iload 1
ifeq L13
iload 1
sipush 403
if_icmpeq L11
iload 1
sipush 404
if_icmpeq L11
iload 1
sipush 409
if_icmpne L18
goto L11
.limit locals 5
.limit stack 2
.end method

.method public static saveGuideBefore(Landroid/content/Context;JZ)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "guidebefore"
iload 3
invokestatic com/common/android/utils/ConfigHelper/saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
return
.limit locals 4
.limit stack 4
.end method

.method public static saveReadTestDetail(Landroid/content/Context;JZ)V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc "ReadTestDetail"
iload 3
invokestatic com/common/android/utils/ConfigHelper/saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
return
.limit locals 4
.limit stack 4
.end method
