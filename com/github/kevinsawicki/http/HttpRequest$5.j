.bytecode 50.0
.class synchronized com/github/kevinsawicki/http/HttpRequest$5
.super com/github/kevinsawicki/http/HttpRequest$CloseOperation
.signature "Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation<Lcom/github/kevinsawicki/http/HttpRequest;>;"
.enclosing method com/github/kevinsawicki/http/HttpRequest/receive(Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
.inner class inner com/github/kevinsawicki/http/HttpRequest$5

.field final synthetic 'this$0' Lcom/github/kevinsawicki/http/HttpRequest;

.field private final synthetic 'val$output' Ljava/io/OutputStream;

.method <init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V
aload 0
aload 1
putfield com/github/kevinsawicki/http/HttpRequest$5/this$0 Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
aload 4
putfield com/github/kevinsawicki/http/HttpRequest$5/val$output Ljava/io/OutputStream;
aload 0
aload 2
iload 3
invokespecial com/github/kevinsawicki/http/HttpRequest$CloseOperation/<init>(Ljava/io/Closeable;Z)V
return
.limit locals 5
.limit stack 3
.end method

.method protected run()Lcom/github/kevinsawicki/http/HttpRequest;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.throws java/io/IOException
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$5/this$0 Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$5/val$output Ljava/io/OutputStream;
invokevirtual com/github/kevinsawicki/http/HttpRequest/receive(Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 1
.limit stack 2
.end method

.method protected volatile synthetic run()Ljava/lang/Object;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.throws java/io/IOException
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest$5/run()Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 1
.limit stack 1
.end method
