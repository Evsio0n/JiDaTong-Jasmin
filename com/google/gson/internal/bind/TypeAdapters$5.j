.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$5
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
.enclosing method com/google/gson/internal/bind/TypeAdapters
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$5

.method <init>()V
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
.throws java/io/IOException
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
if_acmpne L0
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextNull()V
aconst_null
areturn
L0:
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextInt()I
i2b
istore 2
L1:
iload 2
invokestatic java/lang/Byte/valueOf(B)Ljava/lang/Byte;
areturn
L2:
astore 1
new com/google/gson/JsonSyntaxException
dup
aload 1
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/TypeAdapters$5/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
areturn
.limit locals 2
.limit stack 2
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
.throws java/io/IOException
aload 1
aload 2
invokevirtual com/google/gson/stream/JsonWriter/value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
pop
return
.limit locals 3
.limit stack 2
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/lang/Number
invokevirtual com/google/gson/internal/bind/TypeAdapters$5/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
return
.limit locals 3
.limit stack 3
.end method
