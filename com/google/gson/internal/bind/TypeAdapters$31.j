.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$31
.super java/lang/Object
.implements com/google/gson/TypeAdapterFactory
.enclosing method com/google/gson/internal/bind/TypeAdapters/newTypeHierarchyFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$31

.field final synthetic 'val$clazz' Ljava/lang/Class;

.field final synthetic 'val$typeAdapter' Lcom/google/gson/TypeAdapter;

.method <init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V
aload 0
aload 1
putfield com/google/gson/internal/bind/TypeAdapters$31/val$clazz Ljava/lang/Class;
aload 0
aload 2
putfield com/google/gson/internal/bind/TypeAdapters$31/val$typeAdapter Lcom/google/gson/TypeAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;"
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$31/val$clazz Ljava/lang/Class;
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L0
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$31/val$typeAdapter Lcom/google/gson/TypeAdapter;
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Factory[typeHierarchy="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$31/val$clazz Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",adapter="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$31/val$typeAdapter Lcom/google/gson/TypeAdapter;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
