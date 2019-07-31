.bytecode 50.0
.class final synchronized com/flurry/android/aj
.super org/apache/http/conn/ssl/SSLSocketFactory

.field private 'a' Ljavax/net/ssl/SSLContext;

.method public <init>(Lcom/flurry/android/FlurryAgent;Ljava/security/KeyStore;)V
aload 0
aload 2
invokespecial org/apache/http/conn/ssl/SSLSocketFactory/<init>(Ljava/security/KeyStore;)V
aload 0
ldc "TLS"
invokestatic javax/net/ssl/SSLContext/getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
putfield com/flurry/android/aj/a Ljavax/net/ssl/SSLContext;
new com/flurry/android/n
dup
invokespecial com/flurry/android/n/<init>()V
astore 1
aload 0
getfield com/flurry/android/aj/a Ljavax/net/ssl/SSLContext;
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
.limit locals 3
.limit stack 6
.end method

.method public final createSocket()Ljava/net/Socket;
aload 0
getfield com/flurry/android/aj/a Ljavax/net/ssl/SSLContext;
invokevirtual javax/net/ssl/SSLContext/getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
invokevirtual javax/net/ssl/SSLSocketFactory/createSocket()Ljava/net/Socket;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
aload 0
getfield com/flurry/android/aj/a Ljavax/net/ssl/SSLContext;
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
