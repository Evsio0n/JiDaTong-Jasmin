.bytecode 50.0
.class synchronized com/common/android/utils/http/HttpBaseClient$1
.super java/lang/Object
.implements org/apache/http/client/HttpRequestRetryHandler
.enclosing method com/common/android/utils/http/HttpBaseClient
.inner class inner com/common/android/utils/http/HttpBaseClient$1

.field final synthetic 'this$0' Lcom/common/android/utils/http/HttpBaseClient;

.method <init>(Lcom/common/android/utils/http/HttpBaseClient;)V
aload 0
aload 1
putfield com/common/android/utils/http/HttpBaseClient$1/this$0 Lcom/common/android/utils/http/HttpBaseClient;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
iload 2
iflt L0
L1:
iconst_0
ireturn
L0:
aload 1
instanceof org/apache/http/NoHttpResponseException
ifeq L2
iconst_1
ireturn
L2:
aload 1
instanceof javax/net/ssl/SSLHandshakeException
ifne L1
aload 3
ldc "http.request"
invokeinterface org/apache/http/protocol/HttpContext/getAttribute(Ljava/lang/String;)Ljava/lang/Object; 1
checkcast org/apache/http/HttpRequest
instanceof org/apache/http/HttpEntityEnclosingRequest
ifne L1
iconst_1
ireturn
.limit locals 4
.limit stack 2
.end method
