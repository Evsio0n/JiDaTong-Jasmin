.bytecode 50.0
.class synchronized com/google/gson/internal/ConstructorConstructor$5
.super java/lang/Object
.implements com/google/gson/internal/ObjectConstructor
.signature "Ljava/lang/Object;Lcom/google/gson/internal/ObjectConstructor<TT;>;"
.enclosing method com/google/gson/internal/ConstructorConstructor/newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
.inner class inner com/google/gson/internal/ConstructorConstructor$5

.field final synthetic 'this$0' Lcom/google/gson/internal/ConstructorConstructor;

.field final synthetic 'val$type' Ljava/lang/reflect/Type;

.method <init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V
aload 0
aload 1
putfield com/google/gson/internal/ConstructorConstructor$5/this$0 Lcom/google/gson/internal/ConstructorConstructor;
aload 0
aload 2
putfield com/google/gson/internal/ConstructorConstructor$5/val$type Ljava/lang/reflect/Type;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public construct()Ljava/lang/Object;
.signature "()TT;"
aload 0
getfield com/google/gson/internal/ConstructorConstructor$5/val$type Ljava/lang/reflect/Type;
instanceof java/lang/reflect/ParameterizedType
ifeq L0
aload 0
getfield com/google/gson/internal/ConstructorConstructor$5/val$type Ljava/lang/reflect/Type;
checkcast java/lang/reflect/ParameterizedType
invokeinterface java/lang/reflect/ParameterizedType/getActualTypeArguments()[Ljava/lang/reflect/Type; 0
iconst_0
aaload
astore 1
aload 1
instanceof java/lang/Class
ifeq L1
aload 1
checkcast java/lang/Class
invokestatic java/util/EnumSet/noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;
areturn
L1:
new com/google/gson/JsonIOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Invalid EnumSet type: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/ConstructorConstructor$5/val$type Ljava/lang/reflect/Type;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/google/gson/JsonIOException/<init>(Ljava/lang/String;)V
athrow
L0:
new com/google/gson/JsonIOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Invalid EnumSet type: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/ConstructorConstructor$5/val$type Ljava/lang/reflect/Type;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/google/gson/JsonIOException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 4
.end method
