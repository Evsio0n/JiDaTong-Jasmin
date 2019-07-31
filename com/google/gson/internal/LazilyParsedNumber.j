.bytecode 50.0
.class public final synchronized com/google/gson/internal/LazilyParsedNumber
.super java/lang/Number

.field private final 'value' Ljava/lang/String;

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Number/<init>()V
aload 0
aload 1
putfield com/google/gson/internal/LazilyParsedNumber/value Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private writeReplace()Ljava/lang/Object;
.throws java/io/ObjectStreamException
new java/math/BigDecimal
dup
aload 0
getfield com/google/gson/internal/LazilyParsedNumber/value Ljava/lang/String;
invokespecial java/math/BigDecimal/<init>(Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public doubleValue()D
aload 0
getfield com/google/gson/internal/LazilyParsedNumber/value Ljava/lang/String;
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dreturn
.limit locals 1
.limit stack 2
.end method

.method public floatValue()F
aload 0
getfield com/google/gson/internal/LazilyParsedNumber/value Ljava/lang/String;
invokestatic java/lang/Float/parseFloat(Ljava/lang/String;)F
freturn
.limit locals 1
.limit stack 1
.end method

.method public intValue()I
.catch java/lang/NumberFormatException from L0 to L1 using L2
.catch java/lang/NumberFormatException from L3 to L4 using L5
L0:
aload 0
getfield com/google/gson/internal/LazilyParsedNumber/value Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
L1:
iload 1
ireturn
L2:
astore 4
L3:
aload 0
getfield com/google/gson/internal/LazilyParsedNumber/value Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 2
L4:
lload 2
l2i
ireturn
L5:
astore 4
new java/math/BigInteger
dup
aload 0
getfield com/google/gson/internal/LazilyParsedNumber/value Ljava/lang/String;
invokespecial java/math/BigInteger/<init>(Ljava/lang/String;)V
invokevirtual java/math/BigInteger/intValue()I
ireturn
.limit locals 5
.limit stack 3
.end method

.method public longValue()J
.catch java/lang/NumberFormatException from L0 to L1 using L2
L0:
aload 0
getfield com/google/gson/internal/LazilyParsedNumber/value Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 1
L1:
lload 1
lreturn
L2:
astore 3
new java/math/BigInteger
dup
aload 0
getfield com/google/gson/internal/LazilyParsedNumber/value Ljava/lang/String;
invokespecial java/math/BigInteger/<init>(Ljava/lang/String;)V
invokevirtual java/math/BigInteger/longValue()J
lreturn
.limit locals 4
.limit stack 3
.end method

.method public toString()Ljava/lang/String;
aload 0
getfield com/google/gson/internal/LazilyParsedNumber/value Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
