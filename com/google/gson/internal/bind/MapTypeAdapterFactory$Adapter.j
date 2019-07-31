.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter
.super com/google/gson/TypeAdapter
.signature "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<Ljava/util/Map<TK;TV;>;>;"
.inner class private final Adapter inner com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter outer com/google/gson/internal/bind/MapTypeAdapterFactory

.field private final 'constructor' Lcom/google/gson/internal/ObjectConstructor; signature "Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;"

.field private final 'keyTypeAdapter' Lcom/google/gson/TypeAdapter; signature "Lcom/google/gson/TypeAdapter<TK;>;"

.field final synthetic 'this$0' Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

.field private final 'valueTypeAdapter' Lcom/google/gson/TypeAdapter; signature "Lcom/google/gson/TypeAdapter<TV;>;"

.method public <init>(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V
.signature "(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TK;>;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TV;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;)V"
aload 0
aload 1
putfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/this$0 Lcom/google/gson/internal/bind/MapTypeAdapterFactory;
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
aload 0
new com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper
dup
aload 2
aload 4
aload 3
invokespecial com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/<init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
putfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/keyTypeAdapter Lcom/google/gson/TypeAdapter;
aload 0
new com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper
dup
aload 2
aload 6
aload 5
invokespecial com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper/<init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
putfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/valueTypeAdapter Lcom/google/gson/TypeAdapter;
aload 0
aload 7
putfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/constructor Lcom/google/gson/internal/ObjectConstructor;
return
.limit locals 8
.limit stack 6
.end method

.method private keyToString(Lcom/google/gson/JsonElement;)Ljava/lang/String;
aload 1
invokevirtual com/google/gson/JsonElement/isJsonPrimitive()Z
ifeq L0
aload 1
invokevirtual com/google/gson/JsonElement/getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;
astore 1
aload 1
invokevirtual com/google/gson/JsonPrimitive/isNumber()Z
ifeq L1
aload 1
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
areturn
L1:
aload 1
invokevirtual com/google/gson/JsonPrimitive/isBoolean()Z
ifeq L2
aload 1
invokevirtual com/google/gson/JsonPrimitive/getAsBoolean()Z
invokestatic java/lang/Boolean/toString(Z)Ljava/lang/String;
areturn
L2:
aload 1
invokevirtual com/google/gson/JsonPrimitive/isString()Z
ifeq L3
aload 1
invokevirtual com/google/gson/JsonPrimitive/getAsString()Ljava/lang/String;
areturn
L3:
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L0:
aload 1
invokevirtual com/google/gson/JsonElement/isJsonNull()Z
ifeq L4
ldc "null"
areturn
L4:
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;
areturn
.limit locals 2
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;
.signature "(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map<TK;TV;>;"
.throws java/io/IOException
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
astore 3
aload 3
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
if_acmpne L0
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextNull()V
aconst_null
areturn
L0:
aload 0
getfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/constructor Lcom/google/gson/internal/ObjectConstructor;
invokeinterface com/google/gson/internal/ObjectConstructor/construct()Ljava/lang/Object; 0
checkcast java/util/Map
astore 2
aload 3
getstatic com/google/gson/stream/JsonToken/BEGIN_ARRAY Lcom/google/gson/stream/JsonToken;
if_acmpne L1
aload 1
invokevirtual com/google/gson/stream/JsonReader/beginArray()V
L2:
aload 1
invokevirtual com/google/gson/stream/JsonReader/hasNext()Z
ifeq L3
aload 1
invokevirtual com/google/gson/stream/JsonReader/beginArray()V
aload 0
getfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/keyTypeAdapter Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
astore 3
aload 2
aload 3
aload 0
getfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/valueTypeAdapter Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
ifnull L4
new com/google/gson/JsonSyntaxException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "duplicate key: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 1
invokevirtual com/google/gson/stream/JsonReader/endArray()V
goto L2
L3:
aload 1
invokevirtual com/google/gson/stream/JsonReader/endArray()V
aload 2
areturn
L1:
aload 1
invokevirtual com/google/gson/stream/JsonReader/beginObject()V
L5:
aload 1
invokevirtual com/google/gson/stream/JsonReader/hasNext()Z
ifeq L6
getstatic com/google/gson/internal/JsonReaderInternalAccess/INSTANCE Lcom/google/gson/internal/JsonReaderInternalAccess;
aload 1
invokevirtual com/google/gson/internal/JsonReaderInternalAccess/promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
aload 0
getfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/keyTypeAdapter Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
astore 3
aload 2
aload 3
aload 0
getfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/valueTypeAdapter Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
ifnull L5
new com/google/gson/JsonSyntaxException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "duplicate key: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 1
invokevirtual com/google/gson/stream/JsonReader/endObject()V
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/util/Map
invokevirtual com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V
return
.limit locals 3
.limit stack 3
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V
.signature "(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map<TK;TV;>;)V"
.throws java/io/IOException
aload 2
ifnonnull L0
aload 1
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
pop
return
L0:
aload 0
getfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/this$0 Lcom/google/gson/internal/bind/MapTypeAdapterFactory;
invokestatic com/google/gson/internal/bind/MapTypeAdapterFactory/access$000(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;)Z
ifne L1
aload 1
invokevirtual com/google/gson/stream/JsonWriter/beginObject()Lcom/google/gson/stream/JsonWriter;
pop
aload 2
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 5
aload 1
aload 5
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokevirtual com/google/gson/stream/JsonWriter/name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
aload 0
getfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/valueTypeAdapter Lcom/google/gson/TypeAdapter;
aload 1
aload 5
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
goto L2
L3:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/endObject()Lcom/google/gson/stream/JsonWriter;
pop
return
L1:
iconst_0
istore 3
new java/util/ArrayList
dup
aload 2
invokeinterface java/util/Map/size()I 0
invokespecial java/util/ArrayList/<init>(I)V
astore 5
new java/util/ArrayList
dup
aload 2
invokeinterface java/util/Map/size()I 0
invokespecial java/util/ArrayList/<init>(I)V
astore 6
aload 2
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L4:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 7
aload 0
getfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/keyTypeAdapter Lcom/google/gson/TypeAdapter;
aload 7
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
invokevirtual com/google/gson/TypeAdapter/toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
astore 8
aload 5
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 6
aload 7
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 8
invokevirtual com/google/gson/JsonElement/isJsonArray()Z
ifne L6
aload 8
invokevirtual com/google/gson/JsonElement/isJsonObject()Z
ifeq L7
L6:
iconst_1
istore 4
L8:
iload 3
iload 4
ior
istore 3
goto L4
L7:
iconst_0
istore 4
goto L8
L5:
iload 3
ifeq L9
aload 1
invokevirtual com/google/gson/stream/JsonWriter/beginArray()Lcom/google/gson/stream/JsonWriter;
pop
iconst_0
istore 3
L10:
iload 3
aload 5
invokeinterface java/util/List/size()I 0
if_icmpge L11
aload 1
invokevirtual com/google/gson/stream/JsonWriter/beginArray()Lcom/google/gson/stream/JsonWriter;
pop
aload 5
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
aload 1
invokestatic com/google/gson/internal/Streams/write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
aload 0
getfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/valueTypeAdapter Lcom/google/gson/TypeAdapter;
aload 1
aload 6
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
aload 1
invokevirtual com/google/gson/stream/JsonWriter/endArray()Lcom/google/gson/stream/JsonWriter;
pop
iload 3
iconst_1
iadd
istore 3
goto L10
L11:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/endArray()Lcom/google/gson/stream/JsonWriter;
pop
return
L9:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/beginObject()Lcom/google/gson/stream/JsonWriter;
pop
iconst_0
istore 3
L12:
iload 3
aload 5
invokeinterface java/util/List/size()I 0
if_icmpge L13
aload 1
aload 0
aload 5
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
invokespecial com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/keyToString(Lcom/google/gson/JsonElement;)Ljava/lang/String;
invokevirtual com/google/gson/stream/JsonWriter/name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
aload 0
getfield com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter/valueTypeAdapter Lcom/google/gson/TypeAdapter;
aload 1
aload 6
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
iload 3
iconst_1
iadd
istore 3
goto L12
L13:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/endObject()Lcom/google/gson/stream/JsonWriter;
pop
return
.limit locals 9
.limit stack 4
.end method
