.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/y
.super java/lang/Object

.method public static a(Ljava/io/Closeable;)V
.catch java/io/IOException from L0 to L1 using L2
aload 0
ifnull L1
L0:
aload 0
invokeinterface java/io/Closeable/close()V 0
L1:
return
L2:
astore 0
return
.limit locals 1
.limit stack 1
.end method
