.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$22
.super java/lang/Object
.implements com/google/gson/TypeAdapterFactory
.enclosing method com/google/gson/internal/bind/TypeAdapters
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$22
.inner class inner com/google/gson/internal/bind/TypeAdapters$22$1

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
ldc java/sql/Timestamp
if_acmpeq L0
aconst_null
areturn
L0:
new com/google/gson/internal/bind/TypeAdapters$22$1
dup
aload 0
aload 1
ldc java/util/Date
invokevirtual com/google/gson/Gson/getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;
invokespecial com/google/gson/internal/bind/TypeAdapters$22$1/<init>(Lcom/google/gson/internal/bind/TypeAdapters$22;Lcom/google/gson/TypeAdapter;)V
areturn
.limit locals 3
.limit stack 5
.end method
