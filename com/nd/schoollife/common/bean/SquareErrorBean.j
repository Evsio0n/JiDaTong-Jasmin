.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/SquareErrorBean
.super java/lang/Object

.field private 'errorCode' Ljava/lang/String;

.field private 'msg' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getErrorCode()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/SquareErrorBean/errorCode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMsg()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/SquareErrorBean/msg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setErrorCode(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/SquareErrorBean/errorCode Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/SquareErrorBean/msg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
