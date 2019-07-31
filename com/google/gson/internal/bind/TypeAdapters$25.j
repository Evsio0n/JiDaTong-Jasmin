.bytecode 50.0
.class final synchronized com/google/gson/internal/bind/TypeAdapters$25
.super com/google/gson/TypeAdapter
.signature "Lcom/google/gson/TypeAdapter<Lcom/google/gson/JsonElement;>;"
.enclosing method com/google/gson/internal/bind/TypeAdapters
.inner class static final inner com/google/gson/internal/bind/TypeAdapters$25

.method <init>()V
aload 0
invokespecial com/google/gson/TypeAdapter/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
.throws java/io/IOException
getstatic com/google/gson/internal/bind/TypeAdapters$32/$SwitchMap$com$google$gson$stream$JsonToken [I
aload 1
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual com/google/gson/stream/JsonToken/ordinal()I
iaload
tableswitch 1
L0
L1
L2
L3
L4
L5
default : L6
L6:
new java/lang/IllegalArgumentException
dup
invokespecial java/lang/IllegalArgumentException/<init>()V
athrow
L2:
new com/google/gson/JsonPrimitive
dup
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextString()Ljava/lang/String;
invokespecial com/google/gson/JsonPrimitive/<init>(Ljava/lang/String;)V
areturn
L0:
new com/google/gson/JsonPrimitive
dup
new com/google/gson/internal/LazilyParsedNumber
dup
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextString()Ljava/lang/String;
invokespecial com/google/gson/internal/LazilyParsedNumber/<init>(Ljava/lang/String;)V
invokespecial com/google/gson/JsonPrimitive/<init>(Ljava/lang/Number;)V
areturn
L1:
new com/google/gson/JsonPrimitive
dup
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextBoolean()Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokespecial com/google/gson/JsonPrimitive/<init>(Ljava/lang/Boolean;)V
areturn
L3:
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextNull()V
getstatic com/google/gson/JsonNull/INSTANCE Lcom/google/gson/JsonNull;
areturn
L4:
new com/google/gson/JsonArray
dup
invokespecial com/google/gson/JsonArray/<init>()V
astore 2
aload 1
invokevirtual com/google/gson/stream/JsonReader/beginArray()V
L7:
aload 1
invokevirtual com/google/gson/stream/JsonReader/hasNext()Z
ifeq L8
aload 2
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/TypeAdapters$25/read(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
invokevirtual com/google/gson/JsonArray/add(Lcom/google/gson/JsonElement;)V
goto L7
L8:
aload 1
invokevirtual com/google/gson/stream/JsonReader/endArray()V
aload 2
areturn
L5:
new com/google/gson/JsonObject
dup
invokespecial com/google/gson/JsonObject/<init>()V
astore 2
aload 1
invokevirtual com/google/gson/stream/JsonReader/beginObject()V
L9:
aload 1
invokevirtual com/google/gson/stream/JsonReader/hasNext()Z
ifeq L10
aload 2
aload 1
invokevirtual com/google/gson/stream/JsonReader/nextName()Ljava/lang/String;
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/TypeAdapters$25/read(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
invokevirtual com/google/gson/JsonObject/add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
goto L9
L10:
aload 1
invokevirtual com/google/gson/stream/JsonReader/endObject()V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public volatile synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/google/gson/internal/bind/TypeAdapters$25/read(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
areturn
.limit locals 2
.limit stack 2
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V
.throws java/io/IOException
aload 2
ifnull L0
aload 2
invokevirtual com/google/gson/JsonElement/isJsonNull()Z
ifeq L1
L0:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/nullValue()Lcom/google/gson/stream/JsonWriter;
pop
return
L1:
aload 2
invokevirtual com/google/gson/JsonElement/isJsonPrimitive()Z
ifeq L2
aload 2
invokevirtual com/google/gson/JsonElement/getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;
astore 2
aload 2
invokevirtual com/google/gson/JsonPrimitive/isNumber()Z
ifeq L3
aload 1
aload 2
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual com/google/gson/stream/JsonWriter/value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
pop
return
L3:
aload 2
invokevirtual com/google/gson/JsonPrimitive/isBoolean()Z
ifeq L4
aload 1
aload 2
invokevirtual com/google/gson/JsonPrimitive/getAsBoolean()Z
invokevirtual com/google/gson/stream/JsonWriter/value(Z)Lcom/google/gson/stream/JsonWriter;
pop
return
L4:
aload 1
aload 2
invokevirtual com/google/gson/JsonPrimitive/getAsString()Ljava/lang/String;
invokevirtual com/google/gson/stream/JsonWriter/value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
return
L2:
aload 2
invokevirtual com/google/gson/JsonElement/isJsonArray()Z
ifeq L5
aload 1
invokevirtual com/google/gson/stream/JsonWriter/beginArray()Lcom/google/gson/stream/JsonWriter;
pop
aload 2
invokevirtual com/google/gson/JsonElement/getAsJsonArray()Lcom/google/gson/JsonArray;
invokevirtual com/google/gson/JsonArray/iterator()Ljava/util/Iterator;
astore 2
L6:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L7
aload 0
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/internal/bind/TypeAdapters$25/write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V
goto L6
L7:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/endArray()Lcom/google/gson/stream/JsonWriter;
pop
return
L5:
aload 2
invokevirtual com/google/gson/JsonElement/isJsonObject()Z
ifeq L8
aload 1
invokevirtual com/google/gson/stream/JsonWriter/beginObject()Lcom/google/gson/stream/JsonWriter;
pop
aload 2
invokevirtual com/google/gson/JsonElement/getAsJsonObject()Lcom/google/gson/JsonObject;
invokevirtual com/google/gson/JsonObject/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L9:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L10
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 1
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
invokevirtual com/google/gson/stream/JsonWriter/name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
pop
aload 0
aload 1
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/internal/bind/TypeAdapters$25/write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V
goto L9
L10:
aload 1
invokevirtual com/google/gson/stream/JsonWriter/endObject()Lcom/google/gson/stream/JsonWriter;
pop
return
L8:
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Couldn't write "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/internal/bind/TypeAdapters$25/write(Lcom/google/gson/stream/JsonWriter;Lcom/google/gson/JsonElement;)V
return
.limit locals 3
.limit stack 3
.end method
