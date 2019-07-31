.bytecode 50.0
.class public synchronized abstract com/github/kevinsawicki/http/HttpRequest$CloseOperation
.super com/github/kevinsawicki/http/HttpRequest$Operation
.signature "<V:Ljava/lang/Object;>Lcom/github/kevinsawicki/http/HttpRequest$Operation<TV;>;"
.inner class protected static abstract CloseOperation inner com/github/kevinsawicki/http/HttpRequest$CloseOperation outer com/github/kevinsawicki/http/HttpRequest

.field private final 'closeable' Ljava/io/Closeable;

.field private final 'ignoreCloseExceptions' Z

.method protected <init>(Ljava/io/Closeable;Z)V
aload 0
invokespecial com/github/kevinsawicki/http/HttpRequest$Operation/<init>()V
aload 0
aload 1
putfield com/github/kevinsawicki/http/HttpRequest$CloseOperation/closeable Ljava/io/Closeable;
aload 0
iload 2
putfield com/github/kevinsawicki/http/HttpRequest$CloseOperation/ignoreCloseExceptions Z
return
.limit locals 3
.limit stack 2
.end method

.method protected done()V
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$CloseOperation/closeable Ljava/io/Closeable;
instanceof java/io/Flushable
ifeq L3
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$CloseOperation/closeable Ljava/io/Closeable;
checkcast java/io/Flushable
invokeinterface java/io/Flushable/flush()V 0
L3:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$CloseOperation/ignoreCloseExceptions Z
ifeq L4
L0:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$CloseOperation/closeable Ljava/io/Closeable;
invokeinterface java/io/Closeable/close()V 0
L1:
return
L4:
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$CloseOperation/closeable Ljava/io/Closeable;
invokeinterface java/io/Closeable/close()V 0
return
L2:
astore 1
return
.limit locals 2
.limit stack 1
.end method
