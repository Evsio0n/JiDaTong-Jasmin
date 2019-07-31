.bytecode 50.0
.class public final synchronized com/google/gson/Gson
.super java/lang/Object
.inner class inner com/google/gson/Gson$1
.inner class inner com/google/gson/Gson$2
.inner class inner com/google/gson/Gson$3
.inner class inner com/google/gson/Gson$4
.inner class inner com/google/gson/Gson$5
.inner class static FutureTypeAdapter inner com/google/gson/Gson$FutureTypeAdapter outer com/google/gson/Gson

.field static final 'DEFAULT_JSON_NON_EXECUTABLE' Z = 0


.field private static final 'JSON_NON_EXECUTABLE_PREFIX' Ljava/lang/String; = ")]}'\n"

.field private final 'calls' Ljava/lang/ThreadLocal; signature "Ljava/lang/ThreadLocal<Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;>;"

.field private final 'constructorConstructor' Lcom/google/gson/internal/ConstructorConstructor;

.field final 'deserializationContext' Lcom/google/gson/JsonDeserializationContext;

.field private final 'factories' Ljava/util/List; signature "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"

.field private final 'generateNonExecutableJson' Z

.field private final 'htmlSafe' Z

.field private final 'prettyPrinting' Z

.field final 'serializationContext' Lcom/google/gson/JsonSerializationContext;

.field private final 'serializeNulls' Z

.field private final 'typeTokenCache' Ljava/util/Map; signature "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/TypeAdapter<*>;>;"

.method public <init>()V
aload 0
getstatic com/google/gson/internal/Excluder/DEFAULT Lcom/google/gson/internal/Excluder;
getstatic com/google/gson/FieldNamingPolicy/IDENTITY Lcom/google/gson/FieldNamingPolicy;
invokestatic java/util/Collections/emptyMap()Ljava/util/Map;
iconst_0
iconst_0
iconst_0
iconst_1
iconst_0
iconst_0
getstatic com/google/gson/LongSerializationPolicy/DEFAULT Lcom/google/gson/LongSerializationPolicy;
invokestatic java/util/Collections/emptyList()Ljava/util/List;
invokespecial com/google/gson/Gson/<init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V
return
.limit locals 1
.limit stack 12
.end method

.method <init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V
.signature "(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;ZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/lang/ThreadLocal
dup
invokespecial java/lang/ThreadLocal/<init>()V
putfield com/google/gson/Gson/calls Ljava/lang/ThreadLocal;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
invokestatic java/util/Collections/synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
putfield com/google/gson/Gson/typeTokenCache Ljava/util/Map;
aload 0
new com/google/gson/Gson$1
dup
aload 0
invokespecial com/google/gson/Gson$1/<init>(Lcom/google/gson/Gson;)V
putfield com/google/gson/Gson/deserializationContext Lcom/google/gson/JsonDeserializationContext;
aload 0
new com/google/gson/Gson$2
dup
aload 0
invokespecial com/google/gson/Gson$2/<init>(Lcom/google/gson/Gson;)V
putfield com/google/gson/Gson/serializationContext Lcom/google/gson/JsonSerializationContext;
aload 0
new com/google/gson/internal/ConstructorConstructor
dup
aload 3
invokespecial com/google/gson/internal/ConstructorConstructor/<init>(Ljava/util/Map;)V
putfield com/google/gson/Gson/constructorConstructor Lcom/google/gson/internal/ConstructorConstructor;
aload 0
iload 4
putfield com/google/gson/Gson/serializeNulls Z
aload 0
iload 6
putfield com/google/gson/Gson/generateNonExecutableJson Z
aload 0
iload 7
putfield com/google/gson/Gson/htmlSafe Z
aload 0
iload 8
putfield com/google/gson/Gson/prettyPrinting Z
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/JSON_ELEMENT_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/ObjectTypeAdapter/FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
aload 11
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/STRING_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/INTEGER_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/BOOLEAN_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/BYTE_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/SHORT_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic java/lang/Long/TYPE Ljava/lang/Class;
ldc java/lang/Long
aload 0
aload 10
invokespecial com/google/gson/Gson/longAdapter(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/TypeAdapter;
invokestatic com/google/gson/internal/bind/TypeAdapters/newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic java/lang/Double/TYPE Ljava/lang/Class;
ldc java/lang/Double
aload 0
iload 9
invokespecial com/google/gson/Gson/doubleAdapter(Z)Lcom/google/gson/TypeAdapter;
invokestatic com/google/gson/internal/bind/TypeAdapters/newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic java/lang/Float/TYPE Ljava/lang/Class;
ldc java/lang/Float
aload 0
iload 9
invokespecial com/google/gson/Gson/floatAdapter(Z)Lcom/google/gson/TypeAdapter;
invokestatic com/google/gson/internal/bind/TypeAdapters/newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/NUMBER_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/CHARACTER_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/STRING_BUILDER_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/STRING_BUFFER_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
ldc java/math/BigDecimal
getstatic com/google/gson/internal/bind/TypeAdapters/BIG_DECIMAL Lcom/google/gson/TypeAdapter;
invokestatic com/google/gson/internal/bind/TypeAdapters/newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
ldc java/math/BigInteger
getstatic com/google/gson/internal/bind/TypeAdapters/BIG_INTEGER Lcom/google/gson/TypeAdapter;
invokestatic com/google/gson/internal/bind/TypeAdapters/newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/URL_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/URI_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/UUID_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/LOCALE_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/INET_ADDRESS_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/BIT_SET_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/DateTypeAdapter/FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/CALENDAR_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TimeTypeAdapter/FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/SqlDateTypeAdapter/FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/TIMESTAMP_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/ArrayTypeAdapter/FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/ENUM_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
getstatic com/google/gson/internal/bind/TypeAdapters/CLASS_FACTORY Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
new com/google/gson/internal/bind/CollectionTypeAdapterFactory
dup
aload 0
getfield com/google/gson/Gson/constructorConstructor Lcom/google/gson/internal/ConstructorConstructor;
invokespecial com/google/gson/internal/bind/CollectionTypeAdapterFactory/<init>(Lcom/google/gson/internal/ConstructorConstructor;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
new com/google/gson/internal/bind/MapTypeAdapterFactory
dup
aload 0
getfield com/google/gson/Gson/constructorConstructor Lcom/google/gson/internal/ConstructorConstructor;
iload 5
invokespecial com/google/gson/internal/bind/MapTypeAdapterFactory/<init>(Lcom/google/gson/internal/ConstructorConstructor;Z)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
new com/google/gson/internal/bind/ReflectiveTypeAdapterFactory
dup
aload 0
getfield com/google/gson/Gson/constructorConstructor Lcom/google/gson/internal/ConstructorConstructor;
aload 2
aload 1
invokespecial com/google/gson/internal/bind/ReflectiveTypeAdapterFactory/<init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
aload 3
invokestatic java/util/Collections/unmodifiableList(Ljava/util/List;)Ljava/util/List;
putfield com/google/gson/Gson/factories Ljava/util/List;
return
.limit locals 12
.limit stack 6
.end method

.method static synthetic access$000(Lcom/google/gson/Gson;D)V
aload 0
dload 1
invokespecial com/google/gson/Gson/checkValidFloatingPoint(D)V
return
.limit locals 3
.limit stack 3
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V
.catch com/google/gson/stream/MalformedJsonException from L0 to L1 using L1
.catch java/io/IOException from L0 to L1 using L2
aload 0
ifnull L3
L0:
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/END_DOCUMENT Lcom/google/gson/stream/JsonToken;
if_acmpeq L3
new com/google/gson/JsonIOException
dup
ldc "JSON document was not fully consumed."
invokespecial com/google/gson/JsonIOException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 0
new com/google/gson/JsonSyntaxException
dup
aload 0
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/Throwable;)V
athrow
L2:
astore 0
new com/google/gson/JsonIOException
dup
aload 0
invokespecial com/google/gson/JsonIOException/<init>(Ljava/lang/Throwable;)V
athrow
L3:
return
.limit locals 2
.limit stack 3
.end method

.method private checkValidFloatingPoint(D)V
dload 1
invokestatic java/lang/Double/isNaN(D)Z
ifne L0
dload 1
invokestatic java/lang/Double/isInfinite(D)Z
ifeq L1
L0:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
dload 1
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
ldc " is not a valid double value as per JSON specification. To override this"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
return
.limit locals 3
.limit stack 5
.end method

.method private doubleAdapter(Z)Lcom/google/gson/TypeAdapter;
.signature "(Z)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
iload 1
ifeq L0
getstatic com/google/gson/internal/bind/TypeAdapters/DOUBLE Lcom/google/gson/TypeAdapter;
areturn
L0:
new com/google/gson/Gson$3
dup
aload 0
invokespecial com/google/gson/Gson$3/<init>(Lcom/google/gson/Gson;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method private floatAdapter(Z)Lcom/google/gson/TypeAdapter;
.signature "(Z)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
iload 1
ifeq L0
getstatic com/google/gson/internal/bind/TypeAdapters/FLOAT Lcom/google/gson/TypeAdapter;
areturn
L0:
new com/google/gson/Gson$4
dup
aload 0
invokespecial com/google/gson/Gson$4/<init>(Lcom/google/gson/Gson;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method private longAdapter(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/TypeAdapter;
.signature "(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
aload 1
getstatic com/google/gson/LongSerializationPolicy/DEFAULT Lcom/google/gson/LongSerializationPolicy;
if_acmpne L0
getstatic com/google/gson/internal/bind/TypeAdapters/LONG Lcom/google/gson/TypeAdapter;
areturn
L0:
new com/google/gson/Gson$5
dup
aload 0
invokespecial com/google/gson/Gson$5/<init>(Lcom/google/gson/Gson;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method private newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
getfield com/google/gson/Gson/generateNonExecutableJson Z
ifeq L0
aload 1
ldc ")]}'\n"
invokevirtual java/io/Writer/write(Ljava/lang/String;)V
L0:
new com/google/gson/stream/JsonWriter
dup
aload 1
invokespecial com/google/gson/stream/JsonWriter/<init>(Ljava/io/Writer;)V
astore 1
aload 0
getfield com/google/gson/Gson/prettyPrinting Z
ifeq L1
aload 1
ldc "  "
invokevirtual com/google/gson/stream/JsonWriter/setIndent(Ljava/lang/String;)V
L1:
aload 1
aload 0
getfield com/google/gson/Gson/serializeNulls Z
invokevirtual com/google/gson/stream/JsonWriter/setSerializeNulls(Z)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/Class<TT;>;)TT;"
.throws com/google/gson/JsonSyntaxException
aload 0
aload 1
aload 2
invokevirtual com/google/gson/Gson/fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 1
aload 2
invokestatic com/google/gson/internal/Primitives/wrap(Ljava/lang/Class;)Ljava/lang/Class;
aload 1
invokevirtual java/lang/Class/cast(Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 3
.end method

.method public fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)TT;"
.throws com/google/gson/JsonSyntaxException
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 0
new com/google/gson/internal/bind/JsonTreeReader
dup
aload 1
invokespecial com/google/gson/internal/bind/JsonTreeReader/<init>(Lcom/google/gson/JsonElement;)V
aload 2
invokevirtual com/google/gson/Gson/fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 4
.end method

.method public fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)TT;"
.throws com/google/gson/JsonIOException
.throws com/google/gson/JsonSyntaxException
.catch java/io/EOFException from L0 to L1 using L2
.catch java/lang/IllegalStateException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch all from L0 to L1 using L5
.catch java/io/EOFException from L6 to L7 using L2
.catch java/lang/IllegalStateException from L6 to L7 using L3
.catch java/io/IOException from L6 to L7 using L4
.catch all from L6 to L7 using L5
.catch all from L8 to L5 using L5
.catch all from L9 to L4 using L5
.catch all from L10 to L11 using L5
iconst_1
istore 3
aload 1
invokevirtual com/google/gson/stream/JsonReader/isLenient()Z
istore 4
aload 1
iconst_1
invokevirtual com/google/gson/stream/JsonReader/setLenient(Z)V
L0:
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
pop
L1:
iconst_0
istore 3
L6:
aload 0
aload 2
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/Gson/getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
astore 2
L7:
aload 1
iload 4
invokevirtual com/google/gson/stream/JsonReader/setLenient(Z)V
aload 2
areturn
L2:
astore 2
iload 3
ifeq L8
aload 1
iload 4
invokevirtual com/google/gson/stream/JsonReader/setLenient(Z)V
aconst_null
areturn
L8:
new com/google/gson/JsonSyntaxException
dup
aload 2
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/Throwable;)V
athrow
L5:
astore 2
aload 1
iload 4
invokevirtual com/google/gson/stream/JsonReader/setLenient(Z)V
aload 2
athrow
L3:
astore 2
L9:
new com/google/gson/JsonSyntaxException
dup
aload 2
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/Throwable;)V
athrow
L4:
astore 2
L10:
new com/google/gson/JsonSyntaxException
dup
aload 2
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/Throwable;)V
athrow
L11:
.limit locals 5
.limit stack 3
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/io/Reader;Ljava/lang/Class<TT;>;)TT;"
.throws com/google/gson/JsonSyntaxException
.throws com/google/gson/JsonIOException
new com/google/gson/stream/JsonReader
dup
aload 1
invokespecial com/google/gson/stream/JsonReader/<init>(Ljava/io/Reader;)V
astore 1
aload 0
aload 1
aload 2
invokevirtual com/google/gson/Gson/fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 3
aload 3
aload 1
invokestatic com/google/gson/Gson/assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V
aload 2
invokestatic com/google/gson/internal/Primitives/wrap(Ljava/lang/Class;)Ljava/lang/Class;
aload 3
invokevirtual java/lang/Class/cast(Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 3
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/io/Reader;Ljava/lang/reflect/Type;)TT;"
.throws com/google/gson/JsonIOException
.throws com/google/gson/JsonSyntaxException
new com/google/gson/stream/JsonReader
dup
aload 1
invokespecial com/google/gson/stream/JsonReader/<init>(Ljava/io/Reader;)V
astore 1
aload 0
aload 1
aload 2
invokevirtual com/google/gson/Gson/fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 2
aload 2
aload 1
invokestatic com/google/gson/Gson/assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)TT;"
.throws com/google/gson/JsonSyntaxException
aload 0
aload 1
aload 2
invokevirtual com/google/gson/Gson/fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 1
aload 2
invokestatic com/google/gson/internal/Primitives/wrap(Ljava/lang/Class;)Ljava/lang/Class;
aload 1
invokevirtual java/lang/Class/cast(Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 3
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/reflect/Type;)TT;"
.throws com/google/gson/JsonSyntaxException
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 0
new java/io/StringReader
dup
aload 1
invokespecial java/io/StringReader/<init>(Ljava/lang/String;)V
aload 2
invokevirtual com/google/gson/Gson/fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L2 using L2
aload 0
getfield com/google/gson/Gson/typeTokenCache Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/google/gson/TypeAdapter
astore 3
aload 3
ifnull L7
aload 3
areturn
L7:
aload 0
getfield com/google/gson/Gson/calls Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast java/util/Map
astore 4
iconst_0
istore 2
aload 4
astore 3
aload 4
ifnonnull L8
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 3
aload 0
getfield com/google/gson/Gson/calls Ljava/lang/ThreadLocal;
aload 3
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
iconst_1
istore 2
L8:
aload 3
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/google/gson/Gson$FutureTypeAdapter
astore 4
aload 4
ifnull L0
aload 4
areturn
L0:
new com/google/gson/Gson$FutureTypeAdapter
dup
invokespecial com/google/gson/Gson$FutureTypeAdapter/<init>()V
astore 4
aload 3
aload 1
aload 4
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/google/gson/Gson/factories Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L1:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/google/gson/TypeAdapterFactory
aload 0
aload 1
invokeinterface com/google/gson/TypeAdapterFactory/create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter; 2
astore 6
L3:
aload 6
ifnull L1
L4:
aload 4
aload 6
invokevirtual com/google/gson/Gson$FutureTypeAdapter/setDelegate(Lcom/google/gson/TypeAdapter;)V
aload 0
getfield com/google/gson/Gson/typeTokenCache Ljava/util/Map;
aload 1
aload 6
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L5:
aload 3
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
iload 2
ifeq L9
aload 0
getfield com/google/gson/Gson/calls Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/remove()V
L9:
aload 6
areturn
L6:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "GSON cannot handle "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 4
aload 3
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
iload 2
ifeq L10
aload 0
getfield com/google/gson/Gson/calls Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/remove()V
L10:
aload 4
athrow
.limit locals 7
.limit stack 4
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;"
aload 0
aload 1
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/Gson/getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;"
iconst_0
istore 3
aload 0
getfield com/google/gson/Gson/factories Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L0:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/google/gson/TypeAdapterFactory
astore 5
iload 3
ifne L2
aload 5
aload 1
if_acmpne L0
iconst_1
istore 3
goto L0
L2:
aload 5
aload 0
aload 2
invokeinterface com/google/gson/TypeAdapterFactory/create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter; 2
astore 5
aload 5
ifnull L0
aload 5
areturn
L1:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "GSON cannot serialize "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
.limit locals 6
.limit stack 4
.end method

.method public toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 2
aload 0
aload 1
aload 2
invokevirtual com/google/gson/Gson/toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V
aload 2
invokevirtual java/io/StringWriter/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
aload 1
ifnonnull L0
aload 0
getstatic com/google/gson/JsonNull/INSTANCE Lcom/google/gson/JsonNull;
invokevirtual com/google/gson/Gson/toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;
areturn
L0:
aload 0
aload 1
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 3
aload 0
aload 1
aload 2
aload 3
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
aload 3
invokevirtual java/io/StringWriter/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method public toJson(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
.throws com/google/gson/JsonIOException
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L3 using L3
aload 2
invokevirtual com/google/gson/stream/JsonWriter/isLenient()Z
istore 3
aload 2
iconst_1
invokevirtual com/google/gson/stream/JsonWriter/setLenient(Z)V
aload 2
invokevirtual com/google/gson/stream/JsonWriter/isHtmlSafe()Z
istore 4
aload 2
aload 0
getfield com/google/gson/Gson/htmlSafe Z
invokevirtual com/google/gson/stream/JsonWriter/setHtmlSafe(Z)V
aload 2
invokevirtual com/google/gson/stream/JsonWriter/getSerializeNulls()Z
istore 5
aload 2
aload 0
getfield com/google/gson/Gson/serializeNulls Z
invokevirtual com/google/gson/stream/JsonWriter/setSerializeNulls(Z)V
L0:
aload 1
aload 2
invokestatic com/google/gson/internal/Streams/write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
L1:
aload 2
iload 3
invokevirtual com/google/gson/stream/JsonWriter/setLenient(Z)V
aload 2
iload 4
invokevirtual com/google/gson/stream/JsonWriter/setHtmlSafe(Z)V
aload 2
iload 5
invokevirtual com/google/gson/stream/JsonWriter/setSerializeNulls(Z)V
return
L2:
astore 1
L4:
new com/google/gson/JsonIOException
dup
aload 1
invokespecial com/google/gson/JsonIOException/<init>(Ljava/lang/Throwable;)V
athrow
L3:
astore 1
aload 2
iload 3
invokevirtual com/google/gson/stream/JsonWriter/setLenient(Z)V
aload 2
iload 4
invokevirtual com/google/gson/stream/JsonWriter/setHtmlSafe(Z)V
aload 2
iload 5
invokevirtual com/google/gson/stream/JsonWriter/setSerializeNulls(Z)V
aload 1
athrow
.limit locals 6
.limit stack 3
.end method

.method public toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V
.throws com/google/gson/JsonIOException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
aload 1
aload 0
aload 2
invokestatic com/google/gson/internal/Streams/writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
invokespecial com/google/gson/Gson/newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;
invokevirtual com/google/gson/Gson/toJson(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
L1:
return
L2:
astore 1
new java/lang/RuntimeException
dup
aload 1
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
.throws com/google/gson/JsonIOException
aload 1
ifnull L0
aload 0
aload 1
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 2
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
return
L0:
aload 0
getstatic com/google/gson/JsonNull/INSTANCE Lcom/google/gson/JsonNull;
aload 2
invokevirtual com/google/gson/Gson/toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V
return
.limit locals 3
.limit stack 4
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V
.throws com/google/gson/JsonIOException
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L3 using L3
aload 0
aload 2
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/Gson/getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
astore 2
aload 3
invokevirtual com/google/gson/stream/JsonWriter/isLenient()Z
istore 4
aload 3
iconst_1
invokevirtual com/google/gson/stream/JsonWriter/setLenient(Z)V
aload 3
invokevirtual com/google/gson/stream/JsonWriter/isHtmlSafe()Z
istore 5
aload 3
aload 0
getfield com/google/gson/Gson/htmlSafe Z
invokevirtual com/google/gson/stream/JsonWriter/setHtmlSafe(Z)V
aload 3
invokevirtual com/google/gson/stream/JsonWriter/getSerializeNulls()Z
istore 6
aload 3
aload 0
getfield com/google/gson/Gson/serializeNulls Z
invokevirtual com/google/gson/stream/JsonWriter/setSerializeNulls(Z)V
L0:
aload 2
aload 3
aload 1
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
L1:
aload 3
iload 4
invokevirtual com/google/gson/stream/JsonWriter/setLenient(Z)V
aload 3
iload 5
invokevirtual com/google/gson/stream/JsonWriter/setHtmlSafe(Z)V
aload 3
iload 6
invokevirtual com/google/gson/stream/JsonWriter/setSerializeNulls(Z)V
return
L2:
astore 1
L4:
new com/google/gson/JsonIOException
dup
aload 1
invokespecial com/google/gson/JsonIOException/<init>(Ljava/lang/Throwable;)V
athrow
L3:
astore 1
aload 3
iload 4
invokevirtual com/google/gson/stream/JsonWriter/setLenient(Z)V
aload 3
iload 5
invokevirtual com/google/gson/stream/JsonWriter/setHtmlSafe(Z)V
aload 3
iload 6
invokevirtual com/google/gson/stream/JsonWriter/setSerializeNulls(Z)V
aload 1
athrow
.limit locals 7
.limit stack 3
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
.throws com/google/gson/JsonIOException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
aload 1
aload 2
aload 0
aload 3
invokestatic com/google/gson/internal/Streams/writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
invokespecial com/google/gson/Gson/newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V
L1:
return
L2:
astore 1
new com/google/gson/JsonIOException
dup
aload 1
invokespecial com/google/gson/JsonIOException/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 4
.limit stack 5
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
aload 1
ifnonnull L0
getstatic com/google/gson/JsonNull/INSTANCE Lcom/google/gson/JsonNull;
areturn
L0:
aload 0
aload 1
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual com/google/gson/Gson/toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;
areturn
.limit locals 2
.limit stack 3
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;
new com/google/gson/internal/bind/JsonTreeWriter
dup
invokespecial com/google/gson/internal/bind/JsonTreeWriter/<init>()V
astore 3
aload 0
aload 1
aload 2
aload 3
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V
aload 3
invokevirtual com/google/gson/internal/bind/JsonTreeWriter/get()Lcom/google/gson/JsonElement;
areturn
.limit locals 4
.limit stack 4
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "{serializeNulls:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/google/gson/Gson/serializeNulls Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc "factories:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/Gson/factories Ljava/util/List;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ",instanceCreators:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/Gson/constructorConstructor Lcom/google/gson/internal/ConstructorConstructor;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
