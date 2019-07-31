.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/localstorage/d
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
aload 1
invokestatic com/alipay/security/mobile/module/localstorage/util/a/a(Ljava/lang/String;)Z
ifne L0
aload 0
aload 1
invokestatic java/lang/System/setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
L0:
return
.limit locals 2
.limit stack 2
.end method
