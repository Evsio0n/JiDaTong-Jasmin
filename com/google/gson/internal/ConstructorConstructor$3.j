.bytecode 50.0
.class synchronized com/google/gson/internal/ConstructorConstructor$3
.super java/lang/Object
.implements com/google/gson/internal/ObjectConstructor
.signature "Ljava/lang/Object;Lcom/google/gson/internal/ObjectConstructor<TT;>;"
.enclosing method com/google/gson/internal/ConstructorConstructor/newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
.inner class inner com/google/gson/internal/ConstructorConstructor$3

.field final synthetic 'this$0' Lcom/google/gson/internal/ConstructorConstructor;

.field final synthetic 'val$constructor' Ljava/lang/reflect/Constructor;

.method <init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
aload 0
aload 1
putfield com/google/gson/internal/ConstructorConstructor$3/this$0 Lcom/google/gson/internal/ConstructorConstructor;
aload 0
aload 2
putfield com/google/gson/internal/ConstructorConstructor$3/val$constructor Ljava/lang/reflect/Constructor;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public construct()Ljava/lang/Object;
.signature "()TT;"
.catch java/lang/InstantiationException from L0 to L1 using L2
.catch java/lang/reflect/InvocationTargetException from L0 to L1 using L3
.catch java/lang/IllegalAccessException from L0 to L1 using L4
L0:
aload 0
getfield com/google/gson/internal/ConstructorConstructor$3/val$constructor Ljava/lang/reflect/Constructor;
aconst_null
invokevirtual java/lang/reflect/Constructor/newInstance([Ljava/lang/Object;)Ljava/lang/Object;
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
ldc "Failed to invoke "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/ConstructorConstructor$3/val$constructor Ljava/lang/reflect/Constructor;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " with no args"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L3:
astore 1
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to invoke "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/ConstructorConstructor$3/val$constructor Ljava/lang/reflect/Constructor;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " with no args"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokevirtual java/lang/reflect/InvocationTargetException/getTargetException()Ljava/lang/Throwable;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L4:
astore 1
new java/lang/AssertionError
dup
aload 1
invokespecial java/lang/AssertionError/<init>(Ljava/lang/Object;)V
athrow
.limit locals 2
.limit stack 4
.end method
