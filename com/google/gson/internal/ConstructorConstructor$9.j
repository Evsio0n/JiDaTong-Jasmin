.bytecode 50.0
.class synchronized com/google/gson/internal/ConstructorConstructor$9
.super java/lang/Object
.implements com/google/gson/internal/ObjectConstructor
.signature "Ljava/lang/Object;Lcom/google/gson/internal/ObjectConstructor<TT;>;"
.enclosing method com/google/gson/internal/ConstructorConstructor/newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
.inner class inner com/google/gson/internal/ConstructorConstructor$9

.field final synthetic 'this$0' Lcom/google/gson/internal/ConstructorConstructor;

.method <init>(Lcom/google/gson/internal/ConstructorConstructor;)V
aload 0
aload 1
putfield com/google/gson/internal/ConstructorConstructor$9/this$0 Lcom/google/gson/internal/ConstructorConstructor;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public construct()Ljava/lang/Object;
.signature "()TT;"
new java/util/TreeMap
dup
invokespecial java/util/TreeMap/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method
