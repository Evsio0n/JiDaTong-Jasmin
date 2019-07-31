.bytecode 50.0
.class public final synchronized com/google/gson/JsonPrimitive
.super com/google/gson/JsonElement

.field private static final 'PRIMITIVE_TYPES' [Ljava/lang/Class; signature "[Ljava/lang/Class<*>;"

.field private 'value' Ljava/lang/Object;

.method static <clinit>()V
bipush 16
anewarray java/lang/Class
dup
iconst_0
getstatic java/lang/Integer/TYPE Ljava/lang/Class;
aastore
dup
iconst_1
getstatic java/lang/Long/TYPE Ljava/lang/Class;
aastore
dup
iconst_2
getstatic java/lang/Short/TYPE Ljava/lang/Class;
aastore
dup
iconst_3
getstatic java/lang/Float/TYPE Ljava/lang/Class;
aastore
dup
iconst_4
getstatic java/lang/Double/TYPE Ljava/lang/Class;
aastore
dup
iconst_5
getstatic java/lang/Byte/TYPE Ljava/lang/Class;
aastore
dup
bipush 6
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
aastore
dup
bipush 7
getstatic java/lang/Character/TYPE Ljava/lang/Class;
aastore
dup
bipush 8
ldc java/lang/Integer
aastore
dup
bipush 9
ldc java/lang/Long
aastore
dup
bipush 10
ldc java/lang/Short
aastore
dup
bipush 11
ldc java/lang/Float
aastore
dup
bipush 12
ldc java/lang/Double
aastore
dup
bipush 13
ldc java/lang/Byte
aastore
dup
bipush 14
ldc java/lang/Boolean
aastore
dup
bipush 15
ldc java/lang/Character
aastore
putstatic com/google/gson/JsonPrimitive/PRIMITIVE_TYPES [Ljava/lang/Class;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(Ljava/lang/Boolean;)V
aload 0
invokespecial com/google/gson/JsonElement/<init>()V
aload 0
aload 1
invokevirtual com/google/gson/JsonPrimitive/setValue(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Ljava/lang/Character;)V
aload 0
invokespecial com/google/gson/JsonElement/<init>()V
aload 0
aload 1
invokevirtual com/google/gson/JsonPrimitive/setValue(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Ljava/lang/Number;)V
aload 0
invokespecial com/google/gson/JsonElement/<init>()V
aload 0
aload 1
invokevirtual com/google/gson/JsonPrimitive/setValue(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method <init>(Ljava/lang/Object;)V
aload 0
invokespecial com/google/gson/JsonElement/<init>()V
aload 0
aload 1
invokevirtual com/google/gson/JsonPrimitive/setValue(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial com/google/gson/JsonElement/<init>()V
aload 0
aload 1
invokevirtual com/google/gson/JsonPrimitive/setValue(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method

.method private static isIntegral(Lcom/google/gson/JsonPrimitive;)Z
iconst_0
istore 2
iload 2
istore 1
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
instanceof java/lang/Number
ifeq L0
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
checkcast java/lang/Number
astore 0
aload 0
instanceof java/math/BigInteger
ifne L1
aload 0
instanceof java/lang/Long
ifne L1
aload 0
instanceof java/lang/Integer
ifne L1
aload 0
instanceof java/lang/Short
ifne L1
iload 2
istore 1
aload 0
instanceof java/lang/Byte
ifeq L0
L1:
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 3
.limit stack 1
.end method

.method private static isPrimitiveOrString(Ljava/lang/Object;)Z
aload 0
instanceof java/lang/String
ifeq L0
L1:
iconst_1
ireturn
L0:
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 0
getstatic com/google/gson/JsonPrimitive/PRIMITIVE_TYPES [Ljava/lang/Class;
astore 3
aload 3
arraylength
istore 2
iconst_0
istore 1
L2:
iload 1
iload 2
if_icmpge L3
aload 3
iload 1
aaload
aload 0
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifne L1
iload 1
iconst_1
iadd
istore 1
goto L2
L3:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method

.method volatile synthetic deepCopy()Lcom/google/gson/JsonElement;
aload 0
invokevirtual com/google/gson/JsonPrimitive/deepCopy()Lcom/google/gson/JsonPrimitive;
areturn
.limit locals 1
.limit stack 1
.end method

.method deepCopy()Lcom/google/gson/JsonPrimitive;
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
iconst_0
istore 7
aload 0
aload 1
if_acmpne L0
L1:
iconst_1
ireturn
L0:
aload 1
ifnull L2
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
if_acmpeq L3
L2:
iconst_0
ireturn
L3:
aload 1
checkcast com/google/gson/JsonPrimitive
astore 1
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
ifnonnull L4
aload 1
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
ifnull L1
iconst_0
ireturn
L4:
aload 0
invokestatic com/google/gson/JsonPrimitive/isIntegral(Lcom/google/gson/JsonPrimitive;)Z
ifeq L5
aload 1
invokestatic com/google/gson/JsonPrimitive/isIntegral(Lcom/google/gson/JsonPrimitive;)Z
ifeq L5
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual java/lang/Number/longValue()J
aload 1
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual java/lang/Number/longValue()J
lcmp
ifeq L1
iconst_0
ireturn
L5:
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
instanceof java/lang/Number
ifeq L6
aload 1
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
instanceof java/lang/Number
ifeq L6
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual java/lang/Number/doubleValue()D
dstore 2
aload 1
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual java/lang/Number/doubleValue()D
dstore 4
dload 2
dload 4
dcmpl
ifeq L7
iload 7
istore 6
dload 2
invokestatic java/lang/Double/isNaN(D)Z
ifeq L8
iload 7
istore 6
dload 4
invokestatic java/lang/Double/isNaN(D)Z
ifeq L8
L7:
iconst_1
istore 6
L8:
iload 6
ireturn
L6:
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
aload 1
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 8
.limit stack 4
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
instanceof java/math/BigDecimal
ifeq L0
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
checkcast java/math/BigDecimal
areturn
L0:
new java/math/BigDecimal
dup
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokespecial java/math/BigDecimal/<init>(Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
instanceof java/math/BigInteger
ifeq L0
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
checkcast java/math/BigInteger
areturn
L0:
new java/math/BigInteger
dup
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokespecial java/math/BigInteger/<init>(Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public getAsBoolean()Z
aload 0
invokevirtual com/google/gson/JsonPrimitive/isBoolean()Z
ifeq L0
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsBooleanWrapper()Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/booleanValue()Z
ireturn
L0:
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsString()Ljava/lang/String;
invokestatic java/lang/Boolean/parseBoolean(Ljava/lang/String;)Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method getAsBooleanWrapper()Ljava/lang/Boolean;
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
checkcast java/lang/Boolean
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAsByte()B
aload 0
invokevirtual com/google/gson/JsonPrimitive/isNumber()Z
ifeq L0
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual java/lang/Number/byteValue()B
ireturn
L0:
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsString()Ljava/lang/String;
invokestatic java/lang/Byte/parseByte(Ljava/lang/String;)B
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getAsCharacter()C
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsString()Ljava/lang/String;
iconst_0
invokevirtual java/lang/String/charAt(I)C
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getAsDouble()D
aload 0
invokevirtual com/google/gson/JsonPrimitive/isNumber()Z
ifeq L0
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual java/lang/Number/doubleValue()D
dreturn
L0:
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsString()Ljava/lang/String;
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dreturn
.limit locals 1
.limit stack 2
.end method

.method public getAsFloat()F
aload 0
invokevirtual com/google/gson/JsonPrimitive/isNumber()Z
ifeq L0
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual java/lang/Number/floatValue()F
freturn
L0:
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsString()Ljava/lang/String;
invokestatic java/lang/Float/parseFloat(Ljava/lang/String;)F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getAsInt()I
aload 0
invokevirtual com/google/gson/JsonPrimitive/isNumber()Z
ifeq L0
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual java/lang/Number/intValue()I
ireturn
L0:
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsString()Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getAsLong()J
aload 0
invokevirtual com/google/gson/JsonPrimitive/isNumber()Z
ifeq L0
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual java/lang/Number/longValue()J
lreturn
L0:
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsString()Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getAsNumber()Ljava/lang/Number;
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
instanceof java/lang/String
ifeq L0
new com/google/gson/internal/LazilyParsedNumber
dup
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
checkcast java/lang/String
invokespecial com/google/gson/internal/LazilyParsedNumber/<init>(Ljava/lang/String;)V
areturn
L0:
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
checkcast java/lang/Number
areturn
.limit locals 1
.limit stack 3
.end method

.method public getAsShort()S
aload 0
invokevirtual com/google/gson/JsonPrimitive/isNumber()Z
ifeq L0
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual java/lang/Number/shortValue()S
ireturn
L0:
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsString()Ljava/lang/String;
invokestatic java/lang/Short/parseShort(Ljava/lang/String;)S
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getAsString()Ljava/lang/String;
aload 0
invokevirtual com/google/gson/JsonPrimitive/isNumber()Z
ifeq L0
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
L0:
aload 0
invokevirtual com/google/gson/JsonPrimitive/isBoolean()Z
ifeq L1
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsBooleanWrapper()Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/toString()Ljava/lang/String;
areturn
L1:
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
checkcast java/lang/String
areturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
ifnonnull L0
bipush 31
ireturn
L0:
aload 0
invokestatic com/google/gson/JsonPrimitive/isIntegral(Lcom/google/gson/JsonPrimitive;)Z
ifeq L1
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual java/lang/Number/longValue()J
lstore 1
lload 1
bipush 32
lushr
lload 1
lxor
l2i
ireturn
L1:
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
instanceof java/lang/Number
ifeq L2
aload 0
invokevirtual com/google/gson/JsonPrimitive/getAsNumber()Ljava/lang/Number;
invokevirtual java/lang/Number/doubleValue()D
invokestatic java/lang/Double/doubleToLongBits(D)J
lstore 1
lload 1
bipush 32
lushr
lload 1
lxor
l2i
ireturn
L2:
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
invokevirtual java/lang/Object/hashCode()I
ireturn
.limit locals 3
.limit stack 4
.end method

.method public isBoolean()Z
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
instanceof java/lang/Boolean
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isNumber()Z
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
instanceof java/lang/Number
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isString()Z
aload 0
getfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
instanceof java/lang/String
ireturn
.limit locals 1
.limit stack 1
.end method

.method setValue(Ljava/lang/Object;)V
aload 1
instanceof java/lang/Character
ifeq L0
aload 0
aload 1
checkcast java/lang/Character
invokevirtual java/lang/Character/charValue()C
invokestatic java/lang/String/valueOf(C)Ljava/lang/String;
putfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
return
L0:
aload 1
instanceof java/lang/Number
ifne L1
aload 1
invokestatic com/google/gson/JsonPrimitive/isPrimitiveOrString(Ljava/lang/Object;)Z
ifeq L2
L1:
iconst_1
istore 2
L3:
iload 2
invokestatic com/google/gson/internal/$Gson$Preconditions/checkArgument(Z)V
aload 0
aload 1
putfield com/google/gson/JsonPrimitive/value Ljava/lang/Object;
return
L2:
iconst_0
istore 2
goto L3
.limit locals 3
.limit stack 2
.end method
