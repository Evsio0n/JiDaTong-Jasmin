.bytecode 50.0
.class public synchronized com/nd/rj/common/login/impl/GetUserInfo
.super java/lang/Object
.implements com/product/android/business/login/IGetUserInfo

.field private 'context' Landroid/content/Context;

.field private 'iUser' Lcom/product/android/business/login/IGetUserInfo;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
aload 0
aload 1
putfield com/nd/rj/common/login/impl/GetUserInfo/context Landroid/content/Context;
aload 0
invokespecial com/nd/rj/common/login/impl/GetUserInfo/init()V
return
.limit locals 2
.limit stack 2
.end method

.method private init()V
getstatic com/product/android/business/config/Configuration/LOGIN_TYPE I
tableswitch 0
L0
L1
L2
default : L3
L3:
aload 0
new com/nd/rj/common/login/impl/GetOapUserImlp
dup
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/context Landroid/content/Context;
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
return
L1:
aload 0
new com/nd/rj/common/login/impl/GetOapUserImlp
dup
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/context Landroid/content/Context;
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
return
L0:
aload 0
new com/nd/rj/common/login/impl/GetUapUserImpl
dup
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/context Landroid/content/Context;
invokespecial com/nd/rj/common/login/impl/GetUapUserImpl/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
return
L2:
aload 0
new com/nd/rj/common/login/impl/GetOapUserImlp
dup
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/context Landroid/content/Context;
invokespecial com/nd/rj/common/login/impl/GetOapUserImlp/<init>(Landroid/content/Context;)V
putfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
return
.limit locals 1
.limit stack 4
.end method

.method public clearSid()V
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/clearSid()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public getAccount()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getAccount()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBindUapAccount()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUapAccount()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBindUser()Lcom/product/android/business/login/BindUser;
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBlowFish()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBlowFish()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEtrasValue(ILjava/lang/String;)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
iload 1
aload 2
invokeinterface com/product/android/business/login/IGetUserInfo/getEtrasValue(ILjava/lang/String;)Ljava/lang/String; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public getId()I
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getId()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLastLoginTime()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getLastLoginTime()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getLoginType()I
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getLoginType()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getNickName()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getNickName()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOapUid()J
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getOapUnitId()I
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUnitId()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPwdTime()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getPwdTime()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSid()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTicekt()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getTicekt()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()I
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUapUid()J
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getUapUid()J 0
lreturn
.limit locals 1
.limit stack 2
.end method

.method public isAutoLogin()Z
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/isAutoLogin()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isCurrentUser()Z
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/isCurrentUser()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isOrgAdmin()Z
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/isOrgAdmin()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isSavePwd()Z
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/isSavePwd()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public putEtrasValue(ILjava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
iload 1
aload 2
aload 3
invokeinterface com/product/android/business/login/IGetUserInfo/putEtrasValue(ILjava/lang/String;Ljava/lang/String;)V 3
return
.limit locals 4
.limit stack 4
.end method

.method public reLoadUserFromDb()V
aload 0
invokespecial com/nd/rj/common/login/impl/GetUserInfo/init()V
return
.limit locals 1
.limit stack 1
.end method

.method public updateBindUserToDb()Z
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/updateBindUserToDb()Z 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public updateSid(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/impl/GetUserInfo/iUser Lcom/product/android/business/login/IGetUserInfo;
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/updateSid(Ljava/lang/String;)V 1
return
.limit locals 2
.limit stack 2
.end method
