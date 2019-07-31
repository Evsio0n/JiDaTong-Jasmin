.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/commonutils/crypto/f
.super java/lang/Object

.field protected final 'a' [B

.field protected final 'b' [B

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
bipush 16
newarray byte
dup
iconst_0
ldc_w 48
bastore
dup
iconst_1
ldc_w 49
bastore
dup
iconst_2
ldc_w 50
bastore
dup
iconst_3
ldc_w 51
bastore
dup
iconst_4
ldc_w 52
bastore
dup
iconst_5
ldc_w 53
bastore
dup
bipush 6
ldc_w 54
bastore
dup
bipush 7
ldc_w 55
bastore
dup
bipush 8
ldc_w 56
bastore
dup
bipush 9
ldc_w 57
bastore
dup
bipush 10
ldc_w 97
bastore
dup
bipush 11
ldc_w 98
bastore
dup
bipush 12
ldc_w 99
bastore
dup
bipush 13
ldc_w 100
bastore
dup
bipush 14
ldc_w 101
bastore
dup
bipush 15
ldc_w 102
bastore
putfield com/alipay/security/mobile/module/commonutils/crypto/f/a [B
aload 0
sipush 128
newarray byte
putfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
aload 0
invokespecial com/alipay/security/mobile/module/commonutils/crypto/f/a()V
return
.limit locals 1
.limit stack 5
.end method

.method private a()V
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/a [B
arraylength
if_icmpge L1
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/a [B
iload 1
baload
iload 1
i2b
bastore
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
bipush 65
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
bipush 97
baload
bastore
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
bipush 66
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
bipush 98
baload
bastore
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
bipush 67
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
bipush 99
baload
bastore
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
bipush 68
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
bipush 100
baload
bastore
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
bipush 69
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
bipush 101
baload
bastore
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
bipush 70
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
bipush 102
baload
bastore
return
.limit locals 2
.limit stack 4
.end method

.method private static a(C)Z
iload 0
bipush 10
if_icmpeq L0
iload 0
bipush 13
if_icmpeq L0
iload 0
bipush 9
if_icmpeq L0
iload 0
bipush 32
if_icmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final a(Ljava/lang/String;Ljava/io/OutputStream;)I
iconst_0
istore 3
aload 1
invokevirtual java/lang/String/length()I
istore 4
L0:
iload 4
ifle L1
aload 1
iload 4
iconst_1
isub
invokevirtual java/lang/String/charAt(I)C
invokestatic com/alipay/security/mobile/module/commonutils/crypto/f/a(C)Z
ifeq L1
iload 4
iconst_1
isub
istore 4
goto L0
L1:
iconst_0
istore 5
L2:
iload 3
iload 4
if_icmpge L3
L4:
iload 3
iload 4
if_icmpge L5
aload 1
iload 3
invokevirtual java/lang/String/charAt(I)C
invokestatic com/alipay/security/mobile/module/commonutils/crypto/f/a(C)Z
ifeq L5
iload 3
iconst_1
iadd
istore 3
goto L4
L5:
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
astore 8
iload 3
iconst_1
iadd
istore 6
aload 8
aload 1
iload 3
invokevirtual java/lang/String/charAt(I)C
baload
istore 7
iload 6
istore 3
L6:
iload 3
iload 4
if_icmpge L7
aload 1
iload 3
invokevirtual java/lang/String/charAt(I)C
invokestatic com/alipay/security/mobile/module/commonutils/crypto/f/a(C)Z
ifeq L7
iload 3
iconst_1
iadd
istore 3
goto L6
L7:
aload 2
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
aload 1
iload 3
invokevirtual java/lang/String/charAt(I)C
baload
iload 7
iconst_4
ishl
ior
invokevirtual java/io/OutputStream/write(I)V
iload 5
iconst_1
iadd
istore 5
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
iload 5
ireturn
.limit locals 9
.limit stack 4
.end method

.method public final a([BIILjava/io/OutputStream;)I
iload 2
istore 5
L0:
iload 5
iload 2
iload 3
iadd
if_icmpge L1
aload 1
iload 5
baload
sipush 255
iand
istore 6
aload 4
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/a [B
iload 6
iconst_4
iushr
baload
invokevirtual java/io/OutputStream/write(I)V
aload 4
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/a [B
iload 6
bipush 15
iand
baload
invokevirtual java/io/OutputStream/write(I)V
iload 5
iconst_1
iadd
istore 5
goto L0
L1:
iload 3
iconst_2
imul
ireturn
.limit locals 7
.limit stack 4
.end method

.method public final a([BILjava/io/OutputStream;)I
iconst_0
istore 6
iload 2
iconst_0
iadd
istore 4
L0:
iload 4
ifle L1
aload 1
iload 4
iconst_1
isub
baload
i2c
invokestatic com/alipay/security/mobile/module/commonutils/crypto/f/a(C)Z
ifeq L1
iload 4
iconst_1
isub
istore 4
goto L0
L1:
iconst_0
istore 5
iload 6
istore 2
L2:
iload 2
iload 4
if_icmpge L3
L4:
iload 2
iload 4
if_icmpge L5
aload 1
iload 2
baload
i2c
invokestatic com/alipay/security/mobile/module/commonutils/crypto/f/a(C)Z
ifeq L5
iload 2
iconst_1
iadd
istore 2
goto L4
L5:
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
astore 8
iload 2
iconst_1
iadd
istore 6
aload 8
aload 1
iload 2
baload
baload
istore 7
iload 6
istore 2
L6:
iload 2
iload 4
if_icmpge L7
aload 1
iload 2
baload
i2c
invokestatic com/alipay/security/mobile/module/commonutils/crypto/f/a(C)Z
ifeq L7
iload 2
iconst_1
iadd
istore 2
goto L6
L7:
aload 3
aload 0
getfield com/alipay/security/mobile/module/commonutils/crypto/f/b [B
aload 1
iload 2
baload
baload
iload 7
iconst_4
ishl
ior
invokevirtual java/io/OutputStream/write(I)V
iload 5
iconst_1
iadd
istore 5
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
iload 5
ireturn
.limit locals 9
.limit stack 4
.end method
