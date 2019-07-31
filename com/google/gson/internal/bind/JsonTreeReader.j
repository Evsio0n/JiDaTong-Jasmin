.bytecode 50.0
.class public final synchronized com/google/gson/internal/bind/JsonTreeReader
.super com/google/gson/stream/JsonReader
.inner class static final inner com/google/gson/internal/bind/JsonTreeReader$1

.field private static final 'SENTINEL_CLOSED' Ljava/lang/Object;

.field private static final 'UNREADABLE_READER' Ljava/io/Reader;

.field private final 'stack' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/Object;>;"

.method static <clinit>()V
new com/google/gson/internal/bind/JsonTreeReader$1
dup
invokespecial com/google/gson/internal/bind/JsonTreeReader$1/<init>()V
putstatic com/google/gson/internal/bind/JsonTreeReader/UNREADABLE_READER Ljava/io/Reader;
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic com/google/gson/internal/bind/JsonTreeReader/SENTINEL_CLOSED Ljava/lang/Object;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Lcom/google/gson/JsonElement;)V
aload 0
getstatic com/google/gson/internal/bind/JsonTreeReader/UNREADABLE_READER Ljava/io/Reader;
invokespecial com/google/gson/stream/JsonReader/<init>(Ljava/io/Reader;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 3
.end method

.method private expect(Lcom/google/gson/stream/JsonToken;)V
.throws java/io/IOException
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeReader/peek()Lcom/google/gson/stream/JsonToken;
aload 1
if_acmpeq L0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 2
.limit stack 4
.end method

.method private peekStack()Ljava/lang/Object;
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 1
.limit stack 3
.end method

.method private popStack()Ljava/lang/Object;
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
areturn
.limit locals 1
.limit stack 3
.end method

.method public beginArray()V
.throws java/io/IOException
aload 0
getstatic com/google/gson/stream/JsonToken/BEGIN_ARRAY Lcom/google/gson/stream/JsonToken;
invokespecial com/google/gson/internal/bind/JsonTreeReader/expect(Lcom/google/gson/stream/JsonToken;)V
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/peekStack()Ljava/lang/Object;
checkcast com/google/gson/JsonArray
astore 1
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
aload 1
invokevirtual com/google/gson/JsonArray/iterator()Ljava/util/Iterator;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public beginObject()V
.throws java/io/IOException
aload 0
getstatic com/google/gson/stream/JsonToken/BEGIN_OBJECT Lcom/google/gson/stream/JsonToken;
invokespecial com/google/gson/internal/bind/JsonTreeReader/expect(Lcom/google/gson/stream/JsonToken;)V
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/peekStack()Ljava/lang/Object;
checkcast com/google/gson/JsonObject
astore 1
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
aload 1
invokevirtual com/google/gson/JsonObject/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public close()V
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
getstatic com/google/gson/internal/bind/JsonTreeReader/SENTINEL_CLOSED Ljava/lang/Object;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 1
.limit stack 2
.end method

.method public endArray()V
.throws java/io/IOException
aload 0
getstatic com/google/gson/stream/JsonToken/END_ARRAY Lcom/google/gson/stream/JsonToken;
invokespecial com/google/gson/internal/bind/JsonTreeReader/expect(Lcom/google/gson/stream/JsonToken;)V
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/popStack()Ljava/lang/Object;
pop
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/popStack()Ljava/lang/Object;
pop
return
.limit locals 1
.limit stack 2
.end method

.method public endObject()V
.throws java/io/IOException
aload 0
getstatic com/google/gson/stream/JsonToken/END_OBJECT Lcom/google/gson/stream/JsonToken;
invokespecial com/google/gson/internal/bind/JsonTreeReader/expect(Lcom/google/gson/stream/JsonToken;)V
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/popStack()Ljava/lang/Object;
pop
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/popStack()Ljava/lang/Object;
pop
return
.limit locals 1
.limit stack 2
.end method

.method public hasNext()Z
.throws java/io/IOException
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeReader/peek()Lcom/google/gson/stream/JsonToken;
astore 1
aload 1
getstatic com/google/gson/stream/JsonToken/END_OBJECT Lcom/google/gson/stream/JsonToken;
if_acmpeq L0
aload 1
getstatic com/google/gson/stream/JsonToken/END_ARRAY Lcom/google/gson/stream/JsonToken;
if_acmpeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public nextBoolean()Z
.throws java/io/IOException
aload 0
getstatic com/google/gson/stream/JsonToken/BOOLEAN Lcom/google/gson/stream/JsonToken;
invokespecial com/google/gson/internal/bind/JsonTreeReader/expect(Lcom/google/gson/stream/JsonToken;)V
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/popStack()Ljava/lang/Object;
checkcast com/google/gson/JsonPrimitive
invokevirtual com/google/gson/JsonPrimitive/getAsBoolean()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public nextDouble()D
.throws java/io/IOException
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeReader/peek()Lcom/google/gson/stream/JsonToken;
astore 3
aload 3
getstatic com/google/gson/stream/JsonToken/NUMBER Lcom/google/gson/stream/JsonToken;
if_acmpeq L0
aload 3
getstatic com/google/gson/stream/JsonToken/STRING Lcom/google/gson/stream/JsonToken;
if_acmpeq L0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/google/gson/stream/JsonToken/NUMBER Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/peekStack()Ljava/lang/Object;
checkcast com/google/gson/JsonPrimitive
invokevirtual com/google/gson/JsonPrimitive/getAsDouble()D
dstore 1
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeReader/isLenient()Z
ifne L1
dload 1
invokestatic java/lang/Double/isNaN(D)Z
ifne L2
dload 1
invokestatic java/lang/Double/isInfinite(D)Z
ifeq L1
L2:
new java/lang/NumberFormatException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "JSON forbids NaN and infinities: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
dload 1
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/NumberFormatException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/popStack()Ljava/lang/Object;
pop
dload 1
dreturn
.limit locals 4
.limit stack 5
.end method

.method public nextInt()I
.throws java/io/IOException
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeReader/peek()Lcom/google/gson/stream/JsonToken;
astore 2
aload 2
getstatic com/google/gson/stream/JsonToken/NUMBER Lcom/google/gson/stream/JsonToken;
if_acmpeq L0
aload 2
getstatic com/google/gson/stream/JsonToken/STRING Lcom/google/gson/stream/JsonToken;
if_acmpeq L0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/google/gson/stream/JsonToken/NUMBER Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/peekStack()Ljava/lang/Object;
checkcast com/google/gson/JsonPrimitive
invokevirtual com/google/gson/JsonPrimitive/getAsInt()I
istore 1
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/popStack()Ljava/lang/Object;
pop
iload 1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public nextLong()J
.throws java/io/IOException
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeReader/peek()Lcom/google/gson/stream/JsonToken;
astore 3
aload 3
getstatic com/google/gson/stream/JsonToken/NUMBER Lcom/google/gson/stream/JsonToken;
if_acmpeq L0
aload 3
getstatic com/google/gson/stream/JsonToken/STRING Lcom/google/gson/stream/JsonToken;
if_acmpeq L0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/google/gson/stream/JsonToken/NUMBER Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/peekStack()Ljava/lang/Object;
checkcast com/google/gson/JsonPrimitive
invokevirtual com/google/gson/JsonPrimitive/getAsLong()J
lstore 1
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/popStack()Ljava/lang/Object;
pop
lload 1
lreturn
.limit locals 4
.limit stack 4
.end method

.method public nextName()Ljava/lang/String;
.throws java/io/IOException
aload 0
getstatic com/google/gson/stream/JsonToken/NAME Lcom/google/gson/stream/JsonToken;
invokespecial com/google/gson/internal/bind/JsonTreeReader/expect(Lcom/google/gson/stream/JsonToken;)V
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/peekStack()Ljava/lang/Object;
checkcast java/util/Iterator
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 1
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
aload 1
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
areturn
.limit locals 2
.limit stack 2
.end method

.method public nextNull()V
.throws java/io/IOException
aload 0
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
invokespecial com/google/gson/internal/bind/JsonTreeReader/expect(Lcom/google/gson/stream/JsonToken;)V
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/popStack()Ljava/lang/Object;
pop
return
.limit locals 1
.limit stack 2
.end method

.method public nextString()Ljava/lang/String;
.throws java/io/IOException
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeReader/peek()Lcom/google/gson/stream/JsonToken;
astore 1
aload 1
getstatic com/google/gson/stream/JsonToken/STRING Lcom/google/gson/stream/JsonToken;
if_acmpeq L0
aload 1
getstatic com/google/gson/stream/JsonToken/NUMBER Lcom/google/gson/stream/JsonToken;
if_acmpeq L0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/google/gson/stream/JsonToken/STRING Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/popStack()Ljava/lang/Object;
checkcast com/google/gson/JsonPrimitive
invokevirtual com/google/gson/JsonPrimitive/getAsString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L0
getstatic com/google/gson/stream/JsonToken/END_DOCUMENT Lcom/google/gson/stream/JsonToken;
areturn
L0:
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/peekStack()Ljava/lang/Object;
astore 2
aload 2
instanceof java/util/Iterator
ifeq L1
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_2
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
instanceof com/google/gson/JsonObject
istore 1
aload 2
checkcast java/util/Iterator
astore 2
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
iload 1
ifeq L3
getstatic com/google/gson/stream/JsonToken/NAME Lcom/google/gson/stream/JsonToken;
areturn
L3:
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeReader/peek()Lcom/google/gson/stream/JsonToken;
areturn
L2:
iload 1
ifeq L4
getstatic com/google/gson/stream/JsonToken/END_OBJECT Lcom/google/gson/stream/JsonToken;
areturn
L4:
getstatic com/google/gson/stream/JsonToken/END_ARRAY Lcom/google/gson/stream/JsonToken;
areturn
L1:
aload 2
instanceof com/google/gson/JsonObject
ifeq L5
getstatic com/google/gson/stream/JsonToken/BEGIN_OBJECT Lcom/google/gson/stream/JsonToken;
areturn
L5:
aload 2
instanceof com/google/gson/JsonArray
ifeq L6
getstatic com/google/gson/stream/JsonToken/BEGIN_ARRAY Lcom/google/gson/stream/JsonToken;
areturn
L6:
aload 2
instanceof com/google/gson/JsonPrimitive
ifeq L7
aload 2
checkcast com/google/gson/JsonPrimitive
astore 2
aload 2
invokevirtual com/google/gson/JsonPrimitive/isString()Z
ifeq L8
getstatic com/google/gson/stream/JsonToken/STRING Lcom/google/gson/stream/JsonToken;
areturn
L8:
aload 2
invokevirtual com/google/gson/JsonPrimitive/isBoolean()Z
ifeq L9
getstatic com/google/gson/stream/JsonToken/BOOLEAN Lcom/google/gson/stream/JsonToken;
areturn
L9:
aload 2
invokevirtual com/google/gson/JsonPrimitive/isNumber()Z
ifeq L10
getstatic com/google/gson/stream/JsonToken/NUMBER Lcom/google/gson/stream/JsonToken;
areturn
L10:
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L7:
aload 2
instanceof com/google/gson/JsonNull
ifeq L11
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
areturn
L11:
aload 2
getstatic com/google/gson/internal/bind/JsonTreeReader/SENTINEL_CLOSED Ljava/lang/Object;
if_acmpne L12
new java/lang/IllegalStateException
dup
ldc "JsonReader is closed"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L12:
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
.limit locals 3
.limit stack 3
.end method

.method public promoteNameToValue()V
.throws java/io/IOException
aload 0
getstatic com/google/gson/stream/JsonToken/NAME Lcom/google/gson/stream/JsonToken;
invokespecial com/google/gson/internal/bind/JsonTreeReader/expect(Lcom/google/gson/stream/JsonToken;)V
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/peekStack()Ljava/lang/Object;
checkcast java/util/Iterator
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 1
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
aload 1
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/google/gson/internal/bind/JsonTreeReader/stack Ljava/util/List;
new com/google/gson/JsonPrimitive
dup
aload 1
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
invokespecial com/google/gson/JsonPrimitive/<init>(Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 4
.end method

.method public skipValue()V
.throws java/io/IOException
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeReader/peek()Lcom/google/gson/stream/JsonToken;
getstatic com/google/gson/stream/JsonToken/NAME Lcom/google/gson/stream/JsonToken;
if_acmpne L0
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeReader/nextName()Ljava/lang/String;
pop
return
L0:
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeReader/popStack()Ljava/lang/Object;
pop
return
.limit locals 1
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
