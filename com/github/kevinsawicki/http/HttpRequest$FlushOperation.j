.bytecode 50.0
.class public synchronized abstract com/github/kevinsawicki/http/HttpRequest$FlushOperation
.super com/github/kevinsawicki/http/HttpRequest$Operation
.signature "<V:Ljava/lang/Object;>Lcom/github/kevinsawicki/http/HttpRequest$Operation<TV;>;"
.inner class protected static abstract FlushOperation inner com/github/kevinsawicki/http/HttpRequest$FlushOperation outer com/github/kevinsawicki/http/HttpRequest

.field private final 'flushable' Ljava/io/Flushable;

.method protected <init>(Ljava/io/Flushable;)V
aload 0
invokespecial com/github/kevinsawicki/http/HttpRequest$Operation/<init>()V
aload 0
aload 1
putfield com/github/kevinsawicki/http/HttpRequest$FlushOperation/flushable Ljava/io/Flushable;
return
.limit locals 2
.limit stack 2
.end method

.method protected done()V
.throws java/io/IOException
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$FlushOperation/flushable Ljava/io/Flushable;
invokeinterface java/io/Flushable/flush()V 0
return
.limit locals 1
.limit stack 1
.end method
