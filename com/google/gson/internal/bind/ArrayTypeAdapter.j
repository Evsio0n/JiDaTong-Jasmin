.bytecode 50.0
.class public final synchronized com/google/gson/internal/bind/ArrayTypeAdapter
.super com/google/gson/TypeAdapter
.signature "<E:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<Ljava/lang/Object;>;"
.inner class static final inner com/google/gson/internal/bind/ArrayTypeAdapter$1

.field public static final 'FACTORY' Lcom/google/gson/TypeAdapterFactory;

.field private final 'componentType' Ljava/lang/Class; signature "Ljava/lang/Class<TE;>;"

.field private final 'componentTypeAdapter' Lcom/google/gson/TypeAdapter; signature "Lcom/google/gson/TypeAdapter<TE;>;"

.method static <clinit>()V
new com/google/gson/internal/bind/ArrayTypeAdapter$1
dup
invokespecial com/google/gson/internal/bind/ArrayTypeAdapter$1/<init>()V
putstatic com/google/gson/internal/bind/ArrayTypeAdapter/FACTORY Lcom/google/gson/TypeAdapterFactory;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Class;)V
.signature "(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter<TE;>;Ljava/lang/Class<TE;>;)V"
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
aload 0
new com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper
dup
aload 1
aload 2
aload 3
invokespecial com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/<init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
putfield com/google/gson/internal/bind/ArrayTypeAdapter/componentTypeAdapter Lcom/google/gson/TypeAdapter;
aload 0
aload 3
putfield com/google/gson/internal/bind/ArrayTypeAdapter/componentType Ljava/lang/Class;
return
.limit locals 4
.limit stack 6
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
if_acmpne L0
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextNull()V
aconst_null
astore 1
L1:
aload 1
areturn
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 1
invokevirtual com/google/gson/stream/JsonReader/beginArray()V
L2:
aload 1
invokevirtual com/google/gson/stream/JsonReader/hasNext()Z
ifeq L3
aload 4
aload 0
getfield com/google/gson/internal/bind/ArrayTypeAdapter/componentTypeAdapter Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
L3:
aload 1
invokevirtual com/google/gson/stream/JsonReader/endArray()V
aload 0
getfield com/google/gson/internal/bind/ArrayTypeAdapter/componentType Ljava/lang/Class;
aload 4
invokeinterface java/util/List/size()I 0
invokestatic java/lang/reflect/Array/newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
astore 3
iconst_0
istore 2
L4:
aload 3
astore 1
iload 2
aload 4
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 3
iload 2
aload 4
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokestatic java/lang/reflect/Array/set(Ljava/lang/Object;ILjava/lang/Object;)V
iload 2
iconst_1
iadd
istore 2
goto L4
.limit locals 5
.limit stack 4
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 2
ifnonnull L0
aload 1
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
pop
return
L0:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/beginArray()Lcom/google/gson/stream/JsonWriter;
pop
iconst_0
istore 3
aload 2
invokestatic java/lang/reflect/Array/getLength(Ljava/lang/Object;)I
istore 4
L1:
iload 3
iload 4
if_icmpge L2
aload 2
iload 3
invokestatic java/lang/reflect/Array/get(Ljava/lang/Object;I)Ljava/lang/Object;
astore 5
aload 0
getfield com/google/gson/internal/bind/ArrayTypeAdapter/componentTypeAdapter Lcom/google/gson/TypeAdapter;
aload 1
aload 5
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
iload 3
iconst_1
iadd
istore 3
goto L1
L2:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/endArray()Lcom/google/gson/stream/JsonWriter;
pop
return
.limit locals 6
.limit stack 3
.end method
