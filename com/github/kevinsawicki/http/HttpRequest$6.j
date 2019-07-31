.bytecode 50.0
.class synchronized com/github/kevinsawicki/http/HttpRequest$6
.super com/github/kevinsawicki/http/HttpRequest$CloseOperation
.signature "Lcom/github/kevinsawicki/http/HttpRequest$CloseOperation<Lcom/github/kevinsawicki/http/HttpRequest;>;"
.enclosing method com/github/kevinsawicki/http/HttpRequest/receive(Ljava/lang/Appendable;)Lcom/github/kevinsawicki/http/HttpRequest;
.inner class inner com/github/kevinsawicki/http/HttpRequest$6

.field final synthetic 'this$0' Lcom/github/kevinsawicki/http/HttpRequest;

.field private final synthetic 'val$appendable' Ljava/lang/Appendable;

.field private final synthetic 'val$reader' Ljava/io/BufferedReader;

.method <init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V
aload 0
aload 1
putfield com/github/kevinsawicki/http/HttpRequest$6/this$0 Lcom/github/kevinsawicki/http/HttpRequest;
aload 0
aload 4
putfield com/github/kevinsawicki/http/HttpRequest$6/val$reader Ljava/io/BufferedReader;
aload 0
aload 5
putfield com/github/kevinsawicki/http/HttpRequest$6/val$appendable Ljava/lang/Appendable;
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
getfield com/github/kevinsawicki/http/HttpRequest$6/this$0 Lcom/github/kevinsawicki/http/HttpRequest;
invokestatic com/github/kevinsawicki/http/HttpRequest/access$1(Lcom/github/kevinsawicki/http/HttpRequest;)I
invokestatic java/nio/CharBuffer/allocate(I)Ljava/nio/CharBuffer;
astore 2
L0:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$6/val$reader Ljava/io/BufferedReader;
aload 2
invokevirtual java/io/BufferedReader/read(Ljava/nio/CharBuffer;)I
istore 1
iload 1
iconst_m1
if_icmpne L1
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$6/this$0 Lcom/github/kevinsawicki/http/HttpRequest;
areturn
L1:
aload 2
invokevirtual java/nio/CharBuffer/rewind()Ljava/nio/Buffer;
pop
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$6/val$appendable Ljava/lang/Appendable;
aload 2
iconst_0
iload 1
invokeinterface java/lang/Appendable/append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable; 3
pop
aload 2
invokevirtual java/nio/CharBuffer/rewind()Ljava/nio/Buffer;
pop
goto L0
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic run()Ljava/lang/Object;
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.throws java/io/IOException
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest$6/run()Lcom/github/kevinsawicki/http/HttpRequest;
areturn
.limit locals 1
.limit stack 1
.end method
