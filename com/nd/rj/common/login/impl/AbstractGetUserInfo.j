.bytecode 50.0
.class public synchronized abstract com/nd/rj/common/login/impl/AbstractGetUserInfo
.super java/lang/Object
.implements com/product/android/business/login/IGetUserInfo

.field protected 'context' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/rj/common/login/impl/AbstractGetUserInfo/context Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public clearSid()V
aload 0
getfield com/nd/rj/common/login/impl/AbstractGetUserInfo/context Landroid/content/Context;
ldc ""
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/setUserSid(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method

.method public getEtrasValue(ILjava/lang/String;)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/AbstractGetUserInfo/context Landroid/content/Context;
iload 1
aload 2
invokestatic com/nd/rj/common/login/util/LoginDbUtil/getUserEtras(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public getSid()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/impl/AbstractGetUserInfo/context Landroid/content/Context;
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/getUserSid(Landroid/content/Context;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public putEtrasValue(ILjava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/impl/AbstractGetUserInfo/context Landroid/content/Context;
iload 1
aload 2
aload 3
invokestatic com/nd/rj/common/login/util/LoginDbUtil/saveUserEtras(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
pop
return
.limit locals 4
.limit stack 4
.end method

.method public reLoadUserFromDb()V
return
.limit locals 1
.limit stack 0
.end method

.method public updateBindUserToDb()Z
aload 0
invokevirtual com/nd/rj/common/login/impl/AbstractGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/rj/common/login/impl/AbstractGetUserInfo/context Landroid/content/Context;
aload 0
invokevirtual com/nd/rj/common/login/impl/AbstractGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser;
invokestatic com/nd/rj/common/login/util/LoginDbUtil/saveBindUser(Landroid/content/Context;Lcom/product/android/business/login/BindUser;)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public updateSid(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/impl/AbstractGetUserInfo/context Landroid/content/Context;
aload 1
invokestatic com/nd/rj/common/login/util/LoginCommonUtil/setUserSid(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method
