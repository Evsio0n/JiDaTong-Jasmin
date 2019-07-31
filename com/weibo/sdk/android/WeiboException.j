.bytecode 50.0
.class public synchronized com/weibo/sdk/android/WeiboException
.super java/lang/Exception

.field private static final 'serialVersionUID' J = 475022994858770424L


.field private 'statusCode' I

.method public <init>()V
aload 0
invokespecial java/lang/Exception/<init>()V
aload 0
iconst_m1
putfield com/weibo/sdk/android/WeiboException/statusCode I
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
invokespecial java/lang/Exception/<init>()V
aload 0
iconst_m1
putfield com/weibo/sdk/android/WeiboException/statusCode I
aload 0
iload 1
putfield com/weibo/sdk/android/WeiboException/statusCode I
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Ljava/lang/Exception;)V
aload 0
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/Throwable;)V
aload 0
iconst_m1
putfield com/weibo/sdk/android/WeiboException/statusCode I
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
aload 0
iconst_m1
putfield com/weibo/sdk/android/WeiboException/statusCode I
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;I)V
aload 0
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
aload 0
iconst_m1
putfield com/weibo/sdk/android/WeiboException/statusCode I
aload 0
iload 2
putfield com/weibo/sdk/android/WeiboException/statusCode I
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/Exception;)V
aload 0
aload 1
aload 2
invokespecial java/lang/Exception/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
aload 0
iconst_m1
putfield com/weibo/sdk/android/WeiboException/statusCode I
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
aload 0
aload 1
aload 2
invokespecial java/lang/Exception/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
aload 0
iconst_m1
putfield com/weibo/sdk/android/WeiboException/statusCode I
aload 0
iload 3
putfield com/weibo/sdk/android/WeiboException/statusCode I
return
.limit locals 4
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
aload 0
aload 1
aload 2
invokespecial java/lang/Exception/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
aload 0
iconst_m1
putfield com/weibo/sdk/android/WeiboException/statusCode I
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Ljava/lang/Throwable;)V
aload 0
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/Throwable;)V
aload 0
iconst_m1
putfield com/weibo/sdk/android/WeiboException/statusCode I
return
.limit locals 2
.limit stack 2
.end method

.method public getStatusCode()I
aload 0
getfield com/weibo/sdk/android/WeiboException/statusCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setStatusCode(I)V
aload 0
iload 1
putfield com/weibo/sdk/android/WeiboException/statusCode I
return
.limit locals 2
.limit stack 2
.end method
