.bytecode 50.0
.class public synchronized com/common/android/utils/http/HttpPatch
.super org/apache/http/client/methods/HttpPost

.field public static final 'METHOD_NAME' Ljava/lang/String; = "PATCH"

.method public <init>()V
aload 0
invokespecial org/apache/http/client/methods/HttpPost/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial org/apache/http/client/methods/HttpPost/<init>()V
aload 0
aload 1
invokestatic java/net/URI/create(Ljava/lang/String;)Ljava/net/URI;
invokevirtual com/common/android/utils/http/HttpPatch/setURI(Ljava/net/URI;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Ljava/net/URI;)V
aload 0
invokespecial org/apache/http/client/methods/HttpPost/<init>()V
aload 0
aload 1
invokevirtual com/common/android/utils/http/HttpPatch/setURI(Ljava/net/URI;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getMethod()Ljava/lang/String;
ldc "PATCH"
areturn
.limit locals 1
.limit stack 1
.end method
