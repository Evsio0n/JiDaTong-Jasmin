.bytecode 50.0
.class public final synchronized com/alipay/a/a/c
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
checkcast java/util/Date
invokevirtual java/util/Date/getTime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
.limit locals 2
.limit stack 2
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
new java/util/Date
dup
aload 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokespecial java/util/Date/<init>(J)V
areturn
.limit locals 3
.limit stack 4
.end method

.method public final a(Ljava/lang/Class;)Z
.signature "(Ljava/lang/Class<*>;)Z"
ldc java/util/Date
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ireturn
.limit locals 2
.limit stack 2
.end method
