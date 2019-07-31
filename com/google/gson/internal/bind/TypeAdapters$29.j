.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$29
.super java/lang/Object
.implements com/google/gson/TypeAdapterFactory
.enclosing method com/google/gson/internal/bind/TypeAdapters/newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$29

.field final synthetic 'val$boxed' Ljava/lang/Class;

.field final synthetic 'val$typeAdapter' Lcom/google/gson/TypeAdapter;

.field final synthetic 'val$unboxed' Ljava/lang/Class;

.method <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V
aload 0
aload 1
putfield com/google/gson/internal/bind/TypeAdapters$29/val$unboxed Ljava/lang/Class;
aload 0
aload 2
putfield com/google/gson/internal/bind/TypeAdapters$29/val$boxed Ljava/lang/Class;
aload 0
aload 3
putfield com/google/gson/internal/bind/TypeAdapters$29/val$typeAdapter Lcom/google/gson/TypeAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;"
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
astore 1
aload 1
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$29/val$unboxed Ljava/lang/Class;
if_acmpeq L0
aload 1
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$29/val$boxed Ljava/lang/Class;
if_acmpne L1
L0:
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$29/val$typeAdapter Lcom/google/gson/TypeAdapter;
areturn
L1:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Factory[type="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$29/val$boxed Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "+"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$29/val$unboxed Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ",adapter="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/bind/TypeAdapters$29/val$typeAdapter Lcom/google/gson/TypeAdapter;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
