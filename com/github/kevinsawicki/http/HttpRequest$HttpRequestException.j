.bytecode 50.0
.class public synchronized com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.super java/lang/RuntimeException
.inner class public static HttpRequestException inner com/github/kevinsawicki/http/HttpRequest$HttpRequestException outer com/github/kevinsawicki/http/HttpRequest

.field private static final 'serialVersionUID' J = -1170466989781746231L


.method public <init>(Ljava/io/IOException;)V
aload 0
aload 1
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/Throwable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getCause()Ljava/io/IOException;
aload 0
invokespecial java/lang/RuntimeException/getCause()Ljava/lang/Throwable;
checkcast java/io/IOException
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic getCause()Ljava/lang/Throwable;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest$HttpRequestException/getCause()Ljava/io/IOException;
areturn
.limit locals 1
.limit stack 1
.end method
