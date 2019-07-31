.bytecode 50.0
.class public synchronized com/nd/rj/common/login/impl/UserInfoInterfaceImpl
.super java/lang/Object
.implements com/nd/rj/common/login/interfaces/ILoginUserInfoInterface

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getLastLoginUserInfo(ILandroid/content/Context;)Lcom/product/android/business/bean/UserInfo;
iload 1
invokestatic com/nd/rj/common/login/NdLoginplatform/getInstance(I)Lcom/nd/rj/common/login/NdLoginplatform;
aload 2
invokevirtual com/nd/rj/common/login/NdLoginplatform/getLastUserInfo(Landroid/content/Context;)Lcom/product/android/business/bean/UserInfo;
areturn
.limit locals 3
.limit stack 2
.end method

.method public saveUserinfo(Lcom/product/android/business/bean/UserInfo;)V
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
aload 1
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/SetUserInfo(Lcom/product/android/business/bean/UserInfo;)I
pop
return
.limit locals 2
.limit stack 2
.end method
