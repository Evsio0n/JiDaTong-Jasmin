.bytecode 50.0
.class public synchronized abstract enum com/google/gson/LongSerializationPolicy
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/google/gson/LongSerializationPolicy;>;"
.inner class static final enum inner com/google/gson/LongSerializationPolicy$1
.inner class static final enum inner com/google/gson/LongSerializationPolicy$2

.field private static final synthetic '$VALUES' [Lcom/google/gson/LongSerializationPolicy;

.field public static final enum 'DEFAULT' Lcom/google/gson/LongSerializationPolicy;

.field public static final enum 'STRING' Lcom/google/gson/LongSerializationPolicy;

.method static <clinit>()V
new com/google/gson/LongSerializationPolicy$1
dup
ldc "DEFAULT"
iconst_0
invokespecial com/google/gson/LongSerializationPolicy$1/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/LongSerializationPolicy/DEFAULT Lcom/google/gson/LongSerializationPolicy;
new com/google/gson/LongSerializationPolicy$2
dup
ldc "STRING"
iconst_1
invokespecial com/google/gson/LongSerializationPolicy$2/<init>(Ljava/lang/String;I)V
putstatic com/google/gson/LongSerializationPolicy/STRING Lcom/google/gson/LongSerializationPolicy;
iconst_2
anewarray com/google/gson/LongSerializationPolicy
dup
iconst_0
getstatic com/google/gson/LongSerializationPolicy/DEFAULT Lcom/google/gson/LongSerializationPolicy;
aastore
dup
iconst_1
getstatic com/google/gson/LongSerializationPolicy/STRING Lcom/google/gson/LongSerializationPolicy;
aastore
putstatic com/google/gson/LongSerializationPolicy/$VALUES [Lcom/google/gson/LongSerializationPolicy;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method synthetic <init>(Ljava/lang/String;ILcom/google/gson/LongSerializationPolicy$1;)V
aload 0
aload 1
iload 2
invokespecial com/google/gson/LongSerializationPolicy/<init>(Ljava/lang/String;I)V
return
.limit locals 4
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/LongSerializationPolicy;
ldc com/google/gson/LongSerializationPolicy
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/google/gson/LongSerializationPolicy
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/google/gson/LongSerializationPolicy;
getstatic com/google/gson/LongSerializationPolicy/$VALUES [Lcom/google/gson/LongSerializationPolicy;
invokevirtual [Lcom/google/gson/LongSerializationPolicy;/clone()Ljava/lang/Object;
checkcast [Lcom/google/gson/LongSerializationPolicy;
areturn
.limit locals 0
.limit stack 1
.end method

.method public abstract serialize(Ljava/lang/Long;)Lcom/google/gson/JsonElement;
.end method
