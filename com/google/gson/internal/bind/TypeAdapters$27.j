.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$27
.super java/lang/Object
.implements com/google/gson/TypeAdapterFactory
.enclosing method com/google/gson/internal/bind/TypeAdapters/newFactory(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$27

.field final synthetic 'val$type' Lcom/google/gson/reflect/TypeToken;

.field final synthetic 'val$typeAdapter' Lcom/google/gson/TypeAdapter;

.method <init>(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapter;)V
aload 0
aload 1
putfield com/google/gson/internal/bind/TypeAdapters$27/val$type Lcom/google/gson/reflect/TypeToken;
aload 0
aload 2
putfield com/google/gson/internal/bind/TypeAdapters$27/val$typeAdapter Lcom/google/gson/TypeAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;"
aload 2
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$27/val$type Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/reflect/TypeToken/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$27/val$typeAdapter Lcom/google/gson/TypeAdapter;
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method
