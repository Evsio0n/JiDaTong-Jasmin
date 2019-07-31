.bytecode 50.0
.class public synchronized com/ta/utdid2/android/utils/IntUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getBytes(I)[B
iload 0
sipush 256
irem
i2b
istore 1
iload 0
bipush 8
ishr
istore 0
iload 0
sipush 256
irem
i2b
istore 2
iload 0
bipush 8
ishr
istore 0
iload 0
sipush 256
irem
i2b
istore 3
iconst_4
newarray byte
dup
iconst_0
iload 0
bipush 8
ishr
sipush 256
irem
i2b
bastore
dup
iconst_1
iload 3
bastore
dup
iconst_2
iload 2
bastore
dup
iconst_3
iload 1
bastore
areturn
.limit locals 4
.limit stack 5
.end method

.method public static getBytes([BI)[B
aload 0
arraylength
iconst_4
if_icmpne L0
aload 0
iconst_3
iload 1
sipush 256
irem
i2b
bastore
iload 1
bipush 8
ishr
istore 1
aload 0
iconst_2
iload 1
sipush 256
irem
i2b
bastore
iload 1
bipush 8
ishr
istore 1
aload 0
iconst_1
iload 1
sipush 256
irem
i2b
bastore
aload 0
iconst_0
iload 1
bipush 8
ishr
sipush 256
irem
i2b
bastore
aload 0
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method
