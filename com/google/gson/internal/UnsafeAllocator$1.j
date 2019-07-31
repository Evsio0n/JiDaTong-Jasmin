.bytecode 50.0
.class final synchronized com/google/gson/internal/UnsafeAllocator$1
.super com/google/gson/internal/UnsafeAllocator
.enclosing method com/google/gson/internal/UnsafeAllocator/create()Lcom/google/gson/internal/UnsafeAllocator;
.inner class static final inner com/google/gson/internal/UnsafeAllocator$1

.field final synthetic 'val$allocateInstance' Ljava/lang/reflect/Method;

.field final synthetic 'val$unsafe' Ljava/lang/Object;

.method <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
aload 0
aload 1
putfield com/google/gson/internal/UnsafeAllocator$1/val$allocateInstance Ljava/lang/reflect/Method;
aload 0
aload 2
putfield com/google/gson/internal/UnsafeAllocator$1/val$unsafe Ljava/lang/Object;
aload 0
invokespecial com/google/gson/internal/UnsafeAllocator/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;"
.throws java/lang/Exception
aload 0
getfield com/google/gson/internal/UnsafeAllocator$1/val$allocateInstance Ljava/lang/reflect/Method;
aload 0
getfield com/google/gson/internal/UnsafeAllocator$1/val$unsafe Ljava/lang/Object;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 6
.end method
