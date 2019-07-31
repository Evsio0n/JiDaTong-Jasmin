.bytecode 50.0
.class public synchronized com/nd/rj/common/login/impl/GetOapUserImlp
.super com/nd/rj/common/login/impl/AbstractGetUserInfo

.field private 'bindUser' Lcom/product/android/business/login/BindUser;

.field private 'user' Lcom/nd/rj/common/login/entity/OapUser;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/rj/common/login/impl/AbstractGetUserInfo/<init>(Landroid/content/Context;)V
aload 0
aconst_null
putfield com/nd/rj/common/login/impl/GetOapUserImlp/user Lcom/nd/rj/common/login/entity/OapUser;
aload 0
aconst_null
putfield com/nd/rj/common/login/impl/GetOapUserImlp/bindUser Lcom/product/android/business/login/BindUser;
aload 0
aload 1
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getOapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/OapUser;
putfield com/nd/rj/common/login/impl/GetOapUserImlp/user Lcom/nd/rj/common/login/entity/OapUser;
return
.limit locals 2
.limit stack 2
.end method

.method private getUser()Lcom/nd/rj/common/login/entity/OapUser;
aload 0
getfield com/nd/rj/common/login/impl/GetOapUserImlp/user Lcom/nd/rj/common/login/entity/OapUser;
ifnonnull L0
aload 0
aload 0
getfield com/nd/rj/common/login/impl/GetOapUserImlp/context Landroid/content/Context;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getOapCurrentUser(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/OapUser;
putfield com/nd/rj/common/login/impl/GetOapUserImlp/user Lcom/nd/rj/common/login/entity/OapUser;
L0:
aload 0
getfield com/nd/rj/common/login/impl/GetOapUserImlp/user Lcom/nd/rj/common/login/entity/OapUser;
ifnonnull L1
aload 0
new com/nd/rj/common/login/entity/OapUser
dup
invokespecial com/nd/rj/common/login/entity/OapUser/<init>()V
putfield com/nd/rj/common/login/impl/GetOapUserImlp/user Lcom/nd/rj/common/login/entity/OapUser;
L1:
aload 0
getfield com/nd/rj/common/login/impl/GetOapUserImlp/user Lcom/nd/rj/common/login/entity/OapUser;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getAccount()Ljava/lang/String;
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/account Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBindUapAccount()Ljava/lang/String;
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/bindUapAccount Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBindUser()Lcom/product/android/business/login/BindUser;
aload 0
getfield com/nd/rj/common/login/impl/GetOapUserImlp/bindUser Lcom/product/android/business/login/BindUser;
ifnonnull L0
aload 0
aload 0
getfield com/nd/rj/common/login/impl/GetOapUserImlp/context Landroid/content/Context;
aload 0
getfield com/nd/rj/common/login/impl/GetOapUserImlp/user Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/uapUid J
aload 0
getfield com/nd/rj/common/login/impl/GetOapUserImlp/user Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getBindUserById(Landroid/content/Context;JJ)Lcom/product/android/business/login/BindUser;
putfield com/nd/rj/common/login/impl/GetOapUserImlp/bindUser Lcom/product/android/business/login/BindUser;
L0:
aload 0
getfield com/nd/rj/common/login/impl/GetOapUserImlp/bindUser Lcom/product/android/business/login/BindUser;
areturn
.limit locals 1
.limit stack 6
.end method

.method public getBlowFish()Ljava/lang/String;
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/blowFish Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getId()I
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/id I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLastLoginTime()Ljava/lang/String;
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/lastLoginTime Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLoginType()I
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/loginType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNickName()Ljava/lang/String;
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/nickName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOapUid()J
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/oapUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getOapUnitId()I
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/oapUnitId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPwdTime()Ljava/lang/String;
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/pwdTime Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTicekt()Ljava/lang/String;
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/ticket Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()I
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/type I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUapUid()J
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/uapUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public isAutoLogin()Z
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/isAutoLogin Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isCurrentUser()Z
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/isCurrentUser Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isOrgAdmin()Z
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/isOrgAdmin Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isSavePwd()Z
aload 0
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/getUser()Lcom/nd/rj/common/login/entity/OapUser;
getfield com/nd/rj/common/login/entity/OapUser/isSavePwd Z
ireturn
.limit locals 1
.limit stack 1
.end method
