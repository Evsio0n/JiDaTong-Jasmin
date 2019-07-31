.bytecode 50.0
.class public synchronized com/weibo/sdk/android/WeiboDialogError
.super java/lang/Throwable

.field private static final 'serialVersionUID' J = 1L


.field private 'mErrorCode' I

.field private 'mFailingUrl' Ljava/lang/String;

.method public <init>(Ljava/lang/String;ILjava/lang/String;)V
aload 0
aload 1
invokespecial java/lang/Throwable/<init>(Ljava/lang/String;)V
aload 0
iload 2
putfield com/weibo/sdk/android/WeiboDialogError/mErrorCode I
aload 0
aload 3
putfield com/weibo/sdk/android/WeiboDialogError/mFailingUrl Ljava/lang/String;
return
.limit locals 4
.limit stack 2
.end method

.method getErrorCode()I
aload 0
getfield com/weibo/sdk/android/WeiboDialogError/mErrorCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method getFailingUrl()Ljava/lang/String;
aload 0
getfield com/weibo/sdk/android/WeiboDialogError/mFailingUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
