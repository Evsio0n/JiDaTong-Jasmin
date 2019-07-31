.bytecode 50.0
.class public final synchronized com/google/gson/JsonParser
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
.throws com/google/gson/JsonIOException
.throws com/google/gson/JsonSyntaxException
.catch java/lang/StackOverflowError from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch all from L5 to L4 using L4
.catch all from L6 to L7 using L4
aload 1
invokevirtual com/google/gson/stream/JsonReader/isLenient()Z
istore 2
aload 1
iconst_1
invokevirtual com/google/gson/stream/JsonReader/setLenient(Z)V
L0:
aload 1
invokestatic com/google/gson/internal/Streams/parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
astore 3
L1:
aload 1
iload 2
invokevirtual com/google/gson/stream/JsonReader/setLenient(Z)V
aload 3
areturn
L2:
astore 3
L5:
new com/google/gson/JsonParseException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed parsing JSON source: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " to Json"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
invokespecial com/google/gson/JsonParseException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L4:
astore 3
aload 1
iload 2
invokevirtual com/google/gson/stream/JsonReader/setLenient(Z)V
aload 3
athrow
L3:
astore 3
L6:
new com/google/gson/JsonParseException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed parsing JSON source: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " to Json"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
invokespecial com/google/gson/JsonParseException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L7:
.limit locals 4
.limit stack 4
.end method

.method public parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;
.throws com/google/gson/JsonIOException
.throws com/google/gson/JsonSyntaxException
.catch com/google/gson/stream/MalformedJsonException from L0 to L1 using L1
.catch java/io/IOException from L0 to L1 using L2
.catch java/lang/NumberFormatException from L0 to L1 using L3
L0:
new com/google/gson/stream/JsonReader
dup
aload 1
invokespecial com/google/gson/stream/JsonReader/<init>(Ljava/io/Reader;)V
astore 1
aload 0
aload 1
invokevirtual com/google/gson/JsonParser/parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
astore 2
aload 2
invokevirtual com/google/gson/JsonElement/isJsonNull()Z
ifne L4
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/END_DOCUMENT Lcom/google/gson/stream/JsonToken;
if_acmpeq L4
new com/google/gson/JsonSyntaxException
dup
ldc "Did not consume the entire document."
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 1
new com/google/gson/JsonSyntaxException
dup
aload 1
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/Throwable;)V
athrow
L2:
astore 1
new com/google/gson/JsonIOException
dup
aload 1
invokespecial com/google/gson/JsonIOException/<init>(Ljava/lang/Throwable;)V
athrow
L3:
astore 1
new com/google/gson/JsonSyntaxException
dup
aload 1
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/Throwable;)V
athrow
L4:
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;
.throws com/google/gson/JsonSyntaxException
aload 0
new java/io/StringReader
dup
aload 1
invokespecial java/io/StringReader/<init>(Ljava/lang/String;)V
invokevirtual com/google/gson/JsonParser/parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;
areturn
.limit locals 2
.limit stack 4
.end method
