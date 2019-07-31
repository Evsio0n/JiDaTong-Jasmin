.bytecode 50.0
.class public final synchronized com/google/gson/internal/$Gson$Preconditions
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static checkArgument(Z)V
iload 0
ifne L0
new java/lang/IllegalArgumentException
dup
invokespecial java/lang/IllegalArgumentException/<init>()V
athrow
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(TT;)TT;"
aload 0
ifnonnull L0
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L0:
aload 0
areturn
.limit locals 1
.limit stack 2
.end method
