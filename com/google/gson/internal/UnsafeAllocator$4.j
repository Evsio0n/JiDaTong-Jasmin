.bytecode 50.0
.class final synchronized com/google/gson/internal/UnsafeAllocator$4
.super com/google/gson/internal/UnsafeAllocator
.enclosing method com/google/gson/internal/UnsafeAllocator/create()Lcom/google/gson/internal/UnsafeAllocator;
.inner class static final inner com/google/gson/internal/UnsafeAllocator$4

.method <init>()V
aload 0
invokespecial com/google/gson/internal/UnsafeAllocator/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;"
new java/lang/UnsupportedOperationException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Cannot allocate "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 4
.end method
