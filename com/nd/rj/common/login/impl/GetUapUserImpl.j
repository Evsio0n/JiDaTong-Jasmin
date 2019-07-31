.bytecode 50.0
.class public synchronized com/nd/rj/common/login/impl/GetUapUserImpl
.super com/nd/rj/common/login/impl/AbstractGetUserInfo

.field private 'user' Lcom/nd/rj/common/login/entity/UapUser;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/rj/common/login/impl/AbstractGetUserInfo/<init>(Landroid/content/Context;)V
aload 0
aload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getUapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/UapUser;
putfield com/nd/rj/common/login/impl/GetUapUserImpl/user Lcom/nd/rj/common/login/entity/UapUser;
return
.limit locals 2
.limit stack 2
.end method

.method private getUser()Lcom/nd/rj/common/login/entity/UapUser;
aload 0
getfield com/nd/rj/common/login/impl/GetUapUserImpl/user Lcom/nd/rj/common/login/entity/UapUser;
ifnonnull L0
aload 0
aload 0
getfield com/nd/rj/common/login/impl/GetUapUserImpl/context Landroid/content/Context;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getUapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/UapUser;
putfield com/nd/rj/common/login/impl/GetUapUserImpl/user Lcom/nd/rj/common/login/entity/UapUser;
L0:
aload 0
getfield com/nd/rj/common/login/impl/GetUapUserImpl/user Lcom/nd/rj/common/login/entity/UapUser;
ifnonnull L1
aload 0
new com/nd/rj/common/login/entity/UapUser
dup
invokespecial com/nd/rj/common/login/entity/UapUser/<init>()V
putfield com/nd/rj/common/login/impl/GetUapUserImpl/user Lcom/nd/rj/common/login/entity/UapUser;
L1:
aload 0
getfield com/nd/rj/common/login/impl/GetUapUserImpl/user Lcom/nd/rj/common/login/entity/UapUser;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getAccount()Ljava/lang/String;
aload 0
invokespecial com/nd/rj/common/login/impl/GetUapUserImpl/getUser()Lcom/nd/rj/common/login/entity/UapUser;
getfield com/nd/rj/common/login/entity/UapUser/account Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBindUapAccount()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBindUser()Lcom/product/android/business/login/BindUser;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBlowFish()Ljava/lang/String;
aload 0
invokespecial com/nd/rj/common/login/impl/GetUapUserImpl/getUser()Lcom/nd/rj/common/login/entity/UapUser;
getfield com/nd/rj/common/login/entity/UapUser/blowFish Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getId()I
aload 0
invokespecial com/nd/rj/common/login/impl/GetUapUserImpl/getUser()Lcom/nd/rj/common/login/entity/UapUser;
getfield com/nd/rj/common/login/entity/UapUser/id I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLastLoginTime()Ljava/lang/String;
aload 0
invokespecial com/nd/rj/common/login/impl/GetUapUserImpl/getUser()Lcom/nd/rj/common/login/entity/UapUser;
getfield com/nd/rj/common/login/entity/UapUser/lastLoginTime Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLoginType()I
iconst_m1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNickName()Ljava/lang/String;
aload 0
invokespecial com/nd/rj/common/login/impl/GetUapUserImpl/getUser()Lcom/nd/rj/common/login/entity/UapUser;
getfield com/nd/rj/common/login/entity/UapUser/nickName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOapUid()J
lconst_0
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getOapUnitId()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPwdTime()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTicekt()Ljava/lang/String;
aload 0
invokespecial com/nd/rj/common/login/impl/GetUapUserImpl/getUser()Lcom/nd/rj/common/login/entity/UapUser;
getfield com/nd/rj/common/login/entity/UapUser/ticket Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()I
iconst_m1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUapUid()J
aload 0
invokespecial com/nd/rj/common/login/impl/GetUapUserImpl/getUser()Lcom/nd/rj/common/login/entity/UapUser;
getfield com/nd/rj/common/login/entity/UapUser/uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public isAutoLogin()Z
aload 0
invokespecial com/nd/rj/common/login/impl/GetUapUserImpl/getUser()Lcom/nd/rj/common/login/entity/UapUser;
getfield com/nd/rj/common/login/entity/UapUser/isAutoLogin Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isCurrentUser()Z
aload 0
invokespecial com/nd/rj/common/login/impl/GetUapUserImpl/getUser()Lcom/nd/rj/common/login/entity/UapUser;
getfield com/nd/rj/common/login/entity/UapUser/isCurrentUser Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isOrgAdmin()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isSavePwd()Z
aload 0
invokespecial com/nd/rj/common/login/impl/GetUapUserImpl/getUser()Lcom/nd/rj/common/login/entity/UapUser;
getfield com/nd/rj/common/login/entity/UapUser/isSavePwd Z
ireturn
.limit locals 1
.limit stack 1
.end method
