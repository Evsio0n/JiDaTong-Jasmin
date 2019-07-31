.bytecode 50.0
.class final synchronized enum com/google/gson/LongSerializationPolicy$1
.super com/google/gson/LongSerializationPolicy
.enclosing method com/google/gson/LongSerializationPolicy
.inner class static final enum inner com/google/gson/LongSerializationPolicy$1

.method <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
aconst_null
invokespecial com/google/gson/LongSerializationPolicy/<init>(Ljava/lang/String;ILcom/google/gson/LongSerializationPolicy$1;)V
return
.limit locals 3
.limit stack 4
.end method

.method public serialize(Ljava/lang/Long;)Lcom/google/gson/JsonElement;
new com/google/gson/JsonPrimitive
dup
aload 1
invokespecial com/google/gson/JsonPrimitive/<init>(Ljava/lang/Number;)V
areturn
.limit locals 2
.limit stack 3
.end method
