.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/type/ErrMsg
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType

.field private 'code' I

.field private 'msg' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCode()I
aload 0
getfield com/nd/teamfile/sdk/type/ErrMsg/code I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMsg()Ljava/lang/String;
aload 0
getfield com/nd/teamfile/sdk/type/ErrMsg/msg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCode(I)V
aload 0
iload 1
putfield com/nd/teamfile/sdk/type/ErrMsg/code I
return
.limit locals 2
.limit stack 2
.end method

.method public setMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/teamfile/sdk/type/ErrMsg/msg Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
