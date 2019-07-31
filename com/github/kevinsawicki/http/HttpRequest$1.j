.bytecode 50.0
.class synchronized com/github/kevinsawicki/http/HttpRequest$1
.super java/lang/Object
.implements javax/net/ssl/X509TrustManager
.enclosing method com/github/kevinsawicki/http/HttpRequest/getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;
.inner class inner com/github/kevinsawicki/http/HttpRequest$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
iconst_0
anewarray java/security/cert/X509Certificate
areturn
.limit locals 1
.limit stack 1
.end method
