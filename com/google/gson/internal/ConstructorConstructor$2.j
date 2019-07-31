.bytecode 50.0
.class synchronized com/google/gson/internal/ConstructorConstructor$2
.super java/lang/Object
.implements com/google/gson/internal/ObjectConstructor
.signature "Ljava/lang/Object;Lcom/google/gson/internal/ObjectConstructor<TT;>;"
.enclosing method com/google/gson/internal/ConstructorConstructor/get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
.inner class inner com/google/gson/internal/ConstructorConstructor$2

.field final synthetic 'this$0' Lcom/google/gson/internal/ConstructorConstructor;

.field final synthetic 'val$rawTypeCreator' Lcom/google/gson/InstanceCreator;

.field final synthetic 'val$type' Ljava/lang/reflect/Type;

.method <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
aload 0
aload 1
putfield com/google/gson/internal/ConstructorConstructor$2/this$0 Lcom/google/gson/internal/ConstructorConstructor;
aload 0
aload 2
putfield com/google/gson/internal/ConstructorConstructor$2/val$rawTypeCreator Lcom/google/gson/InstanceCreator;
aload 0
aload 3
putfield com/google/gson/internal/ConstructorConstructor$2/val$type Ljava/lang/reflect/Type;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public construct()Ljava/lang/Object;
.signature "()TT;"
aload 0
getfield com/google/gson/internal/ConstructorConstructor$2/val$rawTypeCreator Lcom/google/gson/InstanceCreator;
aload 0
getfield com/google/gson/internal/ConstructorConstructor$2/val$type Ljava/lang/reflect/Type;
invokeinterface com/google/gson/InstanceCreator/createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object; 1
areturn
.limit locals 1
.limit stack 2
.end method
