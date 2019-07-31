.bytecode 50.0
.class public synchronized com/nd/android/u/controller/utils/CommonUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static generate()Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
ldc "-"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 0
.limit stack 3
.end method

.method public static generate(I)Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuffer/append(J)Ljava/lang/StringBuffer;
ldc "-"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iload 0
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getCategoryFromGenerateId(Ljava/lang/String;)I
aload 0
invokestatic com/nd/android/u/controller/utils/CommonUtils/isBlank(Ljava/lang/String;)Z
ifeq L0
L1:
iconst_0
ireturn
L0:
aload 0
ldc "-"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
iload 1
iconst_m1
if_icmpeq L1
iload 1
iconst_1
iadd
aload 0
invokevirtual java/lang/String/length()I
if_icmpge L1
aload 0
iload 1
iconst_1
iadd
iload 1
iconst_2
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic com/nd/android/u/controller/utils/CommonUtils/parseInt(Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 2
aload 0
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
aload 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static isBlank(Ljava/lang/String;)Z
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/trim()Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static parseDouble(Ljava/lang/String;)D
.catch java/lang/NumberFormatException from L0 to L1 using L2
.catch java/lang/NumberFormatException from L3 to L4 using L5
dconst_0
dstore 1
aload 0
ifnull L1
L0:
aload 0
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dstore 1
L1:
dload 1
dreturn
L2:
astore 3
L3:
aload 0
ldc ","
ldc ""
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dstore 1
L4:
dload 1
dreturn
L5:
astore 0
dconst_0
dreturn
.limit locals 4
.limit stack 3
.end method

.method public static parseInt(Ljava/lang/String;)I
.catch java/lang/NumberFormatException from L0 to L1 using L2
iconst_0
istore 3
aload 0
ifnull L1
L0:
aload 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 3
L1:
iload 3
ireturn
L2:
astore 4
iconst_0
istore 3
aload 0
invokestatic com/nd/android/u/controller/utils/CommonUtils/parseDouble(Ljava/lang/String;)D
dstore 1
dload 1
dconst_0
dcmpl
ifeq L1
dload 1
d2i
ireturn
.limit locals 5
.limit stack 4
.end method
