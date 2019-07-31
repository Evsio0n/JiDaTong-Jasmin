.bytecode 50.0
.class public synchronized abstract com/google/gson/JsonElement
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method abstract deepCopy()Lcom/google/gson/JsonElement;
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
new java/lang/UnsupportedOperationException
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
new java/lang/UnsupportedOperationException
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsBoolean()Z
new java/lang/UnsupportedOperationException
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method getAsBooleanWrapper()Ljava/lang/Boolean;
new java/lang/UnsupportedOperationException
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsByte()B
new java/lang/UnsupportedOperationException
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsCharacter()C
new java/lang/UnsupportedOperationException
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsDouble()D
new java/lang/UnsupportedOperationException
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsFloat()F
new java/lang/UnsupportedOperationException
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsInt()I
new java/lang/UnsupportedOperationException
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsJsonArray()Lcom/google/gson/JsonArray;
aload 0
invokevirtual com/google/gson/JsonElement/isJsonArray()Z
ifeq L0
aload 0
checkcast com/google/gson/JsonArray
areturn
L0:
new java/lang/IllegalStateException
dup
ldc "This is not a JSON Array."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsJsonNull()Lcom/google/gson/JsonNull;
aload 0
invokevirtual com/google/gson/JsonElement/isJsonNull()Z
ifeq L0
aload 0
checkcast com/google/gson/JsonNull
areturn
L0:
new java/lang/IllegalStateException
dup
ldc "This is not a JSON Null."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsJsonObject()Lcom/google/gson/JsonObject;
aload 0
invokevirtual com/google/gson/JsonElement/isJsonObject()Z
ifeq L0
aload 0
checkcast com/google/gson/JsonObject
areturn
L0:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Not a JSON Object: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 4
.end method

.method public getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;
aload 0
invokevirtual com/google/gson/JsonElement/isJsonPrimitive()Z
ifeq L0
aload 0
checkcast com/google/gson/JsonPrimitive
areturn
L0:
new java/lang/IllegalStateException
dup
ldc "This is not a JSON Primitive."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsLong()J
new java/lang/UnsupportedOperationException
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsNumber()Ljava/lang/Number;
new java/lang/UnsupportedOperationException
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsShort()S
new java/lang/UnsupportedOperationException
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public getAsString()Ljava/lang/String;
new java/lang/UnsupportedOperationException
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public isJsonArray()Z
aload 0
instanceof com/google/gson/JsonArray
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isJsonNull()Z
aload 0
instanceof com/google/gson/JsonNull
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isJsonObject()Z
aload 0
instanceof com/google/gson/JsonObject
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isJsonPrimitive()Z
aload 0
instanceof com/google/gson/JsonPrimitive
ireturn
.limit locals 1
.limit stack 1
.end method

.method public toString()Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
L0:
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 1
new com/google/gson/stream/JsonWriter
dup
aload 1
invokespecial com/google/gson/stream/JsonWriter/<init>(Ljava/io/Writer;)V
astore 2
aload 2
iconst_1
invokevirtual com/google/gson/stream/JsonWriter/setLenient(Z)V
aload 0
aload 2
invokestatic com/google/gson/internal/Streams/write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
aload 1
invokevirtual java/io/StringWriter/toString()Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/lang/AssertionError
dup
aload 1
invokespecial java/lang/AssertionError/<init>(Ljava/lang/Object;)V
athrow
.limit locals 3
.limit stack 3
.end method
