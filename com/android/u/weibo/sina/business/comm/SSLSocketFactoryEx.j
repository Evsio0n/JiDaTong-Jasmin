.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/comm/SSLSocketFactoryEx
.super org/apache/http/conn/ssl/SSLSocketFactory
.inner class inner com/android/u/weibo/sina/business/comm/SSLSocketFactoryEx$1

.field 'sslContext' Ljavax/net/ssl/SSLContext;

.method public <init>(Ljava/security/KeyStore;)V
.throws java/security/NoSuchAlgorithmException
.throws java/security/KeyManagementException
.throws java/security/KeyStoreException
.throws java/security/UnrecoverableKeyException
aload 0
aload 1
invokespecial org/apache/http/conn/ssl/SSLSocketFactory/<init>(Ljava/security/KeyStore;)V
aload 0
ldc "TLS"
invokestatic javax/net/ssl/SSLContext/getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
putfield com/android/u/weibo/sina/business/comm/SSLSocketFactoryEx/sslContext Ljavax/net/ssl/SSLContext;
new com/android/u/weibo/sina/business/comm/SSLSocketFactoryEx$1
dup
aload 0
invokespecial com/android/u/weibo/sina/business/comm/SSLSocketFactoryEx$1/<init>(Lcom/android/u/weibo/sina/business/comm/SSLSocketFactoryEx;)V
astore 1
aload 0
getfield com/android/u/weibo/sina/business/comm/SSLSocketFactoryEx/sslContext Ljavax/net/ssl/SSLContext;
aconst_null
iconst_1
anewarray javax/net/ssl/TrustManager
dup
iconst_0
aload 1
aastore
aconst_null
invokevirtual javax/net/ssl/SSLContext/init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
return
.limit locals 2
.limit stack 6
.end method

.method public createSocket()Ljava/net/Socket;
.throws java/io/IOException
aload 0
getfield com/android/u/weibo/sina/business/comm/SSLSocketFactoryEx/sslContext Ljavax/net/ssl/SSLContext;
invokevirtual javax/net/ssl/SSLContext/getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
invokevirtual javax/net/ssl/SSLSocketFactory/createSocket()Ljava/net/Socket;
areturn
.limit locals 1
.limit stack 1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
.throws java/io/IOException
.throws java/net/UnknownHostException
aload 0
getfield com/android/u/weibo/sina/business/comm/SSLSocketFactoryEx/sslContext Ljavax/net/ssl/SSLContext;
invokevirtual javax/net/ssl/SSLContext/getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
aload 1
aload 2
iload 3
iload 4
invokevirtual javax/net/ssl/SSLSocketFactory/createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
areturn
.limit locals 5
.limit stack 5
.end method
