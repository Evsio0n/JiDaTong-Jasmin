.bytecode 50.0
.class public synchronized abstract com/google/gson/internal/UnsafeAllocator
.super java/lang/Object
.inner class static final inner com/google/gson/internal/UnsafeAllocator$1
.inner class static final inner com/google/gson/internal/UnsafeAllocator$2
.inner class static final inner com/google/gson/internal/UnsafeAllocator$3
.inner class static final inner com/google/gson/internal/UnsafeAllocator$4

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static create()Lcom/google/gson/internal/UnsafeAllocator;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch java/lang/Exception from L6 to L7 using L8
L0:
ldc "sun.misc.Unsafe"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
astore 1
aload 1
ldc "theUnsafe"
invokevirtual java/lang/Class/getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 2
aload 2
iconst_1
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
aload 2
aconst_null
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 2
new com/google/gson/internal/UnsafeAllocator$1
dup
aload 1
ldc "allocateInstance"
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/Class
aastore
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
aload 2
invokespecial com/google/gson/internal/UnsafeAllocator$1/<init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
L3:
ldc java/io/ObjectInputStream
ldc "newInstance"
iconst_2
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/Class
aastore
dup
iconst_1
ldc java/lang/Class
aastore
invokevirtual java/lang/Class/getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 1
aload 1
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
new com/google/gson/internal/UnsafeAllocator$2
dup
aload 1
invokespecial com/google/gson/internal/UnsafeAllocator$2/<init>(Ljava/lang/reflect/Method;)V
astore 1
L4:
aload 1
areturn
L5:
astore 1
L6:
ldc java/io/ObjectStreamClass
ldc "getConstructorId"
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/Class
aastore
invokevirtual java/lang/Class/getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 1
aload 1
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
aload 1
aconst_null
iconst_1
anewarray java/lang/Object
dup
iconst_0
ldc java/lang/Object
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 0
ldc java/io/ObjectStreamClass
ldc "newInstance"
iconst_2
anewarray java/lang/Class
dup
iconst_0
ldc java/lang/Class
aastore
dup
iconst_1
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
aastore
invokevirtual java/lang/Class/getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 1
aload 1
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
new com/google/gson/internal/UnsafeAllocator$3
dup
aload 1
iload 0
invokespecial com/google/gson/internal/UnsafeAllocator$3/<init>(Ljava/lang/reflect/Method;I)V
astore 1
L7:
aload 1
areturn
L8:
astore 1
new com/google/gson/internal/UnsafeAllocator$4
dup
invokespecial com/google/gson/internal/UnsafeAllocator$4/<init>()V
areturn
.limit locals 3
.limit stack 8
.end method

.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;"
.throws java/lang/Exception
.end method
