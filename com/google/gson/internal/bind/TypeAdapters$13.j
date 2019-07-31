.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$13
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/lang/String;>;"
.enclosing method com/google/gson/internal/bind/TypeAdapters
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$13

.method <init>()V
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/TypeAdapters$13/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;
.throws java/io/IOException
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
astore 2
aload 2
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
if_acmpne L0
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextNull()V
aconst_null
areturn
L0:
aload 2
getstatic com/google/gson/stream/JsonToken/BOOLEAN Lcom/google/gson/stream/JsonToken;
if_acmpne L1
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextBoolean()Z
invokestatic java/lang/Boolean/toString(Z)Ljava/lang/String;
areturn
L1:
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/lang/String
invokevirtual com/google/gson/internal/bind/TypeAdapters$13/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/String;)V
.throws java/io/IOException
aload 1
aload 2
invokevirtual com/google/gson/stream/JsonWriter/value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
return
.limit locals 3
.limit stack 2
.end method
