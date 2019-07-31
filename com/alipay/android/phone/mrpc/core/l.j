.bytecode 50.0
.class final synchronized com/alipay/android/phone/mrpc/core/l
.super org/apache/http/impl/client/DefaultRedirectHandler

.field 'a' I

.field final synthetic 'b' Lcom/alipay/android/phone/mrpc/core/k;

.method <init>(Lcom/alipay/android/phone/mrpc/core/k;)V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/l/b Lcom/alipay/android/phone/mrpc/core/k;
aload 0
invokespecial org/apache/http/impl/client/DefaultRedirectHandler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public final isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
aload 0
aload 0
getfield com/alipay/android/phone/mrpc/core/l/a I
iconst_1
iadd
putfield com/alipay/android/phone/mrpc/core/l/a I
aload 0
aload 1
aload 2
invokespecial org/apache/http/impl/client/DefaultRedirectHandler/isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
istore 5
iload 5
istore 4
iload 5
ifne L0
iload 5
istore 4
aload 0
getfield com/alipay/android/phone/mrpc/core/l/a I
iconst_5
if_icmpge L0
aload 1
invokeinterface org/apache/http/HttpResponse/getStatusLine()Lorg/apache/http/StatusLine; 0
invokeinterface org/apache/http/StatusLine/getStatusCode()I 0
istore 3
iload 3
sipush 301
if_icmpeq L1
iload 5
istore 4
iload 3
sipush 302
if_icmpne L0
L1:
iconst_1
istore 4
L0:
iload 4
ireturn
.limit locals 6
.limit stack 3
.end method
