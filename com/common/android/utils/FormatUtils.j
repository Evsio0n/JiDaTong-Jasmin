.bytecode 50.0
.class public synchronized com/common/android/utils/FormatUtils
.super java/lang/Object

.field private static final 'GB_DOUBLE' D = 1.073741824E9D


.field private static final 'GB_INT' I = 1073741824


.field private static final 'KB_DOUBLE' D = 1024.0D


.field private static final 'KB_INT' I = 1048576


.field private static final 'MB_DOUBLE' D = 1048576.0D


.field private static final 'MB_INT' I = 1048576


.field private static final 'MS_DOUBLE' D = 1000.0D


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static formatDoubleNumber(DI)Ljava/lang/String;
invokestatic java/text/NumberFormat/getInstance()Ljava/text/NumberFormat;
astore 3
aload 3
iload 2
invokevirtual java/text/NumberFormat/setMinimumFractionDigits(I)V
aload 3
iload 2
invokevirtual java/text/NumberFormat/setMaximumFractionDigits(I)V
aload 3
dload 0
invokevirtual java/text/NumberFormat/format(D)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public static formatNumber(DI)Ljava/lang/String;
invokestatic java/text/NumberFormat/getInstance()Ljava/text/NumberFormat;
astore 3
aload 3
iload 2
invokevirtual java/text/NumberFormat/setMinimumFractionDigits(I)V
aload 3
iload 2
invokevirtual java/text/NumberFormat/setMaximumFractionDigits(I)V
dload 0
ldc2_w 1.073741824E9D
dcmpl
ifle L0
dload 0
ldc2_w 1.073741824E9D
ddiv
dstore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
dload 0
invokevirtual java/text/NumberFormat/format(D)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "GB"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
dload 0
ldc2_w 1048576.0D
dcmpl
ifle L1
dload 0
ldc2_w 1048576.0D
ddiv
dstore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
dload 0
invokevirtual java/text/NumberFormat/format(D)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "MB"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
dload 0
ldc2_w 1024.0D
ddiv
dstore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
dload 0
invokevirtual java/text/NumberFormat/format(D)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "KB"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method public static millsec2Sec(J)I
lload 0
l2d
ldc2_w 1000.0D
ddiv
invokestatic java/lang/Math/ceil(D)D
invokestatic java/lang/Double/valueOf(D)Ljava/lang/Double;
invokevirtual java/lang/Double/intValue()I
ireturn
.limit locals 2
.limit stack 4
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
invokestatic com/common/android/utils/FormatUtils/parseDouble(Ljava/lang/String;)D
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

.method public static parseLong(Ljava/lang/String;)J
.catch java/lang/NumberFormatException from L0 to L1 using L2
lconst_0
lstore 3
aload 0
ifnull L1
L0:
aload 0
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 3
L1:
lload 3
lreturn
L2:
astore 5
lconst_0
lstore 3
aload 0
invokestatic com/common/android/utils/FormatUtils/parseDouble(Ljava/lang/String;)D
dstore 1
dload 1
dconst_0
dcmpl
ifeq L1
dload 1
d2l
lreturn
.limit locals 6
.limit stack 4
.end method

.method public static parseRelugarDouble(Ljava/lang/String;)D
aload 0
ifnull L0
aload 0
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
dconst_0
dreturn
L1:
aload 0
ldc "K"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
iload 1
iconst_m1
if_icmpeq L2
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseDouble(Ljava/lang/String;)D
ldc2_w 1048576.0D
dmul
dreturn
L2:
aload 0
ldc "M"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
iload 1
iconst_m1
if_icmpeq L3
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseDouble(Ljava/lang/String;)D
ldc2_w 1048576.0D
dmul
dreturn
L3:
aload 0
ldc "G"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 1
iload 1
iconst_m1
if_icmpeq L0
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic com/common/android/utils/FormatUtils/parseDouble(Ljava/lang/String;)D
ldc2_w 1.073741824E9D
dmul
dreturn
.limit locals 2
.limit stack 4
.end method
