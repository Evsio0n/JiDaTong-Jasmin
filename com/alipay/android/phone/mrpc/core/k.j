.bytecode 50.0
.class final synchronized com/alipay/android/phone/mrpc/core/k
.super org/apache/http/impl/client/DefaultHttpClient

.field final synthetic 'a' Lcom/alipay/android/phone/mrpc/core/i;

.method <init>(Lcom/alipay/android/phone/mrpc/core/i;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/k/a Lcom/alipay/android/phone/mrpc/core/i;
aload 0
aload 2
aload 3
invokespecial org/apache/http/impl/client/DefaultHttpClient/<init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
return
.limit locals 4
.limit stack 3
.end method

.method protected final createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
new com/alipay/android/phone/mrpc/core/m
dup
aload 0
invokespecial com/alipay/android/phone/mrpc/core/m/<init>(Lcom/alipay/android/phone/mrpc/core/k;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method protected final createHttpContext()Lorg/apache/http/protocol/HttpContext;
new org/apache/http/protocol/BasicHttpContext
dup
invokespecial org/apache/http/protocol/BasicHttpContext/<init>()V
astore 1
aload 1
ldc "http.authscheme-registry"
aload 0
invokevirtual com/alipay/android/phone/mrpc/core/k/getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;
invokeinterface org/apache/http/protocol/HttpContext/setAttribute(Ljava/lang/String;Ljava/lang/Object;)V 2
aload 1
ldc "http.cookiespec-registry"
aload 0
invokevirtual com/alipay/android/phone/mrpc/core/k/getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;
invokeinterface org/apache/http/protocol/HttpContext/setAttribute(Ljava/lang/String;Ljava/lang/Object;)V 2
aload 1
ldc "http.auth.credentials-provider"
aload 0
invokevirtual com/alipay/android/phone/mrpc/core/k/getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
invokeinterface org/apache/http/protocol/HttpContext/setAttribute(Ljava/lang/String;Ljava/lang/Object;)V 2
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method protected final createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
aload 0
invokespecial org/apache/http/impl/client/DefaultHttpClient/createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
astore 1
aload 1
invokestatic com/alipay/android/phone/mrpc/core/i/a()Lorg/apache/http/HttpRequestInterceptor;
invokevirtual org/apache/http/protocol/BasicHttpProcessor/addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
aload 1
new com/alipay/android/phone/mrpc/core/i$a
dup
aload 0
getfield com/alipay/android/phone/mrpc/core/k/a Lcom/alipay/android/phone/mrpc/core/i;
iconst_0
invokespecial com/alipay/android/phone/mrpc/core/i$a/<init>(Lcom/alipay/android/phone/mrpc/core/i;B)V
invokevirtual org/apache/http/protocol/BasicHttpProcessor/addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
aload 1
areturn
.limit locals 2
.limit stack 5
.end method

.method protected final createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
new com/alipay/android/phone/mrpc/core/l
dup
aload 0
invokespecial com/alipay/android/phone/mrpc/core/l/<init>(Lcom/alipay/android/phone/mrpc/core/k;)V
areturn
.limit locals 1
.limit stack 3
.end method
