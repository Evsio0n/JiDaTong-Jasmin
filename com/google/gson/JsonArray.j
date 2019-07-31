.bytecode 50.0
.class public final synchronized com/google/gson/JsonArray
.super com/google/gson/JsonElement
.implements java/lang/Iterable
.signature "Lcom/google/gson/JsonElement;Ljava/lang/Iterable<Lcom/google/gson/JsonElement;>;"

.field private final 'elements' Ljava/util/List; signature "Ljava/util/List<Lcom/google/gson/JsonElement;>;"

.method public <init>()V
aload 0
invokespecial com/google/gson/JsonElement/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/google/gson/JsonArray/elements Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public add(Lcom/google/gson/JsonElement;)V
aload 1
astore 2
aload 1
ifnonnull L0
getstatic com/google/gson/JsonNull/INSTANCE Lcom/google/gson/JsonNull;
astore 2
L0:
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 3
.limit stack 2
.end method

.method public addAll(Lcom/google/gson/JsonArray;)V
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
aload 1
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method deepCopy()Lcom/google/gson/JsonArray;
new com/google/gson/JsonArray
dup
invokespecial com/google/gson/JsonArray/<init>()V
astore 1
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/deepCopy()Lcom/google/gson/JsonElement;
invokevirtual com/google/gson/JsonArray/add(Lcom/google/gson/JsonElement;)V
goto L0
L1:
aload 1
areturn
.limit locals 3
.limit stack 2
.end method

.method volatile synthetic deepCopy()Lcom/google/gson/JsonElement;
aload 0
invokevirtual com/google/gson/JsonArray/deepCopy()Lcom/google/gson/JsonArray;
areturn
.limit locals 1
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
aload 0
if_acmpeq L0
aload 1
instanceof com/google/gson/JsonArray
ifeq L1
aload 1
checkcast com/google/gson/JsonArray
getfield com/google/gson/JsonArray/elements Ljava/util/List;
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/equals(Ljava/lang/Object;)Z 1
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public get(I)Lcom/google/gson/JsonElement;
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
areturn
.limit locals 2
.limit stack 2
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/getAsBigDecimal()Ljava/math/BigDecimal;
areturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/getAsBigInteger()Ljava/math/BigInteger;
areturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getAsBoolean()Z
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/getAsBoolean()Z
ireturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getAsByte()B
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/getAsByte()B
ireturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getAsCharacter()C
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/getAsCharacter()C
ireturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getAsDouble()D
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/getAsDouble()D
dreturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getAsFloat()F
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/getAsFloat()F
freturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getAsInt()I
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/getAsInt()I
ireturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getAsLong()J
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/getAsLong()J
lreturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getAsNumber()Ljava/lang/Number;
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/getAsNumber()Ljava/lang/Number;
areturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getAsShort()S
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/getAsShort()S
ireturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getAsString()Ljava/lang/String;
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L0
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/getAsString()Ljava/lang/String;
areturn
L0:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/hashCode()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public iterator()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;"
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public size()I
aload 0
getfield com/google/gson/JsonArray/elements Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method
