.bytecode 50.0
.class public synchronized com/ta/utdid2/android/utils/StringUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;
aload 0
ifnull L0
aload 0
instanceof java/lang/String
ifeq L1
aload 0
checkcast java/lang/String
invokevirtual java/lang/String/toString()Ljava/lang/String;
areturn
L1:
aload 0
instanceof java/lang/Integer
ifeq L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L2:
aload 0
instanceof java/lang/Long
ifeq L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L3:
aload 0
instanceof java/lang/Double
ifeq L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
checkcast java/lang/Double
invokevirtual java/lang/Double/doubleValue()D
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L4:
aload 0
instanceof java/lang/Float
ifeq L5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
checkcast java/lang/Float
invokevirtual java/lang/Float/floatValue()F
invokevirtual java/lang/StringBuilder/append(F)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L5:
aload 0
instanceof java/lang/Short
ifeq L6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
checkcast java/lang/Short
invokevirtual java/lang/Short/shortValue()S
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L6:
aload 0
instanceof java/lang/Byte
ifeq L7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
checkcast java/lang/Byte
invokevirtual java/lang/Byte/byteValue()B
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L7:
aload 0
instanceof java/lang/Boolean
ifeq L8
aload 0
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/toString()Ljava/lang/String;
areturn
L8:
aload 0
instanceof java/lang/Character
ifeq L9
aload 0
checkcast java/lang/Character
invokevirtual java/lang/Character/toString()Ljava/lang/String;
areturn
L9:
aload 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 1
.limit stack 3
.end method

.method public static hashCode(Ljava/lang/String;)I
iconst_0
istore 2
aload 0
invokevirtual java/lang/String/length()I
ifle L0
aload 0
invokevirtual java/lang/String/toCharArray()[C
astore 0
iconst_0
istore 1
L1:
iload 1
istore 3
iload 2
aload 0
arraylength
if_icmpge L2
iload 1
bipush 31
imul
aload 0
iload 2
caload
iadd
istore 1
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
iconst_0
istore 3
L2:
iload 3
ireturn
.limit locals 4
.limit stack 3
.end method

.method public static isEmpty(Ljava/lang/String;)Z
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
ifle L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method
