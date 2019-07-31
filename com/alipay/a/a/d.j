.bytecode 50.0
.class public final synchronized com/alipay/a/a/d
.super java/lang/Object
.implements com/alipay/a/a/i
.implements com/alipay/a/a/j

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
aload 1
checkcast java/lang/Enum
invokevirtual java/lang/Enum/name()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
aload 2
checkcast java/lang/Class
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
areturn
.limit locals 3
.limit stack 2
.end method

.method public final a(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
ldc java/lang/Enum
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ireturn
.limit locals 2
.limit stack 2
.end method
