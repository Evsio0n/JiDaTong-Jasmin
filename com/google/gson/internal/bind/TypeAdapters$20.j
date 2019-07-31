.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$20
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/net/InetAddress;>;"
.enclosing method com/google/gson/internal/bind/TypeAdapters
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$20

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
invokevirtual com/google/gson/internal/bind/TypeAdapters$20/read(Lcom/google/gson/stream/JsonReader;)Ljava/net/InetAddress;
areturn
.limit locals 2
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/net/InetAddress;
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
invokevirtual com/google/gson/stream/JsonReader/nextString()Ljava/lang/String;
invokestatic java/net/InetAddress/getByName(Ljava/lang/String;)Ljava/net/InetAddress;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/net/InetAddress
invokevirtual com/google/gson/internal/bind/TypeAdapters$20/write(Lcom/google/gson/stream/JsonWriter;Ljava/net/InetAddress;)V
return
.limit locals 3
.limit stack 3
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/net/InetAddress;)V
.throws java/io/IOException
aload 2
ifnonnull L0
aconst_null
astore 2
L1:
aload 1
aload 2
invokevirtual com/google/gson/stream/JsonWriter/value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
return
L0:
aload 2
invokevirtual java/net/InetAddress/getHostAddress()Ljava/lang/String;
astore 2
goto L1
.limit locals 3
.limit stack 2
.end method
