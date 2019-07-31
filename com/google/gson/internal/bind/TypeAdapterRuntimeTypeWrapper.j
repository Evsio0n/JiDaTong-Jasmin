.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper
.super com/google/gson/TypeAdapter
.signature "<T:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<TT;>;"

.field private final 'context' Lcom/google/gson/Gson;

.field private final 'delegate' Lcom/google/gson/TypeAdapter; signature "Lcom/google/gson/TypeAdapter<TT;>;"

.field private final 'type' Ljava/lang/reflect/Type;

.method <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
.signature "(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter<TT;>;Ljava/lang/reflect/Type;)V"
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
aload 0
aload 1
putfield com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/context Lcom/google/gson/Gson;
aload 0
aload 2
putfield com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/delegate Lcom/google/gson/TypeAdapter;
aload 0
aload 3
putfield com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/type Ljava/lang/reflect/Type;
return
.limit locals 4
.limit stack 2
.end method

.method private getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
aload 1
astore 3
aload 2
ifnull L0
aload 1
ldc java/lang/Object
if_acmpeq L1
aload 1
instanceof java/lang/reflect/TypeVariable
ifne L1
aload 1
astore 3
aload 1
instanceof java/lang/Class
ifeq L0
L1:
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 3
L0:
aload 3
areturn
.limit locals 4
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.signature "(Lcom/google/gson/stream/JsonReader;)TT;"
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/delegate Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.signature "(Lcom/google/gson/stream/JsonWriter;TT;)V"
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/delegate Lcom/google/gson/TypeAdapter;
astore 3
aload 0
aload 0
getfield com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/type Ljava/lang/reflect/Type;
aload 2
invokespecial com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
astore 4
aload 4
aload 0
getfield com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/type Ljava/lang/reflect/Type;
if_acmpeq L0
aload 0
getfield com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/context Lcom/google/gson/Gson;
aload 4
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/Gson/getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
astore 3
aload 3
instanceof com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter
ifne L1
L0:
aload 3
aload 1
aload 2
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
return
L1:
aload 0
getfield com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/delegate Lcom/google/gson/TypeAdapter;
instanceof com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter
ifne L2
aload 0
getfield com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/delegate Lcom/google/gson/TypeAdapter;
astore 3
goto L0
L2:
goto L0
.limit locals 5
.limit stack 3
.end method
