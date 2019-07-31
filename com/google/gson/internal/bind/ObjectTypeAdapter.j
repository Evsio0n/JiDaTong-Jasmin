.bytecode 50.0
.class public final synchronized com/google/gson/internal/bind/ObjectTypeAdapter
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/lang/Object;>;"
.inner class static final inner com/google/gson/internal/bind/ObjectTypeAdapter$1
.inner class static synthetic inner com/google/gson/internal/bind/ObjectTypeAdapter$2

.field public static final 'FACTORY' Lcom/google/gson/TypeAdapterFactory;

.field private final 'gson' Lcom/google/gson/Gson;

.method static <clinit>()V
new com/google/gson/internal/bind/ObjectTypeAdapter$1
dup
invokespecial com/google/gson/internal/bind/ObjectTypeAdapter$1/<init>()V
putstatic com/google/gson/internal/bind/ObjectTypeAdapter/FACTORY Lcom/google/gson/TypeAdapterFactory;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>(Lcom/google/gson/Gson;)V
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
aload 0
aload 1
putfield com/google/gson/internal/bind/ObjectTypeAdapter/gson Lcom/google/gson/Gson;
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/google/gson/Gson;Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;)V
aload 0
aload 1
invokespecial com/google/gson/internal/bind/ObjectTypeAdapter/<init>(Lcom/google/gson/Gson;)V
return
.limit locals 3
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
astore 2
getstatic com/google/gson/internal/bind/ObjectTypeAdapter$2/$SwitchMap$com$google$gson$stream$JsonToken [I
aload 2
invokevirtual com/google/gson/stream/JsonToken/ordinal()I
iaload
tableswitch 1
L0
L1
L2
L3
L4
L5
default : L6
L6:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 1
invokevirtual com/google/gson/stream/JsonReader/beginArray()V
L7:
aload 1
invokevirtual com/google/gson/stream/JsonReader/hasNext()Z
ifeq L8
aload 2
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/ObjectTypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L7
L8:
aload 1
invokevirtual com/google/gson/stream/JsonReader/endArray()V
aload 2
areturn
L1:
new com/google/gson/internal/LinkedHashTreeMap
dup
invokespecial com/google/gson/internal/LinkedHashTreeMap/<init>()V
astore 2
aload 1
invokevirtual com/google/gson/stream/JsonReader/beginObject()V
L9:
aload 1
invokevirtual com/google/gson/stream/JsonReader/hasNext()Z
ifeq L10
aload 2
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextName()Ljava/lang/String;
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/ObjectTypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L9
L10:
aload 1
invokevirtual com/google/gson/stream/JsonReader/endObject()V
aload 2
areturn
L2:
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextString()Ljava/lang/String;
areturn
L3:
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextDouble()D
invokestatic java/lang/Double/valueOf(D)Ljava/lang/Double;
areturn
L4:
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextBoolean()Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L5:
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextNull()V
aconst_null
areturn
.limit locals 3
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
aload 0
getfield com/google/gson/internal/bind/ObjectTypeAdapter/gson Lcom/google/gson/Gson;
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual com/google/gson/Gson/getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;
astore 3
aload 3
instanceof com/google/gson/internal/bind/ObjectTypeAdapter
ifeq L1
aload 1
invokevirtual com/google/gson/stream/JsonWriter/beginObject()Lcom/google/gson/stream/JsonWriter;
pop
aload 1
invokevirtual com/google/gson/stream/JsonWriter/endObject()Lcom/google/gson/stream/JsonWriter;
pop
return
L1:
aload 3
aload 1
aload 2
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
return
.limit locals 4
.limit stack 3
.end method
