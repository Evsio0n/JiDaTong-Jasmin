.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$26
.super java/lang/Object
.implements com/google/gson/TypeAdapterFactory
.enclosing method com/google/gson/internal/bind/TypeAdapters/newEnumTypeHierarchyFactory()Lcom/google/gson/TypeAdapterFactory;
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$26

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
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
astore 2
ldc java/lang/Enum
aload 2
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L0
aload 2
ldc java/lang/Enum
if_acmpne L1
L0:
aconst_null
areturn
L1:
aload 2
astore 1
aload 2
invokevirtual java/lang/Class/isEnum()Z
ifne L2
aload 2
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
astore 1
L2:
new com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter
dup
aload 1
invokespecial com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter/<init>(Ljava/lang/Class;)V
areturn
.limit locals 3
.limit stack 3
.end method
