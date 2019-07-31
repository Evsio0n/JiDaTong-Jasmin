.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/commonutils/crypto/b
.super java/lang/Object

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a([B)Z
aload 0
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
arraylength
bipush 20
if_icmplt L1
iconst_0
istore 1
L2:
iload 1
bipush 20
if_icmpge L3
aload 0
iload 1
iconst_0
iadd
iconst_0
bastore
iload 1
iconst_1
iadd
istore 1
goto L2
L3:
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method

.method private static a([BI[BII)Z
aload 0
ifnull L0
aload 2
ifnull L0
iload 4
ifgt L1
L0:
iconst_0
ireturn
L1:
aload 0
arraylength
iload 1
iload 4
iadd
if_icmplt L0
aload 2
arraylength
iload 3
iload 4
iadd
if_icmplt L0
iconst_0
istore 5
L2:
iload 5
iload 4
if_icmpge L3
aload 0
iload 1
iload 5
iadd
baload
aload 2
iload 3
iload 5
iadd
baload
if_icmpne L0
iload 5
iconst_1
iadd
istore 5
goto L2
L3:
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method private static a([B[BI)Z
iconst_0
istore 3
aload 0
ifnull L0
aload 1
ifnonnull L1
L0:
iconst_0
ireturn
L1:
iload 2
aload 0
arraylength
if_icmplt L2
iconst_1
ireturn
L2:
iload 3
aload 1
arraylength
if_icmpge L3
iload 3
iload 2
iadd
iconst_1
iadd
aload 0
arraylength
if_icmpgt L3
aload 0
iload 3
iload 2
iadd
aload 1
iload 3
baload
bastore
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method
