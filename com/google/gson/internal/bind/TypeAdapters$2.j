.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$2
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Ljava/util/BitSet;>;"
.enclosing method com/google/gson/internal/bind/TypeAdapters
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$2

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
invokevirtual com/google/gson/internal/bind/TypeAdapters$2/read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;
areturn
.limit locals 2
.limit stack 2
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;
.throws java/io/IOException
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
if_acmpne L3
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextNull()V
aconst_null
areturn
L3:
new java/util/BitSet
dup
invokespecial java/util/BitSet/<init>()V
astore 6
aload 1
invokevirtual com/google/gson/stream/JsonReader/beginArray()V
iconst_0
istore 2
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
astore 5
L4:
aload 5
getstatic com/google/gson/stream/JsonToken/END_ARRAY Lcom/google/gson/stream/JsonToken;
if_acmpeq L5
getstatic com/google/gson/internal/bind/TypeAdapters$32/$SwitchMap$com$google$gson$stream$JsonToken [I
aload 5
invokevirtual com/google/gson/stream/JsonToken/ordinal()I
iaload
tableswitch 1
L6
L7
L8
default : L9
L9:
new com/google/gson/JsonSyntaxException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Invalid bitset value type: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextInt()I
ifeq L10
iconst_1
istore 4
L11:
iload 4
ifeq L12
aload 6
iload 2
invokevirtual java/util/BitSet/set(I)V
L12:
iload 2
iconst_1
iadd
istore 2
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
astore 5
goto L4
L10:
iconst_0
istore 4
goto L11
L7:
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextBoolean()Z
istore 4
goto L11
L8:
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextString()Ljava/lang/String;
astore 5
L0:
aload 5
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 3
L1:
iload 3
ifeq L13
iconst_1
istore 4
L14:
goto L11
L13:
iconst_0
istore 4
goto L14
L2:
astore 1
new com/google/gson/JsonSyntaxException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Error: Expecting: bitset number value (1, 0), Found: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/google/gson/JsonSyntaxException/<init>(Ljava/lang/String;)V
athrow
L5:
aload 1
invokevirtual com/google/gson/stream/JsonReader/endArray()V
aload 6
areturn
.limit locals 7
.limit stack 4
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast java/util/BitSet
invokevirtual com/google/gson/internal/bind/TypeAdapters$2/write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V
.throws java/io/IOException
aload 2
ifnonnull L0
aload 1
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
pop
return
L0:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/beginArray()Lcom/google/gson/stream/JsonWriter;
pop
iconst_0
istore 3
L1:
iload 3
aload 2
invokevirtual java/util/BitSet/length()I
if_icmpge L2
aload 2
iload 3
invokevirtual java/util/BitSet/get(I)Z
ifeq L3
iconst_1
istore 4
L4:
aload 1
iload 4
i2l
invokevirtual com/google/gson/stream/JsonWriter/value(J)Lcom/google/gson/stream/JsonWriter;
pop
iload 3
iconst_1
iadd
istore 3
goto L1
L3:
iconst_0
istore 4
goto L4
L2:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/endArray()Lcom/google/gson/stream/JsonWriter;
pop
return
.limit locals 5
.limit stack 3
.end method
