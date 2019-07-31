.bytecode 50.0
.class public final synchronized com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter
.super com/google/gson/TypeAdapter
.signature "<T:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<TT;>;"
.inner class public static final Adapter inner com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter outer com/google/gson/internal/bind/ReflectiveTypeAdapterFactory

.field private final 'boundFields' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"

.field private final 'constructor' Lcom/google/gson/internal/ObjectConstructor; signature "Lcom/google/gson/internal/ObjectConstructor<TT;>;"

.method private <init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V
.signature "(Lcom/google/gson/internal/ObjectConstructor<TT;>;Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;)V"
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
aload 0
aload 1
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter/constructor Lcom/google/gson/internal/ObjectConstructor;
aload 0
aload 2
putfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter/boundFields Ljava/util/Map;
return
.limit locals 3
.limit stack 2
.end method

.method synthetic <init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V
aload 0
aload 1
aload 2
invokespecial com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter/<init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V
return
.limit locals 4
.limit stack 3
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.signature "(Lcom/google/gson/stream/JsonReader;)TT;"
.throws java/io/IOException
.catch java/lang/IllegalStateException from L0 to L1 using L2
.catch java/lang/IllegalAccessException from L0 to L1 using L3
.catch java/lang/IllegalStateException from L1 to L4 using L2
.catch java/lang/IllegalAccessException from L1 to L4 using L3
.catch java/lang/IllegalStateException from L5 to L6 using L2
.catch java/lang/IllegalAccessException from L5 to L6 using L3
.catch java/lang/IllegalStateException from L6 to L7 using L2
.catch java/lang/IllegalAccessException from L6 to L7 using L3
.catch java/lang/IllegalStateException from L8 to L9 using L2
.catch java/lang/IllegalAccessException from L8 to L9 using L3
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
if_acmpne L10
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextNull()V
aconst_null
areturn
L10:
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter/constructor Lcom/google/gson/internal/ObjectConstructor;
invokeinterface com/google/gson/internal/ObjectConstructor/construct()Ljava/lang/Object; 0
astore 2
L0:
aload 1
invokevirtual com/google/gson/stream/JsonReader/beginObject()V
L1:
aload 1
invokevirtual com/google/gson/stream/JsonReader/hasNext()Z
ifeq L11
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextName()Ljava/lang/String;
astore 3
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter/boundFields Ljava/util/Map;
aload 3
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField
astore 3
L4:
aload 3
ifnull L6
L5:
aload 3
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField/deserialized Z
ifne L8
L6:
aload 1
invokevirtual com/google/gson/stream/JsonReader/skipValue()V
L7:
goto L1
L2:
astore 1
new com/google/gson/JsonSyntaxException
dup
aload 1
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/Throwable;)V
athrow
L8:
aload 3
aload 1
aload 2
invokevirtual com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField/read(Lcom/google/gson/stream/JsonReader;Ljava/lang/Object;)V
L9:
goto L1
L3:
astore 1
new java/lang/AssertionError
dup
aload 1
invokespecial java/lang/AssertionError/<init>(Ljava/lang/Object;)V
athrow
L11:
aload 1
invokevirtual com/google/gson/stream/JsonReader/endObject()V
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.signature "(Lcom/google/gson/stream/JsonWriter;TT;)V"
.throws java/io/IOException
.catch java/lang/IllegalAccessException from L0 to L1 using L2
.catch java/lang/IllegalAccessException from L1 to L3 using L2
aload 2
ifnonnull L4
aload 1
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
pop
return
L4:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/beginObject()Lcom/google/gson/stream/JsonWriter;
pop
L0:
aload 0
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter/boundFields Ljava/util/Map;
invokeinterface java/util/Map/values()Ljava/util/Collection; 0
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField
astore 4
aload 4
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField/serialized Z
ifeq L1
aload 1
aload 4
getfield com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField/name Ljava/lang/String;
invokevirtual com/google/gson/stream/JsonWriter/name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
aload 4
aload 1
aload 2
invokevirtual com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
L3:
goto L1
L2:
astore 1
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L5:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/endObject()Lcom/google/gson/stream/JsonWriter;
pop
return
.limit locals 5
.limit stack 3
.end method
