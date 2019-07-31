.bytecode 50.0
.class public synchronized com/alipay/android/phone/mrpc/core/h
.super java/lang/Object
.implements org/apache/http/client/HttpRequestRetryHandler

.field static final 'a' Ljava/lang/String;

.method static <clinit>()V
ldc com/alipay/android/phone/mrpc/core/h
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/alipay/android/phone/mrpc/core/h/a Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
iload 2
iconst_3
if_icmplt L0
L1:
iconst_0
ireturn
L0:
aload 1
instanceof org/apache/http/NoHttpResponseException
ifeq L2
getstatic com/alipay/android/phone/mrpc/core/h/a Ljava/lang/String;
astore 1
iconst_1
ireturn
L2:
aload 1
instanceof java/net/SocketException
ifne L3
aload 1
instanceof javax/net/ssl/SSLException
ifeq L1
L3:
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
ifnull L1
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
ldc "Broken pipe"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L1
getstatic com/alipay/android/phone/mrpc/core/h/a Ljava/lang/String;
astore 1
iconst_1
ireturn
.limit locals 4
.limit stack 2
.end method
