.bytecode 50.0
.class public synchronized com/bestpay/db/ResultInfo
.super java/lang/Object

.field private 'result' Ljava/lang/String;

.field private 'resultCode' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getResult()Ljava/lang/String;
aload 0
getfield com/bestpay/db/ResultInfo/result Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getResultCode()I
aload 0
getfield com/bestpay/db/ResultInfo/resultCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setResult(Ljava/lang/String;)V
aload 0
aload 1
putfield com/bestpay/db/ResultInfo/result Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setResultCode(I)V
aload 0
iload 1
putfield com/bestpay/db/ResultInfo/resultCode I
return
.limit locals 2
.limit stack 2
.end method
