.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$1
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/lang/Class;>;"
.enclosing method com/google/gson/internal/bind/TypeAdapters
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$1

.method <init>()V
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Class;
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
new java/lang/UnsupportedOperationException
dup
ldc "Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/TypeAdapters$1/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Class;
areturn
.limit locals 2
.limit stack 2
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Class;)V
.throws java/io/IOException
aload 2
ifnonnull L0
aload 1
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
pop
return
L0:
new java/lang/UnsupportedOperationException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Attempted to serialize java.lang.Class: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ". Forgot to register a type adapter?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/lang/Class
invokevirtual com/google/gson/internal/bind/TypeAdapters$1/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Class;)V
return
.limit locals 3
.limit stack 3
.end method
