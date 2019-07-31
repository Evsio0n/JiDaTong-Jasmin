.bytecode 50.0
.class public synchronized com/nd/android/u/allCommonHttp/HttpException
.super java/lang/Exception

.field private static final 'serialVersionUID' J = -8693691645150152560L


.field private 'statusCode' I

.method public <init>(Ljava/lang/Exception;)V
aload 0
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/Throwable;)V
aload 0
iconst_m1
putfield com/nd/android/u/allCommonHttp/HttpException/statusCode I
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
putfield com/nd/android/u/allCommonHttp/HttpException/statusCode I
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
putfield com/nd/android/u/allCommonHttp/HttpException/statusCode I
aload 0
iload 2
putfield com/nd/android/u/allCommonHttp/HttpException/statusCode I
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
putfield com/nd/android/u/allCommonHttp/HttpException/statusCode I
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
putfield com/nd/android/u/allCommonHttp/HttpException/statusCode I
aload 0
iload 3
putfield com/nd/android/u/allCommonHttp/HttpException/statusCode I
return
.limit locals 4
.limit stack 3
.end method

.method public getStatusCode()I
aload 0
getfield com/nd/android/u/allCommonHttp/HttpException/statusCode I
ireturn
.limit locals 1
.limit stack 1
.end method
