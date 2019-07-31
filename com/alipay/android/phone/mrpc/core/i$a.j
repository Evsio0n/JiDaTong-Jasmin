.bytecode 50.0
.class final synchronized com/alipay/android/phone/mrpc/core/i$a
.super java/lang/Object
.implements org/apache/http/HttpRequestInterceptor
.inner class private final a inner com/alipay/android/phone/mrpc/core/i$a outer com/alipay/android/phone/mrpc/core/i

.field final synthetic 'a' Lcom/alipay/android/phone/mrpc/core/i;

.method private <init>(Lcom/alipay/android/phone/mrpc/core/i;)V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/i$a/a Lcom/alipay/android/phone/mrpc/core/i;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/alipay/android/phone/mrpc/core/i;B)V
aload 0
aload 1
invokespecial com/alipay/android/phone/mrpc/core/i$a/<init>(Lcom/alipay/android/phone/mrpc/core/i;)V
return
.limit locals 3
.limit stack 2
.end method

.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
aload 0
getfield com/alipay/android/phone/mrpc/core/i$a/a Lcom/alipay/android/phone/mrpc/core/i;
invokestatic com/alipay/android/phone/mrpc/core/i/a(Lcom/alipay/android/phone/mrpc/core/i;)Lcom/alipay/android/phone/mrpc/core/i$b;
astore 2
aload 2
ifnull L0
aload 2
getfield com/alipay/android/phone/mrpc/core/i$b/a Ljava/lang/String;
aload 2
getfield com/alipay/android/phone/mrpc/core/i$b/b I
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L0
aload 1
instanceof org/apache/http/client/methods/HttpUriRequest
ifeq L0
aload 1
checkcast org/apache/http/client/methods/HttpUriRequest
invokestatic com/alipay/android/phone/mrpc/core/i/a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
astore 1
aload 2
getfield com/alipay/android/phone/mrpc/core/i$b/b I
aload 2
getfield com/alipay/android/phone/mrpc/core/i$b/a Ljava/lang/String;
aload 1
invokestatic android/util/Log/println(ILjava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 3
.limit stack 3
.end method
