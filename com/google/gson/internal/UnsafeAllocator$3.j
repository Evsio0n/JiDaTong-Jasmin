.bytecode 50.0
.class final synchronized com/google/gson/internal/UnsafeAllocator$3
.super com/google/gson/internal/UnsafeAllocator
.enclosing method com/google/gson/internal/UnsafeAllocator/create()Lcom/google/gson/internal/UnsafeAllocator;
.inner class static final inner com/google/gson/internal/UnsafeAllocator$3

.field final synthetic 'val$constructorId' I

.field final synthetic 'val$newInstance' Ljava/lang/reflect/Method;

.method <init>(Ljava/lang/reflect/Method;I)V
aload 0
aload 1
putfield com/google/gson/internal/UnsafeAllocator$3/val$newInstance Ljava/lang/reflect/Method;
aload 0
iload 2
putfield com/google/gson/internal/UnsafeAllocator$3/val$constructorId I
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
getfield com/google/gson/internal/UnsafeAllocator$3/val$newInstance Ljava/lang/reflect/Method;
aconst_null
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 0
getfield com/google/gson/internal/UnsafeAllocator$3/val$constructorId I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 6
.end method
