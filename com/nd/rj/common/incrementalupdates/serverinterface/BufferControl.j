.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/serverinterface/BufferControl
.super java/lang/Object

.field private static final 'BUFFER_SIZE' [I

.field private 'mAutoIncreaseBuffer' Z

.field private 'mBuffer' [B

.field private 'mCurrentPosition' I

.method static <clinit>()V
iconst_1
istore 1
bipush 7
newarray int
putstatic com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/BUFFER_SIZE [I
iconst_0
istore 0
L0:
iload 0
bipush 7
if_icmplt L1
return
L1:
getstatic com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/BUFFER_SIZE [I
iload 0
iload 1
sipush 1024
imul
iastore
iload 1
iconst_2
imul
istore 1
iload 0
iconst_1
iadd
istore 0
goto L0
.limit locals 2
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/checkParam()V
aload 0
iconst_1
putfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mAutoIncreaseBuffer Z
aload 0
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/initDefaultPosition()V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(IZ)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/checkParam()V
aload 0
iload 2
putfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mAutoIncreaseBuffer Z
iload 1
iflt L0
iload 1
getstatic com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/BUFFER_SIZE [I
arraylength
iconst_1
isub
if_icmple L1
L0:
aload 0
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/initDefaultPosition()V
return
L1:
aload 0
iload 1
putfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mCurrentPosition I
return
.limit locals 3
.limit stack 3
.end method

.method private checkParam()V
getstatic com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/BUFFER_SIZE [I
ifnull L0
getstatic com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/BUFFER_SIZE [I
arraylength
ifne L1
L0:
new java/security/InvalidParameterException
dup
invokespecial java/security/InvalidParameterException/<init>()V
athrow
L1:
return
.limit locals 1
.limit stack 2
.end method

.method private increaseBuffer()I
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mCurrentPosition I
getstatic com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/BUFFER_SIZE [I
arraylength
iconst_1
isub
if_icmpge L0
aload 0
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mCurrentPosition I
iconst_1
iadd
putfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mCurrentPosition I
L0:
getstatic com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/BUFFER_SIZE [I
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mCurrentPosition I
iaload
ireturn
.limit locals 1
.limit stack 3
.end method

.method private initDefaultPosition()V
aload 0
getstatic com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/BUFFER_SIZE [I
arraylength
iconst_2
idiv
putfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mCurrentPosition I
return
.limit locals 1
.limit stack 3
.end method

.method private isMaxBufferSize()Z
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mBuffer [B
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mBuffer [B
arraylength
getstatic com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/BUFFER_SIZE [I
getstatic com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/BUFFER_SIZE [I
arraylength
iconst_1
isub
iaload
if_icmpne L1
iconst_1
ireturn
.limit locals 1
.limit stack 4
.end method

.method public getBuffer()[B
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mAutoIncreaseBuffer Z
ifeq L0
aload 0
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/isMaxBufferSize()Z
ifeq L1
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mBuffer [B
iconst_0
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mBuffer [B
arraylength
iconst_0
invokestatic java/util/Arrays/fill([BIIB)V
L2:
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mBuffer [B
areturn
L1:
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mBuffer [B
ifnonnull L3
getstatic com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/BUFFER_SIZE [I
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mCurrentPosition I
iaload
istore 1
L4:
aload 0
iload 1
newarray byte
putfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mBuffer [B
goto L2
L3:
aload 0
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/increaseBuffer()I
istore 1
goto L4
L0:
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mBuffer [B
ifnonnull L5
aload 0
getstatic com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/BUFFER_SIZE [I
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mCurrentPosition I
iaload
newarray byte
putfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mBuffer [B
goto L2
L5:
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mBuffer [B
iconst_0
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mBuffer [B
arraylength
iconst_0
invokestatic java/util/Arrays/fill([BIIB)V
goto L2
.limit locals 2
.limit stack 4
.end method

.method public getCurrentPosition()I
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mCurrentPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isMinBufferSize()Z
aload 0
getfield com/nd/rj/common/incrementalupdates/serverinterface/BufferControl/mCurrentPosition I
ifle L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method
