.bytecode 50.0
.class public synchronized android/support/v4/util/TimeUtils
.super java/lang/Object

.field public static final 'HUNDRED_DAY_FIELD_LEN' I = 19


.field private static final 'SECONDS_PER_DAY' I = 86400


.field private static final 'SECONDS_PER_HOUR' I = 3600


.field private static final 'SECONDS_PER_MINUTE' I = 60


.field private static 'sFormatStr' [C

.field private static final 'sFormatSync' Ljava/lang/Object;

.method static <clinit>()V
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic android/support/v4/util/TimeUtils/sFormatSync Ljava/lang/Object;
bipush 24
newarray char
putstatic android/support/v4/util/TimeUtils/sFormatStr [C
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static accumField(IIZI)I
iload 0
bipush 99
if_icmpgt L0
iload 2
ifeq L1
iload 3
iconst_3
if_icmplt L1
L0:
iload 1
iconst_3
iadd
ireturn
L1:
iload 0
bipush 9
if_icmpgt L2
iload 2
ifeq L3
iload 3
iconst_2
if_icmplt L3
L2:
iload 1
iconst_2
iadd
ireturn
L3:
iload 2
ifne L4
iload 0
ifle L5
L4:
iload 1
iconst_1
iadd
ireturn
L5:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
lload 0
lconst_0
lcmp
ifne L0
aload 4
ldc "--"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
return
L0:
lload 0
lload 2
lsub
aload 4
iconst_0
invokestatic android/support/v4/util/TimeUtils/formatDuration(JLjava/io/PrintWriter;I)V
return
.limit locals 5
.limit stack 4
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
lload 0
aload 2
iconst_0
invokestatic android/support/v4/util/TimeUtils/formatDuration(JLjava/io/PrintWriter;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
getstatic android/support/v4/util/TimeUtils/sFormatSync Ljava/lang/Object;
astore 4
aload 4
monitorenter
L0:
lload 0
iload 3
invokestatic android/support/v4/util/TimeUtils/formatDurationLocked(JI)I
istore 3
aload 2
new java/lang/String
dup
getstatic android/support/v4/util/TimeUtils/sFormatStr [C
iconst_0
iload 3
invokespecial java/lang/String/<init>([CII)V
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 4
monitorexit
L1:
return
L2:
astore 2
L3:
aload 4
monitorexit
L4:
aload 2
athrow
.limit locals 5
.limit stack 6
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
getstatic android/support/v4/util/TimeUtils/sFormatSync Ljava/lang/Object;
astore 4
aload 4
monitorenter
L0:
lload 0
iconst_0
invokestatic android/support/v4/util/TimeUtils/formatDurationLocked(JI)I
istore 3
aload 2
getstatic android/support/v4/util/TimeUtils/sFormatStr [C
iconst_0
iload 3
invokevirtual java/lang/StringBuilder/append([CII)Ljava/lang/StringBuilder;
pop
aload 4
monitorexit
L1:
return
L2:
astore 2
L3:
aload 4
monitorexit
L4:
aload 2
athrow
.limit locals 5
.limit stack 4
.end method

.method private static formatDurationLocked(JI)I
getstatic android/support/v4/util/TimeUtils/sFormatStr [C
arraylength
iload 2
if_icmpge L0
iload 2
newarray char
putstatic android/support/v4/util/TimeUtils/sFormatStr [C
L0:
getstatic android/support/v4/util/TimeUtils/sFormatStr [C
astore 14
lload 0
lconst_0
lcmp
ifne L1
L2:
iload 2
iconst_1
isub
ifge L3
aload 14
iconst_0
bipush 32
castore
goto L2
L3:
aload 14
iconst_0
bipush 48
castore
iconst_1
ireturn
L1:
lload 0
lconst_0
lcmp
ifle L4
bipush 43
istore 3
L5:
lload 0
ldc2_w 1000L
lrem
l2i
istore 12
lload 0
ldc2_w 1000L
ldiv
l2d
invokestatic java/lang/Math/floor(D)D
d2i
istore 5
iconst_0
istore 7
iconst_0
istore 8
iconst_0
istore 9
iload 5
istore 4
iload 5
ldc_w 86400
if_icmple L6
iload 5
ldc_w 86400
idiv
istore 7
iload 5
ldc_w 86400
iload 7
imul
isub
istore 4
L6:
iload 4
istore 5
iload 4
sipush 3600
if_icmple L7
iload 4
sipush 3600
idiv
istore 8
iload 4
iload 8
sipush 3600
imul
isub
istore 5
L7:
iload 5
istore 6
iload 5
bipush 60
if_icmple L8
iload 5
bipush 60
idiv
istore 9
iload 5
iload 9
bipush 60
imul
isub
istore 6
L8:
iconst_0
istore 10
iconst_0
istore 11
iload 2
ifeq L9
iload 7
iconst_1
iconst_0
iconst_0
invokestatic android/support/v4/util/TimeUtils/accumField(IIZI)I
istore 4
iload 4
ifle L10
iconst_1
istore 13
L11:
iload 4
iload 8
iconst_1
iload 13
iconst_2
invokestatic android/support/v4/util/TimeUtils/accumField(IIZI)I
iadd
istore 4
iload 4
ifle L12
iconst_1
istore 13
L13:
iload 4
iload 9
iconst_1
iload 13
iconst_2
invokestatic android/support/v4/util/TimeUtils/accumField(IIZI)I
iadd
istore 4
iload 4
ifle L14
iconst_1
istore 13
L15:
iload 4
iload 6
iconst_1
iload 13
iconst_2
invokestatic android/support/v4/util/TimeUtils/accumField(IIZI)I
iadd
istore 5
iload 5
ifle L16
iconst_3
istore 4
L17:
iload 5
iload 12
iconst_2
iconst_1
iload 4
invokestatic android/support/v4/util/TimeUtils/accumField(IIZI)I
iconst_1
iadd
iadd
istore 5
iload 11
istore 4
L18:
iload 4
istore 10
iload 5
iload 2
if_icmpge L9
aload 14
iload 4
bipush 32
castore
iload 4
iconst_1
iadd
istore 4
iload 5
iconst_1
iadd
istore 5
goto L18
L4:
bipush 45
istore 3
lload 0
lneg
lstore 0
goto L5
L10:
iconst_0
istore 13
goto L11
L12:
iconst_0
istore 13
goto L13
L14:
iconst_0
istore 13
goto L15
L16:
iconst_0
istore 4
goto L17
L9:
aload 14
iload 10
iload 3
castore
iload 10
iconst_1
iadd
istore 5
iload 2
ifeq L19
iconst_1
istore 2
L20:
aload 14
iload 7
bipush 100
iload 5
iconst_0
iconst_0
invokestatic android/support/v4/util/TimeUtils/printField([CICIZI)I
istore 7
iload 7
iload 5
if_icmpeq L21
iconst_1
istore 13
L22:
iload 2
ifeq L23
iconst_2
istore 4
L24:
aload 14
iload 8
bipush 104
iload 7
iload 13
iload 4
invokestatic android/support/v4/util/TimeUtils/printField([CICIZI)I
istore 7
iload 7
iload 5
if_icmpeq L25
iconst_1
istore 13
L26:
iload 2
ifeq L27
iconst_2
istore 4
L28:
aload 14
iload 9
bipush 109
iload 7
iload 13
iload 4
invokestatic android/support/v4/util/TimeUtils/printField([CICIZI)I
istore 7
iload 7
iload 5
if_icmpeq L29
iconst_1
istore 13
L30:
iload 2
ifeq L31
iconst_2
istore 4
L32:
aload 14
iload 6
bipush 115
iload 7
iload 13
iload 4
invokestatic android/support/v4/util/TimeUtils/printField([CICIZI)I
istore 4
iload 2
ifeq L33
iload 4
iload 5
if_icmpeq L33
iconst_3
istore 2
L34:
aload 14
iload 12
bipush 109
iload 4
iconst_1
iload 2
invokestatic android/support/v4/util/TimeUtils/printField([CICIZI)I
istore 2
aload 14
iload 2
bipush 115
castore
iload 2
iconst_1
iadd
ireturn
L19:
iconst_0
istore 2
goto L20
L21:
iconst_0
istore 13
goto L22
L23:
iconst_0
istore 4
goto L24
L25:
iconst_0
istore 13
goto L26
L27:
iconst_0
istore 4
goto L28
L29:
iconst_0
istore 13
goto L30
L31:
iconst_0
istore 4
goto L32
L33:
iconst_0
istore 2
goto L34
.limit locals 15
.limit stack 6
.end method

.method private static printField([CICIZI)I
iload 4
ifne L0
iload 3
istore 6
iload 1
ifle L1
L0:
iload 4
ifeq L2
iload 5
iconst_3
if_icmpge L3
L2:
iload 1
istore 6
iload 3
istore 7
iload 1
bipush 99
if_icmple L4
L3:
iload 1
bipush 100
idiv
istore 6
aload 0
iload 3
iload 6
bipush 48
iadd
i2c
castore
iload 3
iconst_1
iadd
istore 7
iload 1
iload 6
bipush 100
imul
isub
istore 6
L4:
iload 4
ifeq L5
iload 5
iconst_2
if_icmpge L6
L5:
iload 6
bipush 9
if_icmpgt L6
iload 6
istore 5
iload 7
istore 1
iload 3
iload 7
if_icmpeq L7
L6:
iload 6
bipush 10
idiv
istore 3
aload 0
iload 7
iload 3
bipush 48
iadd
i2c
castore
iload 7
iconst_1
iadd
istore 1
iload 6
iload 3
bipush 10
imul
isub
istore 5
L7:
aload 0
iload 1
iload 5
bipush 48
iadd
i2c
castore
iload 1
iconst_1
iadd
istore 1
aload 0
iload 1
iload 2
castore
iload 1
iconst_1
iadd
istore 6
L1:
iload 6
ireturn
.limit locals 8
.limit stack 4
.end method
