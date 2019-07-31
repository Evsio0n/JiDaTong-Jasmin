.bytecode 50.0
.class final synchronized com/alipay/android/phone/mrpc/core/m
.super java/lang/Object
.implements org/apache/http/conn/ConnectionKeepAliveStrategy

.field final synthetic 'a' Lcom/alipay/android/phone/mrpc/core/k;

.method <init>(Lcom/alipay/android/phone/mrpc/core/k;)V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/m/a Lcom/alipay/android/phone/mrpc/core/k;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
ldc2_w 180000L
lreturn
.limit locals 3
.limit stack 2
.end method
