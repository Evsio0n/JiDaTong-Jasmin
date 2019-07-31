.bytecode 50.0
.class synchronized com/github/kevinsawicki/http/HttpRequest$7
.super com/github/kevinsawicki/http/HttpRequest$CloseOperation
.signature "Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation<Lcom/github/kevinsawicki/http/HttpRequest;>;"
.enclosing method com/github/kevinsawicki/http/HttpRequest/receive(Ljava/io/Writer;)Lcom/github/kevinsawicki/http/HttpRequest;
.inner class inner com/github/kevinsawicki/http/HttpRequest$7

.field final synthetic 'this$0' Lcom/github/kevinsawicki/http/HttpRequest;

.field private final synthetic 'val$reader' Ljava/io/BufferedReader;

.field private final synthetic 'val$writer' Ljava/io/Writer;

.method <init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V
aload 0
aload 1
putfield com/github/kevinsawicki/http/HttpRequest$7/this$0 Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
aload 4
putfield com/github/kevinsawicki/http/HttpRequest$7/val$reader Ljava/io/BufferedReader;
aload 0
aload 5
putfield com/github/kevinsawicki/http/HttpRequest$7/val$writer Ljava/io/Writer;
aload 0
aload 2
iload 3
invokespecial com/github/kevinsawicki/http/HttpRequest$CloseOperation/<init>(Ljava/io/Closeable;Z)V
return
.limit locals 6
.limit stack 3
.end method

.method public run()Lcom/github/kevinsawicki/http/HttpRequest;
.throws java/io/IOException
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$7/this$0 Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$7/val$reader Ljava/io/BufferedReader;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$7/val$writer Ljava/io/Writer;
invokevirtual com/github/kevinsawicki/http/HttpRequest/copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 1
.limit stack 3
.end method

.method public volatile synthetic run()Ljava/lang/Object;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.throws java/io/IOException
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest$7/run()Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 1
.limit stack 1
.end method
