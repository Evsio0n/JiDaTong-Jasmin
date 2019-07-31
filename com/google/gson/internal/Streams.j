.bytecode 50.0
.class public final synchronized com/google/gson/internal/Streams
.super java/lang/Object
.inner class static synthetic inner com/google/gson/internal/Streams$1
.inner class private static final AppendableWriter inner com/google/gson/internal/Streams$AppendableWriter outer com/google/gson/internal/Streams
.inner class static CurrentWrite inner com/google/gson/internal/Streams$AppendableWriter$CurrentWrite outer com/google/gson/internal/Streams

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
.throws com/google/gson/JsonParseException
.catch java/io/EOFException from L0 to L1 using L2
.catch com/google/gson/stream/MalformedJsonException from L0 to L1 using L3
.catch java/io/IOException from L0 to L1 using L4
.catch java/lang/NumberFormatException from L0 to L1 using L5
.catch java/io/EOFException from L6 to L7 using L2
.catch com/google/gson/stream/MalformedJsonException from L6 to L7 using L3
.catch java/io/IOException from L6 to L7 using L4
.catch java/lang/NumberFormatException from L6 to L7 using L5
iconst_1
istore 1
L0:
aload 0
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
pop
L1:
iconst_0
istore 1
L6:
getstatic com/google/gson/internal/bind/TypeAdapters/JSON_ELEMENT Lcom/google/gson/TypeAdapter;
aload 0
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
checkcast com/google/gson/JsonElement
astore 0
L7:
aload 0
areturn
L2:
astore 0
iload 1
ifeq L8
getstatic com/google/gson/JsonNull/INSTANCE Lcom/google/gson/JsonNull;
areturn
L8:
new com/google/gson/JsonSyntaxException
dup
aload 0
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/Throwable;)V
athrow
L3:
astore 0
new com/google/gson/JsonSyntaxException
dup
aload 0
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/Throwable;)V
athrow
L4:
astore 0
new com/google/gson/JsonIOException
dup
aload 0
invokespecial com/google/gson/JsonIOException/<init>(Ljava/lang/Throwable;)V
athrow
L5:
astore 0
new com/google/gson/JsonSyntaxException
dup
aload 0
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public static write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
.throws java/io/IOException
getstatic com/google/gson/internal/bind/TypeAdapters/JSON_ELEMENT Lcom/google/gson/TypeAdapter;
aload 1
aload 0
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
aload 0
instanceof java/io/Writer
ifeq L0
aload 0
checkcast java/io/Writer
areturn
L0:
new com/google/gson/internal/Streams$AppendableWriter
dup
aload 0
aconst_null
invokespecial com/google/gson/internal/Streams$AppendableWriter/<init>(Ljava/lang/Appendable;Lcom/google/gson/internal/Streams$1;)V
areturn
.limit locals 1
.limit stack 4
.end method
