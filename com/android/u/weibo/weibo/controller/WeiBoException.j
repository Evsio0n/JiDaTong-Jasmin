.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/controller/WeiBoException
.super java/lang/Exception

.field private 'errorMsg' Lcom/android/u/weibo/weibo/business/bean/ErrorMsg;

.field private 'mCode' I

.method public <init>(ILjava/lang/String;)V
aload 0
aload 2
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/controller/WeiBoException/mCode I
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(ILjava/lang/String;Lcom/android/u/weibo/weibo/business/bean/ErrorMsg;)V
aload 0
aload 2
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/controller/WeiBoException/mCode I
aload 0
aload 3
putfield com/android/u/weibo/weibo/controller/WeiBoException/errorMsg Lcom/android/u/weibo/weibo/business/bean/ErrorMsg;
return
.limit locals 4
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
aload 0
aload 1
aload 2
invokespecial java/lang/Exception/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Ljava/lang/Throwable;)V
aload 0
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/Throwable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getCode()I
aload 0
getfield com/android/u/weibo/weibo/controller/WeiBoException/mCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getErrorMsg()Lcom/android/u/weibo/weibo/business/bean/ErrorMsg;
aload 0
getfield com/android/u/weibo/weibo/controller/WeiBoException/errorMsg Lcom/android/u/weibo/weibo/business/bean/ErrorMsg;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setErrorMsg(Lcom/android/u/weibo/weibo/business/bean/ErrorMsg;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/controller/WeiBoException/errorMsg Lcom/android/u/weibo/weibo/business/bean/ErrorMsg;
return
.limit locals 2
.limit stack 2
.end method
