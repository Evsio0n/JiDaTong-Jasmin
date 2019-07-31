.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/bean/ErrorMsg
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType

.field private 'code' I

.field private 'description' Ljava/lang/String;

.field private 'result' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCode()I
aload 0
getfield com/android/u/weibo/weibo/business/bean/ErrorMsg/code I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDescription()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/business/bean/ErrorMsg/description Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getResult()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/business/bean/ErrorMsg/result Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCode(I)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/business/bean/ErrorMsg/code I
return
.limit locals 2
.limit stack 2
.end method

.method public setDescription(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/business/bean/ErrorMsg/description Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setResult(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/business/bean/ErrorMsg/result Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
