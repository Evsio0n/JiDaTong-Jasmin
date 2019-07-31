.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TimeTypeAdapter$1
.super java/lang/Object
.implements com/google/gson/TypeAdapterFactory
.enclosing method com/google/gson/internal/bind/TimeTypeAdapter
.inner class static final inner com/google/gson/internal/bind/TimeTypeAdapter$1

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
ldc java/sql/Time
if_acmpne L0
new com/google/gson/internal/bind/TimeTypeAdapter
dup
invokespecial com/google/gson/internal/bind/TimeTypeAdapter/<init>()V
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method
