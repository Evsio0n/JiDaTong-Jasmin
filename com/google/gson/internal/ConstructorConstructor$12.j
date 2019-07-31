.bytecode 50.0
.class synchronized com/google/gson/internal/ConstructorConstructor$12
.super java/lang/Object
.implements com/google/gson/internal/ObjectConstructor
.signature "Ljava/lang/Object;Lcom/google/gson/internal/ObjectConstructor<TT;>;"
.enclosing method com/google/gson/internal/ConstructorConstructor/newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
.inner class inner com/google/gson/internal/ConstructorConstructor$12

.field final synthetic 'this$0' Lcom/google/gson/internal/ConstructorConstructor;

.field private final 'unsafeAllocator' Lcom/google/gson/internal/UnsafeAllocator;

.field final synthetic 'val$rawType' Ljava/lang/Class;

.field final synthetic 'val$type' Ljava/lang/reflect/Type;

.method <init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
aload 0
aload 1
putfield com/google/gson/internal/ConstructorConstructor$12/this$0 Lcom/google/gson/internal/ConstructorConstructor;
aload 0
aload 2
putfield com/google/gson/internal/ConstructorConstructor$12/val$rawType Ljava/lang/Class;
aload 0
aload 3
putfield com/google/gson/internal/ConstructorConstructor$12/val$type Ljava/lang/reflect/Type;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic com/google/gson/internal/UnsafeAllocator/create()Lcom/google/gson/internal/UnsafeAllocator;
putfield com/google/gson/internal/ConstructorConstructor$12/unsafeAllocator Lcom/google/gson/internal/UnsafeAllocator;
return
.limit locals 4
.limit stack 2
.end method

.method public construct()Ljava/lang/Object;
.signature "()TT;"
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/google/gson/internal/ConstructorConstructor$12/unsafeAllocator Lcom/google/gson/internal/UnsafeAllocator;
aload 0
getfield com/google/gson/internal/ConstructorConstructor$12/val$rawType Ljava/lang/Class;
invokevirtual com/google/gson/internal/UnsafeAllocator/newInstance(Ljava/lang/Class;)Ljava/lang/Object;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unable to invoke no-args constructor for "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/ConstructorConstructor$12/val$type Ljava/lang/reflect/Type;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ". "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "Register an InstanceCreator with Gson for this type may fix this problem."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
.limit locals 2
.limit stack 4
.end method
