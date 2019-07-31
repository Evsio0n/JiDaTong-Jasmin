.bytecode 50.0
.class public synchronized com/alipay/sdk/util/H5PayResultModel
.super java/lang/Object

.field private 'resultCode' Ljava/lang/String;

.field private 'returnUrl' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getResultCode()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/util/H5PayResultModel/resultCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getReturnUrl()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/util/H5PayResultModel/returnUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setResultCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/util/H5PayResultModel/resultCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setReturnUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/util/H5PayResultModel/returnUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
