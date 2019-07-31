.bytecode 50.0
.class synchronized com/bestpay/util/Net$SSLSocketFactoryEx$1
.super java/lang/Object
.implements javax/net/ssl/X509TrustManager
.enclosing method com/bestpay/util/Net$SSLSocketFactoryEx/<init>(Ljava/security/KeyStore;)V
.inner class public static SSLSocketFactoryEx inner com/bestpay/util/Net$SSLSocketFactoryEx outer com/bestpay/util/Net
.inner class inner com/bestpay/util/Net$SSLSocketFactoryEx$1

.field final synthetic 'this$1' Lcom/bestpay/util/Net$SSLSocketFactoryEx;

.method <init>(Lcom/bestpay/util/Net$SSLSocketFactoryEx;)V
aload 0
aload 1
putfield com/bestpay/util/Net$SSLSocketFactoryEx$1/this$1 Lcom/bestpay/util/Net$SSLSocketFactoryEx;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
.throws java/security/cert/CertificateException
return
.limit locals 3
.limit stack 0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
.throws java/security/cert/CertificateException
return
.limit locals 3
.limit stack 0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method
