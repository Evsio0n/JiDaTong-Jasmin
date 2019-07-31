.bytecode 50.0
.class final synchronized com/google/gson/TreeTypeAdapter
.super com/google/gson/TypeAdapter
.signature "<T:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<TT;>;"
.inner class static synthetic inner com/google/gson/TreeTypeAdapter$1
.inner class private static SingleTypeFactory inner com/google/gson/TreeTypeAdapter$SingleTypeFactory outer com/google/gson/TreeTypeAdapter

.field private 'delegate' Lcom/google/gson/TypeAdapter; signature "Lcom/google/gson/TypeAdapter<TT;>;"

.field private final 'deserializer' Lcom/google/gson/JsonDeserializer; signature "Lcom/google/gson/JsonDeserializer<TT;>;"

.field private final 'gson' Lcom/google/gson/Gson;

.field private final 'serializer' Lcom/google/gson/JsonSerializer; signature "Lcom/google/gson/JsonSerializer<TT;>;"

.field private final 'skipPast' Lcom/google/gson/TypeAdapterFactory;

.field private final 'typeToken' Lcom/google/gson/reflect/TypeToken; signature "Lcom/google/gson/reflect/TypeToken<TT;>;"

.method private <init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;)V
.signature "(Lcom/google/gson/JsonSerializer<TT;>;Lcom/google/gson/JsonDeserializer<TT;>;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;Lcom/google/gson/TypeAdapterFactory;)V"
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
aload 0
aload 1
putfield com/google/gson/TreeTypeAdapter/serializer Lcom/google/gson/JsonSerializer;
aload 0
aload 2
putfield com/google/gson/TreeTypeAdapter/deserializer Lcom/google/gson/JsonDeserializer;
aload 0
aload 3
putfield com/google/gson/TreeTypeAdapter/gson Lcom/google/gson/Gson;
aload 0
aload 4
putfield com/google/gson/TreeTypeAdapter/typeToken Lcom/google/gson/reflect/TypeToken;
aload 0
aload 5
putfield com/google/gson/TreeTypeAdapter/skipPast Lcom/google/gson/TypeAdapterFactory;
return
.limit locals 6
.limit stack 2
.end method

.method synthetic <init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/TreeTypeAdapter$1;)V
aload 0
aload 1
aload 2
aload 3
aload 4
aload 5
invokespecial com/google/gson/TreeTypeAdapter/<init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;)V
return
.limit locals 7
.limit stack 6
.end method

.method private delegate()Lcom/google/gson/TypeAdapter;
.signature "()Lcom/google/gson/TypeAdapter<TT;>;"
aload 0
getfield com/google/gson/TreeTypeAdapter/delegate Lcom/google/gson/TypeAdapter;
astore 1
aload 1
ifnull L0
aload 1
areturn
L0:
aload 0
getfield com/google/gson/TreeTypeAdapter/gson Lcom/google/gson/Gson;
aload 0
getfield com/google/gson/TreeTypeAdapter/skipPast Lcom/google/gson/TypeAdapterFactory;
aload 0
getfield com/google/gson/TreeTypeAdapter/typeToken Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/Gson/getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
astore 1
aload 0
aload 1
putfield com/google/gson/TreeTypeAdapter/delegate Lcom/google/gson/TypeAdapter;
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public static newFactory(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;
.signature "(Lcom/google/gson/reflect/TypeToken<*>;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;"
new com/google/gson/TreeTypeAdapter$SingleTypeFactory
dup
aload 1
aload 0
iconst_0
aconst_null
aconst_null
invokespecial com/google/gson/TreeTypeAdapter$SingleTypeFactory/<init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/gson/TreeTypeAdapter$1;)V
areturn
.limit locals 2
.limit stack 7
.end method

.method public static newFactoryWithMatchRawType(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;
.signature "(Lcom/google/gson/reflect/TypeToken<*>;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;"
aload 0
invokevirtual com/google/gson/reflect/TypeToken/getType()Ljava/lang/reflect/Type;
aload 0
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
if_acmpne L0
iconst_1
istore 2
L1:
new com/google/gson/TreeTypeAdapter$SingleTypeFactory
dup
aload 1
aload 0
iload 2
aconst_null
aconst_null
invokespecial com/google/gson/TreeTypeAdapter$SingleTypeFactory/<init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/gson/TreeTypeAdapter$1;)V
areturn
L0:
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 7
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;
.signature "(Ljava/lang/Class<*>;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;"
new com/google/gson/TreeTypeAdapter$SingleTypeFactory
dup
aload 1
aconst_null
iconst_0
aload 0
aconst_null
invokespecial com/google/gson/TreeTypeAdapter$SingleTypeFactory/<init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/gson/TreeTypeAdapter$1;)V
areturn
.limit locals 2
.limit stack 7
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.signature "(Lcom/google/gson/stream/JsonReader;)TT;"
.throws java/io/IOException
aload 0
getfield com/google/gson/TreeTypeAdapter/deserializer Lcom/google/gson/JsonDeserializer;
ifnonnull L0
aload 0
invokespecial com/google/gson/TreeTypeAdapter/delegate()Lcom/google/gson/TypeAdapter;
aload 1
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
areturn
L0:
aload 1
invokestatic com/google/gson/internal/Streams/parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
astore 1
aload 1
invokevirtual com/google/gson/JsonElement/isJsonNull()Z
ifeq L1
aconst_null
areturn
L1:
aload 0
getfield com/google/gson/TreeTypeAdapter/deserializer Lcom/google/gson/JsonDeserializer;
aload 1
aload 0
getfield com/google/gson/TreeTypeAdapter/typeToken Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/reflect/TypeToken/getType()Ljava/lang/reflect/Type;
aload 0
getfield com/google/gson/TreeTypeAdapter/gson Lcom/google/gson/Gson;
getfield com/google/gson/Gson/deserializationContext Lcom/google/gson/JsonDeserializationContext;
invokeinterface com/google/gson/JsonDeserializer/deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object; 3
areturn
.limit locals 2
.limit stack 4
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.signature "(Lcom/google/gson/stream/JsonWriter;TT;)V"
.throws java/io/IOException
aload 0
getfield com/google/gson/TreeTypeAdapter/serializer Lcom/google/gson/JsonSerializer;
ifnonnull L0
aload 0
invokespecial com/google/gson/TreeTypeAdapter/delegate()Lcom/google/gson/TypeAdapter;
aload 1
aload 2
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
return
L0:
aload 2
ifnonnull L1
aload 1
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
pop
return
L1:
aload 0
getfield com/google/gson/TreeTypeAdapter/serializer Lcom/google/gson/JsonSerializer;
aload 2
aload 0
getfield com/google/gson/TreeTypeAdapter/typeToken Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/reflect/TypeToken/getType()Ljava/lang/reflect/Type;
aload 0
getfield com/google/gson/TreeTypeAdapter/gson Lcom/google/gson/Gson;
getfield com/google/gson/Gson/serializationContext Lcom/google/gson/JsonSerializationContext;
invokeinterface com/google/gson/JsonSerializer/serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement; 3
aload 1
invokestatic com/google/gson/internal/Streams/write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
return
.limit locals 3
.limit stack 4
.end method
