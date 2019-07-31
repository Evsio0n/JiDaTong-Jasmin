.bytecode 50.0
.class final synchronized com/alipay/android/phone/mrpc/core/j
.super java/lang/Object
.implements org/apache/http/HttpRequestInterceptor

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
invokestatic android/os/Looper/myLooper()Landroid/os/Looper;
ifnull L0
invokestatic android/os/Looper/myLooper()Landroid/os/Looper;
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
if_acmpne L0
new java/lang/RuntimeException
dup
ldc "This thread forbids HTTP requests"
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 3
.limit stack 3
.end method
