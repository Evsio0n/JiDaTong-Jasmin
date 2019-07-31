.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/download/JmuTrustManager
.super java/lang/Object
.implements javax/net/ssl/TrustManager
.implements javax/net/ssl/X509TrustManager

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
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

.method public isClientTrusted([Ljava/security/cert/X509Certificate;)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public isServerTrusted([Ljava/security/cert/X509Certificate;)Z
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method
