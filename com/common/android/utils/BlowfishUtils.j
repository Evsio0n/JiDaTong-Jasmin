.bytecode 50.0
.class public synchronized com/common/android/utils/BlowfishUtils
.super java/lang/Object

.field private static final 'LETTER_CONUT' I = 26


.field private static final 'MAX_LEN' I = 255


.field private static final 'MIN_LEN' I = 16


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getBlowFish()Ljava/lang/String;
bipush 16
sipush 255
invokestatic com/common/android/utils/BlowfishUtils/getBlowFish(II)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 2
.end method

.method public static getBlowFish(II)Ljava/lang/String;
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
astore 3
iconst_0
istore 2
L0:
iload 2
iload 0
if_icmpge L1
aload 3
iload 1
invokevirtual java/util/Random/nextInt(I)I
istore 2
goto L0
L1:
new java/lang/StringBuffer
dup
iload 2
invokespecial java/lang/StringBuffer/<init>(I)V
astore 4
iconst_0
istore 0
L2:
iload 0
iload 2
if_icmpge L3
aload 4
aload 3
bipush 26
invokevirtual java/util/Random/nextInt(I)I
bipush 97
iadd
i2c
invokevirtual java/lang/StringBuffer/append(C)Ljava/lang/StringBuffer;
pop
iload 0
iconst_1
iadd
istore 0
goto L2
L3:
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
.limit locals 5
.limit stack 3
.end method
