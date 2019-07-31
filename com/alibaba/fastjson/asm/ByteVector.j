.bytecode 50.0
.class public synchronized com/alibaba/fastjson/asm/ByteVector
.super java/lang/Object

.field 'data' [B

.field 'length' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
bipush 64
newarray byte
putfield com/alibaba/fastjson/asm/ByteVector/data [B
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
newarray byte
putfield com/alibaba/fastjson/asm/ByteVector/data [B
return
.limit locals 2
.limit stack 2
.end method

.method private enlarge(I)V
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
arraylength
iconst_2
imul
istore 2
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/length I
iload 1
iadd
istore 1
iload 2
iload 1
if_icmple L0
iload 2
istore 1
L1:
iload 1
newarray byte
astore 3
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
iconst_0
aload 3
iconst_0
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/length I
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 3
putfield com/alibaba/fastjson/asm/ByteVector/data [B
return
L0:
goto L1
.limit locals 4
.limit stack 5
.end method

.method put11(II)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/length I
istore 3
iload 3
iconst_2
iadd
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
arraylength
if_icmple L0
aload 0
iconst_2
invokespecial com/alibaba/fastjson/asm/ByteVector/enlarge(I)V
L0:
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
astore 5
iload 3
iconst_1
iadd
istore 4
aload 5
iload 3
iload 1
i2b
bastore
aload 5
iload 4
iload 2
i2b
bastore
aload 0
iload 4
iconst_1
iadd
putfield com/alibaba/fastjson/asm/ByteVector/length I
aload 0
areturn
.limit locals 6
.limit stack 3
.end method

.method put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/length I
istore 4
iload 4
iconst_3
iadd
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
arraylength
if_icmple L0
aload 0
iconst_3
invokespecial com/alibaba/fastjson/asm/ByteVector/enlarge(I)V
L0:
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
astore 5
iload 4
iconst_1
iadd
istore 3
aload 5
iload 4
iload 1
i2b
bastore
iload 3
iconst_1
iadd
istore 1
aload 5
iload 3
iload 2
bipush 8
iushr
i2b
bastore
aload 5
iload 1
iload 2
i2b
bastore
aload 0
iload 1
iconst_1
iadd
putfield com/alibaba/fastjson/asm/ByteVector/length I
aload 0
areturn
.limit locals 6
.limit stack 4
.end method

.method public putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/length I
istore 2
iload 2
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
arraylength
if_icmple L0
aload 0
iconst_1
invokespecial com/alibaba/fastjson/asm/ByteVector/enlarge(I)V
L0:
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
iload 2
iload 1
i2b
bastore
aload 0
iload 2
iconst_1
iadd
putfield com/alibaba/fastjson/asm/ByteVector/length I
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/length I
iload 3
iadd
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
arraylength
if_icmple L0
aload 0
iload 3
invokespecial com/alibaba/fastjson/asm/ByteVector/enlarge(I)V
L0:
aload 1
ifnull L1
aload 1
iload 2
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/length I
iload 3
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
L1:
aload 0
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/length I
iload 3
iadd
putfield com/alibaba/fastjson/asm/ByteVector/length I
aload 0
areturn
.limit locals 4
.limit stack 5
.end method

.method public putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/length I
istore 3
iload 3
iconst_4
iadd
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
arraylength
if_icmple L0
aload 0
iconst_4
invokespecial com/alibaba/fastjson/asm/ByteVector/enlarge(I)V
L0:
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
astore 4
iload 3
iconst_1
iadd
istore 2
aload 4
iload 3
iload 1
bipush 24
iushr
i2b
bastore
iload 2
iconst_1
iadd
istore 3
aload 4
iload 2
iload 1
bipush 16
iushr
i2b
bastore
iload 3
iconst_1
iadd
istore 2
aload 4
iload 3
iload 1
bipush 8
iushr
i2b
bastore
aload 4
iload 2
iload 1
i2b
bastore
aload 0
iload 2
iconst_1
iadd
putfield com/alibaba/fastjson/asm/ByteVector/length I
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method public putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/length I
istore 2
iload 2
iconst_2
iadd
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
arraylength
if_icmple L0
aload 0
iconst_2
invokespecial com/alibaba/fastjson/asm/ByteVector/enlarge(I)V
L0:
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
astore 4
iload 2
iconst_1
iadd
istore 3
aload 4
iload 2
iload 1
bipush 8
iushr
i2b
bastore
aload 4
iload 3
iload 1
i2b
bastore
aload 0
iload 3
iconst_1
iadd
putfield com/alibaba/fastjson/asm/ByteVector/length I
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method public putUTF8(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/ByteVector;
aload 1
invokevirtual java/lang/String/length()I
istore 4
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/length I
istore 3
iload 3
iconst_2
iadd
iload 4
iadd
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
arraylength
if_icmple L0
aload 0
iload 4
iconst_2
iadd
invokespecial com/alibaba/fastjson/asm/ByteVector/enlarge(I)V
L0:
aload 0
getfield com/alibaba/fastjson/asm/ByteVector/data [B
astore 6
iload 3
iconst_1
iadd
istore 2
aload 6
iload 3
iload 4
bipush 8
iushr
i2b
bastore
aload 6
iload 2
iload 4
i2b
bastore
iconst_0
istore 3
iload 2
iconst_1
iadd
istore 2
L1:
iload 3
iload 4
if_icmpge L2
aload 1
iload 3
invokevirtual java/lang/String/charAt(I)C
istore 5
iload 5
iconst_1
if_icmplt L3
iload 5
bipush 127
if_icmpgt L3
aload 6
iload 2
iload 5
i2b
bastore
iload 3
iconst_1
iadd
istore 3
iload 2
iconst_1
iadd
istore 2
goto L1
L3:
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
L2:
aload 0
iload 2
putfield com/alibaba/fastjson/asm/ByteVector/length I
aload 0
areturn
.limit locals 7
.limit stack 4
.end method
