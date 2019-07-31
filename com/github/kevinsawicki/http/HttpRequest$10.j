.bytecode 50.0
.class synchronized com/github/kevinsawicki/http/HttpRequest$10
.super com/github/kevinsawicki/http/HttpRequest$FlushOperation
.signature "Lcom/github/kevinsawicki/http/HttpRequest$FlushOperation<Lcom/github/kevinsawicki/http/HttpRequest;>;"
.enclosing method com/github/kevinsawicki/http/HttpRequest/send(Ljava/io/Reader;)Lcom/github/kevinsawicki/http/HttpRequest;
.inner class inner com/github/kevinsawicki/http/HttpRequest$10

.field final synthetic 'this$0' Lcom/github/kevinsawicki/http/HttpRequest;

.field private final synthetic 'val$input' Ljava/io/Reader;

.field private final synthetic 'val$writer' Ljava/io/Writer;

.method <init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V
aload 0
aload 1
putfield com/github/kevinsawicki/http/HttpRequest$10/this$0 Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
aload 3
putfield com/github/kevinsawicki/http/HttpRequest$10/val$input Ljava/io/Reader;
aload 0
aload 4
putfield com/github/kevinsawicki/http/HttpRequest$10/val$writer Ljava/io/Writer;
aload 0
aload 2
invokespecial com/github/kevinsawicki/http/HttpRequest$FlushOperation/<init>(Ljava/io/Flushable;)V
return
.limit locals 5
.limit stack 2
.end method

.method protected run()Lcom/github/kevinsawicki/http/HttpRequest;
.throws java/io/IOException
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$10/this$0 Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$10/val$input Ljava/io/Reader;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$10/val$writer Ljava/io/Writer;
invokevirtual com/github/kevinsawicki/http/HttpRequest/copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 1
.limit stack 3
.end method

.method protected volatile synthetic run()Ljava/lang/Object;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.throws java/io/IOException
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest$10/run()Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 1
.limit stack 1
.end method
