.bytecode 50.0
.class public synchronized abstract com/google/gson/TypeAdapter
.super java/lang/Object
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class inner com/google/gson/TypeAdapter$1

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final fromJson(Ljava/io/Reader;)Ljava/lang/Object;
.signature "(Ljava/io/Reader;)TT;"
.throws java/io/IOException
aload 0
new com/google/gson/stream/JsonReader
dup
aload 1
invokespecial com/google/gson/stream/JsonReader/<init>(Ljava/io/Reader;)V
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 4
.end method

.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
.signature "(Ljava/lang/String;)TT;"
.throws java/io/IOException
aload 0
new java/io/StringReader
dup
aload 1
invokespecial java/io/StringReader/<init>(Ljava/lang/String;)V
invokevirtual com/google/gson/TypeAdapter/fromJson(Ljava/io/Reader;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 4
.end method

.method public final fromJsonTree(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
.signature "(Lcom/google/gson/JsonElement;)TT;"
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
new com/google/gson/internal/bind/JsonTreeReader
dup
aload 1
invokespecial com/google/gson/internal/bind/JsonTreeReader/<init>(Lcom/google/gson/JsonElement;)V
invokevirtual com/google/gson/TypeAdapter/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new com/google/gson/JsonIOException
dup
aload 1
invokespecial com/google/gson/JsonIOException/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method public final nullSafe()Lcom/google/gson/TypeAdapter;
.signature "()Lcom/google/gson/TypeAdapter<TT;>;"
new com/google/gson/TypeAdapter$1
dup
aload 0
invokespecial com/google/gson/TypeAdapter$1/<init>(Lcom/google/gson/TypeAdapter;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public abstract read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.signature "(Lcom/google/gson/stream/JsonReader;)TT;"
.throws java/io/IOException
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
.signature "(TT;)Ljava/lang/String;"
.throws java/io/IOException
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 2
aload 0
aload 2
aload 1
invokevirtual com/google/gson/TypeAdapter/toJson(Ljava/io/Writer;Ljava/lang/Object;)V
aload 2
invokevirtual java/io/StringWriter/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public final toJson(Ljava/io/Writer;Ljava/lang/Object;)V
.signature "(Ljava/io/Writer;TT;)V"
.throws java/io/IOException
aload 0
new com/google/gson/stream/JsonWriter
dup
aload 1
invokespecial com/google/gson/stream/JsonWriter/<init>(Ljava/io/Writer;)V
aload 2
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 4
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
.signature "(TT;)Lcom/google/gson/JsonElement;"
.catch java/io/IOException from L0 to L1 using L2
L0:
new com/google/gson/internal/bind/JsonTreeWriter
dup
invokespecial com/google/gson/internal/bind/JsonTreeWriter/<init>()V
astore 2
aload 0
aload 2
aload 1
invokevirtual com/google/gson/TypeAdapter/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
aload 2
invokevirtual com/google/gson/internal/bind/JsonTreeWriter/get()Lcom/google/gson/JsonElement;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new com/google/gson/JsonIOException
dup
aload 1
invokespecial com/google/gson/JsonIOException/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public abstract write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.signature "(Lcom/google/gson/stream/JsonWriter;TT;)V"
.throws java/io/IOException
.end method
