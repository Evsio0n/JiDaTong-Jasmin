.bytecode 50.0
.class synchronized com/github/kevinsawicki/http/HttpRequest$4
.super java/lang/Object
.implements java/security/PrivilegedAction
.signature "Ljava/lang/Object;Ljava/security/PrivilegedAction<Ljava/lang/String;>;"
.enclosing method com/github/kevinsawicki/http/HttpRequest/setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.inner class inner com/github/kevinsawicki/http/HttpRequest$4

.field private final synthetic 'val$name' Ljava/lang/String;

.method <init>(Ljava/lang/String;)V
aload 0
aload 1
putfield com/github/kevinsawicki/http/HttpRequest$4/val$name Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic run()Ljava/lang/Object;
aload 0
invokevirtual com/github/kevinsawicki/http/HttpRequest$4/run()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public run()Ljava/lang/String;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$4/val$name Ljava/lang/String;
invokestatic java/lang/System/clearProperty(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
