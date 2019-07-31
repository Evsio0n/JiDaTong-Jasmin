.bytecode 50.0
.class public synchronized abstract com/github/kevinsawicki/http/HttpRequest$Operation
.super java/lang/Object
.implements java/util/concurrent/Callable
.signature "<V:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/concurrent/Callable<TV;>;"
.inner class protected static abstract Operation inner com/github/kevinsawicki/http/HttpRequest$Operation outer com/github/kevinsawicki/http/HttpRequest

.method protected <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public call()Ljava/lang/Object;
.signature "()TV;"
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.catch com/github/kevinsawicki/http/HttpRequest$HttpRequestException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/io/IOException from L1 to L5 using L6
.catch all from L7 to L4 using L4
.catch java/io/IOException from L8 to L9 using L10
.catch all from L11 to L10 using L4
iconst_0
istore 1
L0:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest$Operation/run()Ljava/lang/Object;
astore 2
L1:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest$Operation/done()V
L5:
aload 2
areturn
L6:
astore 3
iconst_0
ifne L5
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 3
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
L2:
astore 2
iconst_1
istore 1
L7:
aload 2
athrow
L4:
astore 2
L8:
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest$Operation/done()V
L9:
aload 2
athrow
L3:
astore 2
iconst_1
istore 1
L11:
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 2
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
L10:
astore 3
iload 1
ifne L9
new com/github/kevinsawicki/http/HttpRequest$HttpRequestException
dup
aload 3
invokespecial com/github/kevinsawicki/http/HttpRequest$HttpRequestException/<init>(Ljava/io/IOException;)V
athrow
.limit locals 4
.limit stack 3
.end method

.method protected abstract done()V
.throws java/io/IOException
.end method

.method protected abstract run()Ljava/lang/Object;
.signature "()TV;"
.throws com/github/kevinsawicki/http/HttpRequest$HttpRequestException
.throws java/io/IOException
.end method
