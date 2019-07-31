.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$11
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
.enclosing method com/google/gson/internal/bind/TypeAdapters
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$11

.method <init>()V
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
.throws java/io/IOException
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
astore 2
getstatic com/google/gson/internal/bind/TypeAdapters$32/$SwitchMap$com$google$gson$stream$JsonToken [I
aload 2
invokevirtual com/google/gson/stream/JsonToken/ordinal()I
iaload
tableswitch 1
L0
L1
L1
L2
default : L1
L1:
new com/google/gson/JsonSyntaxException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expecting number, got: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextNull()V
aconst_null
areturn
L0:
new com/google/gson/internal/LazilyParsedNumber
dup
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextString()Ljava/lang/String;
invokespecial com/google/gson/internal/LazilyParsedNumber/<init>(Ljava/lang/String;)V
areturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/TypeAdapters$11/read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
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
invokevirtual com/google/gson/internal/bind/TypeAdapters$11/write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
return
.limit locals 3
.limit stack 3
.end method
