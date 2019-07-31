.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$3
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/lang/Boolean;>;"
.enclosing method com/google/gson/internal/bind/TypeAdapters
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$3

.method <init>()V
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Boolean;
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
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/STRING Lcom/google/gson/stream/JsonToken;
if_acmpne L1
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextString()Ljava/lang/String;
invokestatic java/lang/Boolean/parseBoolean(Ljava/lang/String;)Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L1:
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextBoolean()Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/TypeAdapters$3/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Boolean;)V
.throws java/io/IOException
aload 2
ifnonnull L0
aload 1
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
pop
return
L0:
aload 1
aload 2
invokevirtual java/lang/Boolean/booleanValue()Z
invokevirtual com/google/gson/stream/JsonWriter/value(Z)Lcom/google/gson/stream/JsonWriter;
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
checkcast java/lang/Boolean
invokevirtual com/google/gson/internal/bind/TypeAdapters$3/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Boolean;)V
return
.limit locals 3
.limit stack 3
.end method
