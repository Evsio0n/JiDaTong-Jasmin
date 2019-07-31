.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter
.super com/google/gson/TypeAdapter
.signature "<E:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<Ljava/util/Collection<TE;>;>;"
.inner class private static final Adapter inner com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter outer com/google/gson/internal/bind/CollectionTypeAdapterFactory

.field private final 'constructor' Lcom/google/gson/internal/ObjectConstructor; signature "Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;"

.field private final 'elementTypeAdapter' Lcom/google/gson/TypeAdapter; signature "Lcom/google/gson/TypeAdapter<TE;>;"

.method public <init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V
.signature "(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TE;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;)V"
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
aload 0
new com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper
dup
aload 1
aload 3
aload 2
invokespecial com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/<init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
putfield com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter/elementTypeAdapter Lcom/google/gson/TypeAdapter;
aload 0
aload 4
putfield com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter/constructor Lcom/google/gson/internal/ObjectConstructor;
return
.limit locals 5
.limit stack 6
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Collection;
areturn
.limit locals 2
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Collection;
.signature "(Lcom/google/gson/stream/JsonReader;)Ljava/util/Collection<TE;>;"
.throws java/io/IOException
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
if_acmpne L0
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextNull()V
aconst_null
areturn
L0:
aload 0
getfield com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter/constructor Lcom/google/gson/internal/ObjectConstructor;
invokeinterface com/google/gson/internal/ObjectConstructor/construct()Ljava/lang/Object; 0
checkcast java/util/Collection
astore 2
aload 1
invokevirtual com/google/gson/stream/JsonReader/beginArray()V
L1:
aload 1
invokevirtual com/google/gson/stream/JsonReader/hasNext()Z
ifeq L2
aload 2
aload 0
getfield com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter/elementTypeAdapter Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
invokeinterface java/util/Collection/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
aload 1
invokevirtual com/google/gson/stream/JsonReader/endArray()V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/util/Collection
invokevirtual com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Collection;)V
return
.limit locals 3
.limit stack 3
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Collection;)V
.signature "(Lcom/google/gson/stream/JsonWriter;Ljava/util/Collection<TE;>;)V"
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
aload 2
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
astore 3
aload 0
getfield com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter/elementTypeAdapter Lcom/google/gson/TypeAdapter;
aload 1
aload 3
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
goto L1
L2:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/endArray()Lcom/google/gson/stream/JsonWriter;
pop
return
.limit locals 4
.limit stack 3
.end method
