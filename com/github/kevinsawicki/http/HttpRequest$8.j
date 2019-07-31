.bytecode 50.0
.class synchronized com/github/kevinsawicki/http/HttpRequest$8
.super com/github/kevinsawicki/http/HttpRequest$CloseOperation
.signature "Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation<Lcom/github/kevinsawicki/http/HttpRequest;>;"
.enclosing method com/github/kevinsawicki/http/HttpRequest/copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
.inner class inner com/github/kevinsawicki/http/HttpRequest$8

.field final synthetic 'this$0' Lcom/github/kevinsawicki/http/HttpRequest;

.field private final synthetic 'val$input' Ljava/io/InputStream;

.field private final synthetic 'val$output' Ljava/io/OutputStream;

.method <init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
aload 0
aload 1
putfield com/github/kevinsawicki/http/HttpRequest$8/this$0 Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
aload 4
putfield com/github/kevinsawicki/http/HttpRequest$8/val$input Ljava/io/InputStream;
aload 0
aload 5
putfield com/github/kevinsawicki/http/HttpRequest$8/val$output Ljava/io/OutputStream;
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
getfield com/github/kevinsawicki/http/HttpRequest$8/this$0 Lcom/github/kevinsawicki/http/HttpRequest;
invokestatic com/github/kevinsawicki/http/HttpRequest/access$1(Lcom/github/kevinsawicki/http/HttpRequest;)I
newarray byte
astore 2
L0:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$8/val$input Ljava/io/InputStream;
aload 2
invokevirtual java/io/InputStream/read([B)I
istore 1
iload 1
iconst_m1
if_icmpne L1
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$8/this$0 Lcom/github/kevinsawicki/http/HttpRequest;
areturn
L1:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$8/val$output Ljava/io/OutputStream;
aload 2
iconst_0
iload 1
invokevirtual java/io/OutputStream/write([BII)V
goto L0
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic run()Ljava/lang/Object;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.throws java/io/IOException
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest$8/run()Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 1
.limit stack 1
.end method
