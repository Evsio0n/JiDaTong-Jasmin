.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/ArrayTypeAdapter$1
.super java/lang/Object
.implements com/google/gson/TypeAdapterFactory
.enclosing method com/google/gson/internal/bind/ArrayTypeAdapter
.inner class static final inner com/google/gson/internal/bind/ArrayTypeAdapter$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;"
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getType()Ljava/lang/reflect/Type;
astore 2
aload 2
instanceof java/lang/reflect/GenericArrayType
ifne L0
aload 2
instanceof java/lang/Class
ifeq L1
aload 2
checkcast java/lang/Class
invokevirtual java/lang/Class/isArray()Z
ifne L0
L1:
aconst_null
areturn
L0:
aload 2
invokestatic com/google/gson/internal/$Gson$Types/getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
astore 2
new com/google/gson/internal/bind/ArrayTypeAdapter
dup
aload 1
aload 1
aload 2
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/Gson/getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
aload 2
invokestatic com/google/gson/internal/$Gson$Types/getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
invokespecial com/google/gson/internal/bind/ArrayTypeAdapter/<init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Class;)V
areturn
.limit locals 3
.limit stack 5
.end method
