.bytecode 50.0
.class public final synchronized com/google/gson/internal/bind/JsonTreeWriter
.super com/google/gson/stream/JsonWriter
.inner class static final inner com/google/gson/internal/bind/JsonTreeWriter$1

.field private static final 'SENTINEL_CLOSED' Lcom/google/gson/JsonPrimitive;

.field private static final 'UNWRITABLE_WRITER' Ljava/io/Writer;

.field private 'pendingName' Ljava/lang/String;

.field private 'product' Lcom/google/gson/JsonElement;

.field private final 'stack' Ljava/util/List; signature "Ljava/util/List<Lcom/google/gson/JsonElement;>;"

.method static <clinit>()V
new com/google/gson/internal/bind/JsonTreeWriter$1
dup
invokespecial com/google/gson/internal/bind/JsonTreeWriter$1/<init>()V
putstatic com/google/gson/internal/bind/JsonTreeWriter/UNWRITABLE_WRITER Ljava/io/Writer;
new com/google/gson/JsonPrimitive
dup
ldc "closed"
invokespecial com/google/gson/JsonPrimitive/<init>(Ljava/lang/String;)V
putstatic com/google/gson/internal/bind/JsonTreeWriter/SENTINEL_CLOSED Lcom/google/gson/JsonPrimitive;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>()V
aload 0
getstatic com/google/gson/internal/bind/JsonTreeWriter/UNWRITABLE_WRITER Ljava/io/Writer;
invokespecial com/google/gson/stream/JsonWriter/<init>(Ljava/io/Writer;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
aload 0
getstatic com/google/gson/JsonNull/INSTANCE Lcom/google/gson/JsonNull;
putfield com/google/gson/internal/bind/JsonTreeWriter/product Lcom/google/gson/JsonElement;
return
.limit locals 1
.limit stack 3
.end method

.method private peek()Lcom/google/gson/JsonElement;
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
areturn
.limit locals 1
.limit stack 3
.end method

.method private put(Lcom/google/gson/JsonElement;)V
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/pendingName Ljava/lang/String;
ifnull L0
aload 1
invokevirtual com/google/gson/JsonElement/isJsonNull()Z
ifeq L1
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeWriter/getSerializeNulls()Z
ifeq L2
L1:
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeWriter/peek()Lcom/google/gson/JsonElement;
checkcast com/google/gson/JsonObject
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/pendingName Ljava/lang/String;
aload 1
invokevirtual com/google/gson/JsonObject/add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
L2:
aload 0
aconst_null
putfield com/google/gson/internal/bind/JsonTreeWriter/pendingName Ljava/lang/String;
return
L0:
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L3
aload 0
aload 1
putfield com/google/gson/internal/bind/JsonTreeWriter/product Lcom/google/gson/JsonElement;
return
L3:
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeWriter/peek()Lcom/google/gson/JsonElement;
astore 2
aload 2
instanceof com/google/gson/JsonArray
ifeq L4
aload 2
checkcast com/google/gson/JsonArray
aload 1
invokevirtual com/google/gson/JsonArray/add(Lcom/google/gson/JsonElement;)V
return
L4:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 3
.limit stack 3
.end method

.method public beginArray()Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
new com/google/gson/JsonArray
dup
invokespecial com/google/gson/JsonArray/<init>()V
astore 1
aload 0
aload 1
invokespecial com/google/gson/internal/bind/JsonTreeWriter/put(Lcom/google/gson/JsonElement;)V
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public beginObject()Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
new com/google/gson/JsonObject
dup
invokespecial com/google/gson/JsonObject/<init>()V
astore 1
aload 0
aload 1
invokespecial com/google/gson/internal/bind/JsonTreeWriter/put(Lcom/google/gson/JsonElement;)V
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public close()V
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
new java/io/IOException
dup
ldc "Incomplete document"
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
getstatic com/google/gson/internal/bind/JsonTreeWriter/SENTINEL_CLOSED Lcom/google/gson/JsonPrimitive;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 1
.limit stack 3
.end method

.method public endArray()Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/pendingName Ljava/lang/String;
ifnull L1
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L1:
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeWriter/peek()Lcom/google/gson/JsonElement;
instanceof com/google/gson/JsonArray
ifeq L2
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
aload 0
areturn
L2:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 3
.end method

.method public endObject()Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/pendingName Ljava/lang/String;
ifnull L1
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L1:
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeWriter/peek()Lcom/google/gson/JsonElement;
instanceof com/google/gson/JsonObject
ifeq L2
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
aload 0
areturn
L2:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 3
.end method

.method public flush()V
.throws java/io/IOException
return
.limit locals 1
.limit stack 0
.end method

.method public get()Lcom/google/gson/JsonElement;
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected one JSON element but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/product Lcom/google/gson/JsonElement;
areturn
.limit locals 1
.limit stack 4
.end method

.method public name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/stack Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
aload 0
getfield com/google/gson/internal/bind/JsonTreeWriter/pendingName Ljava/lang/String;
ifnull L1
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L1:
aload 0
invokespecial com/google/gson/internal/bind/JsonTreeWriter/peek()Lcom/google/gson/JsonElement;
instanceof com/google/gson/JsonObject
ifeq L2
aload 0
aload 1
putfield com/google/gson/internal/bind/JsonTreeWriter/pendingName Ljava/lang/String;
aload 0
areturn
L2:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public nullValue()Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
getstatic com/google/gson/JsonNull/INSTANCE Lcom/google/gson/JsonNull;
invokespecial com/google/gson/internal/bind/JsonTreeWriter/put(Lcom/google/gson/JsonElement;)V
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public value(D)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeWriter/isLenient()Z
ifne L0
dload 1
invokestatic java/lang/Double/isNaN(D)Z
ifne L1
dload 1
invokestatic java/lang/Double/isInfinite(D)Z
ifeq L0
L1:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "JSON forbids NaN and infinities: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
dload 1
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
new com/google/gson/JsonPrimitive
dup
dload 1
invokestatic java/lang/Double/valueOf(D)Ljava/lang/Double;
invokespecial com/google/gson/JsonPrimitive/<init>(Ljava/lang/Number;)V
invokespecial com/google/gson/internal/bind/JsonTreeWriter/put(Lcom/google/gson/JsonElement;)V
aload 0
areturn
.limit locals 3
.limit stack 5
.end method

.method public value(J)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
new com/google/gson/JsonPrimitive
dup
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokespecial com/google/gson/JsonPrimitive/<init>(Ljava/lang/Number;)V
invokespecial com/google/gson/internal/bind/JsonTreeWriter/put(Lcom/google/gson/JsonElement;)V
aload 0
areturn
.limit locals 3
.limit stack 5
.end method

.method public value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 1
ifnonnull L0
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
areturn
L0:
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeWriter/isLenient()Z
ifne L1
aload 1
invokevirtual java/lang/Number/doubleValue()D
dstore 2
dload 2
invokestatic java/lang/Double/isNaN(D)Z
ifne L2
dload 2
invokestatic java/lang/Double/isInfinite(D)Z
ifeq L1
L2:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "JSON forbids NaN and infinities: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
new com/google/gson/JsonPrimitive
dup
aload 1
invokespecial com/google/gson/JsonPrimitive/<init>(Ljava/lang/Number;)V
invokespecial com/google/gson/internal/bind/JsonTreeWriter/put(Lcom/google/gson/JsonElement;)V
aload 0
areturn
.limit locals 4
.limit stack 4
.end method

.method public value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 1
ifnonnull L0
aload 0
invokevirtual com/google/gson/internal/bind/JsonTreeWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
areturn
L0:
aload 0
new com/google/gson/JsonPrimitive
dup
aload 1
invokespecial com/google/gson/JsonPrimitive/<init>(Ljava/lang/String;)V
invokespecial com/google/gson/internal/bind/JsonTreeWriter/put(Lcom/google/gson/JsonElement;)V
aload 0
areturn
.limit locals 2
.limit stack 4
.end method

.method public value(Z)Lcom/google/gson/stream/JsonWriter;
.throws java/io/IOException
aload 0
new com/google/gson/JsonPrimitive
dup
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokespecial com/google/gson/JsonPrimitive/<init>(Ljava/lang/Boolean;)V
invokespecial com/google/gson/internal/bind/JsonTreeWriter/put(Lcom/google/gson/JsonElement;)V
aload 0
areturn
.limit locals 2
.limit stack 4
.end method
