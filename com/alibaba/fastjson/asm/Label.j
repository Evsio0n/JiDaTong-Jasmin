.bytecode 50.0
.class public synchronized com/alibaba/fastjson/asm/Label
.super java/lang/Object

.field static final 'RESOLVED' I = 2


.field public 'info' Ljava/lang/Object;

.field 'inputStackTop' I

.field 'line' I

.field 'next' Lcom/alibaba/fastjson/asm/Label;

.field 'outputStackMax' I

.field 'position' I

.field private 'referenceCount' I

.field private 'srcAndRefPositions' [I

.field 'status' I

.field 'successor' Lcom/alibaba/fastjson/asm/Label;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private addReference(II)V
aload 0
getfield com/alibaba/fastjson/asm/Label/srcAndRefPositions [I
ifnonnull L0
aload 0
bipush 6
newarray int
putfield com/alibaba/fastjson/asm/Label/srcAndRefPositions [I
L0:
aload 0
getfield com/alibaba/fastjson/asm/Label/referenceCount I
aload 0
getfield com/alibaba/fastjson/asm/Label/srcAndRefPositions [I
arraylength
if_icmplt L1
aload 0
getfield com/alibaba/fastjson/asm/Label/srcAndRefPositions [I
arraylength
bipush 6
iadd
newarray int
astore 4
aload 0
getfield com/alibaba/fastjson/asm/Label/srcAndRefPositions [I
iconst_0
aload 4
iconst_0
aload 0
getfield com/alibaba/fastjson/asm/Label/srcAndRefPositions [I
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 4
putfield com/alibaba/fastjson/asm/Label/srcAndRefPositions [I
L1:
aload 0
getfield com/alibaba/fastjson/asm/Label/srcAndRefPositions [I
astore 4
aload 0
getfield com/alibaba/fastjson/asm/Label/referenceCount I
istore 3
aload 0
iload 3
iconst_1
iadd
putfield com/alibaba/fastjson/asm/Label/referenceCount I
aload 4
iload 3
iload 1
iastore
aload 0
getfield com/alibaba/fastjson/asm/Label/srcAndRefPositions [I
astore 4
aload 0
getfield com/alibaba/fastjson/asm/Label/referenceCount I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/alibaba/fastjson/asm/Label/referenceCount I
aload 4
iload 1
iload 2
iastore
return
.limit locals 5
.limit stack 5
.end method

.method put(Lcom/alibaba/fastjson/asm/MethodWriter;Lcom/alibaba/fastjson/asm/ByteVector;I)V
aload 0
getfield com/alibaba/fastjson/asm/Label/status I
iconst_2
iand
ifne L0
aload 0
iload 3
aload 2
getfield com/alibaba/fastjson/asm/ByteVector/length I
invokespecial com/alibaba/fastjson/asm/Label/addReference(II)V
aload 2
iconst_m1
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
L0:
aload 2
aload 0
getfield com/alibaba/fastjson/asm/Label/position I
iload 3
isub
invokevirtual com/alibaba/fastjson/asm/ByteVector/putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
pop
return
.limit locals 4
.limit stack 3
.end method

.method resolve(Lcom/alibaba/fastjson/asm/MethodWriter;I[B)V
aload 0
aload 0
getfield com/alibaba/fastjson/asm/Label/status I
iconst_2
ior
putfield com/alibaba/fastjson/asm/Label/status I
aload 0
iload 2
putfield com/alibaba/fastjson/asm/Label/position I
iconst_0
istore 4
L0:
iload 4
aload 0
getfield com/alibaba/fastjson/asm/Label/referenceCount I
if_icmpge L1
aload 0
getfield com/alibaba/fastjson/asm/Label/srcAndRefPositions [I
astore 1
iload 4
iconst_1
iadd
istore 5
aload 1
iload 4
iaload
istore 6
aload 0
getfield com/alibaba/fastjson/asm/Label/srcAndRefPositions [I
astore 1
iload 5
iconst_1
iadd
istore 4
aload 1
iload 5
iaload
istore 5
iload 2
iload 6
isub
istore 6
aload 3
iload 5
iload 6
bipush 8
iushr
i2b
bastore
aload 3
iload 5
iconst_1
iadd
iload 6
i2b
bastore
goto L0
L1:
return
.limit locals 7
.limit stack 4
.end method
