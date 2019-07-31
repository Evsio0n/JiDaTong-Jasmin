.bytecode 50.0
.class public final synchronized com/google/gson/JsonStreamParser
.super java/lang/Object
.implements java/util/Iterator
.signature "Ljava/lang/Object;Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;"

.field private final 'lock' Ljava/lang/Object;

.field private final 'parser' Lcom/google/gson/stream/JsonReader;

.method public <init>(Ljava/io/Reader;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/google/gson/stream/JsonReader
dup
aload 1
invokespecial com/google/gson/stream/JsonReader/<init>(Ljava/io/Reader;)V
putfield com/google/gson/JsonStreamParser/parser Lcom/google/gson/stream/JsonReader;
aload 0
getfield com/google/gson/JsonStreamParser/parser Lcom/google/gson/stream/JsonReader;
iconst_1
invokevirtual com/google/gson/stream/JsonReader/setLenient(Z)V
aload 0
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putfield com/google/gson/JsonStreamParser/lock Ljava/lang/Object;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
new java/io/StringReader
dup
aload 1
invokespecial java/io/StringReader/<init>(Ljava/lang/String;)V
invokespecial com/google/gson/JsonStreamParser/<init>(Ljava/io/Reader;)V
return
.limit locals 2
.limit stack 4
.end method

.method public hasNext()Z
.catch com/google/gson/stream/MalformedJsonException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch all from L5 to L6 using L4
.catch all from L7 to L4 using L4
.catch all from L8 to L9 using L4
.catch all from L10 to L11 using L4
aload 0
getfield com/google/gson/JsonStreamParser/lock Ljava/lang/Object;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/google/gson/JsonStreamParser/parser Lcom/google/gson/stream/JsonReader;
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
astore 3
getstatic com/google/gson/stream/JsonToken/END_DOCUMENT Lcom/google/gson/stream/JsonToken;
astore 4
L1:
aload 3
aload 4
if_acmpeq L11
iconst_1
istore 1
L5:
aload 2
monitorexit
L6:
iload 1
ireturn
L2:
astore 3
L7:
new com/google/gson/JsonSyntaxException
dup
aload 3
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/Throwable;)V
athrow
L4:
astore 3
L8:
aload 2
monitorexit
L9:
aload 3
athrow
L3:
astore 3
L10:
new com/google/gson/JsonIOException
dup
aload 3
invokespecial com/google/gson/JsonIOException/<init>(Ljava/lang/Throwable;)V
athrow
L11:
iconst_0
istore 1
goto L5
.limit locals 5
.limit stack 3
.end method

.method public next()Lcom/google/gson/JsonElement;
.throws com/google/gson/JsonParseException
.catch java/lang/StackOverflowError from L0 to L1 using L2
.catch java/lang/OutOfMemoryError from L0 to L1 using L3
.catch com/google/gson/JsonParseException from L0 to L1 using L4
aload 0
invokevirtual com/google/gson/JsonStreamParser/hasNext()Z
ifne L0
new java/util/NoSuchElementException
dup
invokespecial java/util/NoSuchElementException/<init>()V
athrow
L0:
aload 0
getfield com/google/gson/JsonStreamParser/parser Lcom/google/gson/stream/JsonReader;
invokestatic com/google/gson/internal/Streams/parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new com/google/gson/JsonParseException
dup
ldc "Failed parsing JSON source to Json"
aload 1
invokespecial com/google/gson/JsonParseException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L3:
astore 1
new com/google/gson/JsonParseException
dup
ldc "Failed parsing JSON source to Json"
aload 1
invokespecial com/google/gson/JsonParseException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L4:
astore 2
aload 2
astore 1
aload 2
invokevirtual com/google/gson/JsonParseException/getCause()Ljava/lang/Throwable;
instanceof java/io/EOFException
ifeq L5
new java/util/NoSuchElementException
dup
invokespecial java/util/NoSuchElementException/<init>()V
astore 1
L5:
aload 1
athrow
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic next()Ljava/lang/Object;
aload 0
invokevirtual com/google/gson/JsonStreamParser/next()Lcom/google/gson/JsonElement;
areturn
.limit locals 1
.limit stack 1
.end method

.method public remove()V
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method
