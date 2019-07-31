.bytecode 50.0
.class synchronized com/hisun/b2c/api/core/NetworkManager$1
.super java/lang/Object
.implements javax/net/ssl/HostnameVerifier
.enclosing method com/hisun/b2c/api/core/NetworkManager/setDefaultHostnameVerifier()V
.inner class inner com/hisun/b2c/api/core/NetworkManager$1

.field final synthetic 'this$0' Lcom/hisun/b2c/api/core/NetworkManager;

.method <init>(Lcom/hisun/b2c/api/core/NetworkManager;)V
aload 0
aload 1
putfield com/hisun/b2c/api/core/NetworkManager$1/this$0 Lcom/hisun/b2c/api/core/NetworkManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
iconst_1
ireturn
.limit locals 3
.limit stack 1
.end method
