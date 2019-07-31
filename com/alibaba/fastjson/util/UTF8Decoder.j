.bytecode 50.0
.class public synchronized com/alibaba/fastjson/util/UTF8Decoder
.super java/nio/charset/CharsetDecoder
.inner class private static Surrogate inner com/alibaba/fastjson/util/UTF8Decoder$Surrogate outer com/alibaba/fastjson/util/UTF8Decoder

.field private static final 'charset' Ljava/nio/charset/Charset;

.method static <clinit>()V
ldc "UTF-8"
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
putstatic com/alibaba/fastjson/util/UTF8Decoder/charset Ljava/nio/charset/Charset;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
getstatic com/alibaba/fastjson/util/UTF8Decoder/charset Ljava/nio/charset/Charset;
fconst_1
fconst_1
invokespecial java/nio/charset/CharsetDecoder/<init>(Ljava/nio/charset/Charset;FF)V
return
.limit locals 1
.limit stack 4
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
aload 1
invokevirtual java/nio/ByteBuffer/array()[B
astore 11
aload 1
invokevirtual java/nio/ByteBuffer/arrayOffset()I
aload 1
invokevirtual java/nio/ByteBuffer/position()I
iadd
istore 3
aload 1
invokevirtual java/nio/ByteBuffer/arrayOffset()I
aload 1
invokevirtual java/nio/ByteBuffer/limit()I
iadd
istore 6
aload 2
invokevirtual java/nio/CharBuffer/array()[C
astore 12
aload 2
invokevirtual java/nio/CharBuffer/arrayOffset()I
aload 2
invokevirtual java/nio/CharBuffer/position()I
iadd
istore 5
aload 2
invokevirtual java/nio/CharBuffer/arrayOffset()I
aload 2
invokevirtual java/nio/CharBuffer/limit()I
iadd
istore 7
iload 6
iload 3
isub
iload 7
iload 5
isub
invokestatic java/lang/Math/min(II)I
istore 8
iload 5
istore 4
L0:
iload 4
iload 5
iload 8
iadd
if_icmpge L1
aload 11
iload 3
baload
iflt L1
aload 12
iload 4
aload 11
iload 3
baload
i2c
castore
iload 4
iconst_1
iadd
istore 4
iload 3
iconst_1
iadd
istore 3
goto L0
L2:
aload 12
iload 4
iload 5
i2c
castore
iload 3
iconst_1
iadd
istore 3
iload 4
iconst_1
iadd
istore 4
L3:
iload 3
iload 6
if_icmpge L4
aload 11
iload 3
baload
istore 5
iload 5
iflt L5
iload 4
iload 7
if_icmplt L2
aload 1
iload 3
iload 6
aload 2
iload 4
iconst_1
invokestatic com/alibaba/fastjson/util/UTF8Decoder/xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
areturn
L5:
iload 5
iconst_5
ishr
bipush -2
if_icmpne L6
iload 6
iload 3
isub
iconst_2
if_icmplt L7
iload 4
iload 7
if_icmplt L8
L7:
aload 1
iload 3
iload 6
aload 2
iload 4
iconst_2
invokestatic com/alibaba/fastjson/util/UTF8Decoder/xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
areturn
L8:
aload 11
iload 3
iconst_1
iadd
baload
istore 8
iload 5
iload 8
invokestatic com/alibaba/fastjson/util/UTF8Decoder/isMalformed2(II)Z
ifeq L9
aload 1
iload 3
aload 2
iload 4
iconst_2
invokestatic com/alibaba/fastjson/util/UTF8Decoder/malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
areturn
L9:
aload 12
iload 4
iload 5
bipush 6
ishl
iload 8
ixor
sipush 3968
ixor
i2c
castore
iload 3
iconst_2
iadd
istore 3
iload 4
iconst_1
iadd
istore 4
goto L3
L6:
iload 5
iconst_4
ishr
bipush -2
if_icmpne L10
iload 6
iload 3
isub
iconst_3
if_icmplt L11
iload 4
iload 7
if_icmplt L12
L11:
aload 1
iload 3
iload 6
aload 2
iload 4
iconst_3
invokestatic com/alibaba/fastjson/util/UTF8Decoder/xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
areturn
L12:
aload 11
iload 3
iconst_1
iadd
baload
istore 8
aload 11
iload 3
iconst_2
iadd
baload
istore 9
iload 5
iload 8
iload 9
invokestatic com/alibaba/fastjson/util/UTF8Decoder/isMalformed3(III)Z
ifeq L13
aload 1
iload 3
aload 2
iload 4
iconst_3
invokestatic com/alibaba/fastjson/util/UTF8Decoder/malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
areturn
L13:
aload 12
iload 4
iload 5
bipush 12
ishl
iload 8
bipush 6
ishl
ixor
iload 9
ixor
sipush 8064
ixor
i2c
castore
iload 3
iconst_3
iadd
istore 3
iload 4
iconst_1
iadd
istore 4
goto L3
L10:
iload 5
iconst_3
ishr
bipush -2
if_icmpne L14
iload 6
iload 3
isub
iconst_4
if_icmplt L15
iload 7
iload 4
isub
iconst_2
if_icmpge L16
L15:
aload 1
iload 3
iload 6
aload 2
iload 4
iconst_4
invokestatic com/alibaba/fastjson/util/UTF8Decoder/xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
areturn
L16:
aload 11
iload 3
iconst_1
iadd
baload
istore 8
aload 11
iload 3
iconst_2
iadd
baload
istore 9
aload 11
iload 3
iconst_3
iadd
baload
istore 10
iload 5
bipush 7
iand
bipush 18
ishl
iload 8
bipush 63
iand
bipush 12
ishl
ior
iload 9
bipush 63
iand
bipush 6
ishl
ior
iload 10
bipush 63
iand
ior
istore 5
iload 8
iload 9
iload 10
invokestatic com/alibaba/fastjson/util/UTF8Decoder/isMalformed4(III)Z
ifne L17
iload 5
invokestatic com/alibaba/fastjson/util/UTF8Decoder$Surrogate/neededFor(I)Z
ifne L18
L17:
aload 1
iload 3
aload 2
iload 4
iconst_4
invokestatic com/alibaba/fastjson/util/UTF8Decoder/malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
areturn
L18:
iload 4
iconst_1
iadd
istore 8
aload 12
iload 4
iload 5
invokestatic com/alibaba/fastjson/util/UTF8Decoder$Surrogate/high(I)C
castore
iload 8
iconst_1
iadd
istore 4
aload 12
iload 8
iload 5
invokestatic com/alibaba/fastjson/util/UTF8Decoder$Surrogate/low(I)C
castore
iload 3
iconst_4
iadd
istore 3
goto L3
L14:
aload 1
iload 3
aload 2
iload 4
iconst_1
invokestatic com/alibaba/fastjson/util/UTF8Decoder/malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
areturn
L4:
aload 1
iload 3
iload 6
aload 2
iload 4
iconst_0
invokestatic com/alibaba/fastjson/util/UTF8Decoder/xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
areturn
L1:
goto L3
.limit locals 13
.limit stack 6
.end method

.method private static final isMalformed2(II)Z
iload 0
bipush 30
iand
ifeq L0
iload 1
sipush 192
iand
sipush 128
if_icmpeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private static isMalformed3(III)Z
iload 0
bipush -32
if_icmpne L0
iload 1
sipush 224
iand
sipush 128
if_icmpeq L1
L0:
iload 1
sipush 192
iand
sipush 128
if_icmpne L1
iload 2
sipush 192
iand
sipush 128
if_icmpeq L2
L1:
iconst_1
ireturn
L2:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method private static final isMalformed4(III)Z
iload 0
sipush 192
iand
sipush 128
if_icmpne L0
iload 1
sipush 192
iand
sipush 128
if_icmpne L0
iload 2
sipush 192
iand
sipush 128
if_icmpeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method private static isNotContinuation(I)Z
iload 0
sipush 192
iand
sipush 128
if_icmpeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private static lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
iconst_1
istore 2
L0:
iload 2
iload 1
if_icmpge L1
aload 0
invokevirtual java/nio/ByteBuffer/get()B
invokestatic com/alibaba/fastjson/util/UTF8Decoder/isNotContinuation(I)Z
ifeq L2
iload 2
invokestatic java/nio/charset/CoderResult/malformedForLength(I)Ljava/nio/charset/CoderResult;
areturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
iload 1
invokestatic java/nio/charset/CoderResult/malformedForLength(I)Ljava/nio/charset/CoderResult;
areturn
.limit locals 3
.limit stack 2
.end method

.method private static malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
aload 0
iload 1
aload 0
invokevirtual java/nio/ByteBuffer/arrayOffset()I
isub
invokevirtual java/nio/ByteBuffer/position(I)Ljava/nio/Buffer;
pop
aload 0
iload 4
invokestatic com/alibaba/fastjson/util/UTF8Decoder/malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
astore 5
aload 0
iload 1
aload 2
iload 3
invokestatic com/alibaba/fastjson/util/UTF8Decoder/updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V
aload 5
areturn
.limit locals 6
.limit stack 4
.end method

.method public static malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
iconst_2
istore 2
iload 1
tableswitch 1
L0
L1
L2
L3
default : L4
L4:
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L0:
aload 0
invokevirtual java/nio/ByteBuffer/get()B
istore 1
iload 1
iconst_2
ishr
bipush -2
if_icmpne L5
aload 0
invokevirtual java/nio/ByteBuffer/remaining()I
iconst_4
if_icmpge L6
getstatic java/nio/charset/CoderResult/UNDERFLOW Ljava/nio/charset/CoderResult;
areturn
L6:
aload 0
iconst_5
invokestatic com/alibaba/fastjson/util/UTF8Decoder/lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
areturn
L5:
iload 1
iconst_1
ishr
bipush -2
if_icmpne L7
aload 0
invokevirtual java/nio/ByteBuffer/remaining()I
iconst_5
if_icmpge L8
getstatic java/nio/charset/CoderResult/UNDERFLOW Ljava/nio/charset/CoderResult;
areturn
L8:
aload 0
bipush 6
invokestatic com/alibaba/fastjson/util/UTF8Decoder/lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
areturn
L7:
iconst_1
invokestatic java/nio/charset/CoderResult/malformedForLength(I)Ljava/nio/charset/CoderResult;
areturn
L1:
iconst_1
invokestatic java/nio/charset/CoderResult/malformedForLength(I)Ljava/nio/charset/CoderResult;
areturn
L2:
aload 0
invokevirtual java/nio/ByteBuffer/get()B
istore 1
aload 0
invokevirtual java/nio/ByteBuffer/get()B
istore 3
iload 1
bipush -32
if_icmpne L9
iload 3
sipush 224
iand
sipush 128
if_icmpeq L10
L9:
iload 2
istore 1
iload 3
invokestatic com/alibaba/fastjson/util/UTF8Decoder/isNotContinuation(I)Z
ifeq L11
L10:
iconst_1
istore 1
L11:
iload 1
invokestatic java/nio/charset/CoderResult/malformedForLength(I)Ljava/nio/charset/CoderResult;
areturn
L3:
aload 0
invokevirtual java/nio/ByteBuffer/get()B
sipush 255
iand
istore 1
aload 0
invokevirtual java/nio/ByteBuffer/get()B
sipush 255
iand
istore 2
iload 1
sipush 244
if_icmpgt L12
iload 1
sipush 240
if_icmpne L13
iload 2
sipush 144
if_icmplt L12
iload 2
sipush 191
if_icmpgt L12
L13:
iload 1
sipush 244
if_icmpne L14
iload 2
sipush 240
iand
sipush 128
if_icmpne L12
L14:
iload 2
invokestatic com/alibaba/fastjson/util/UTF8Decoder/isNotContinuation(I)Z
ifeq L15
L12:
iconst_1
invokestatic java/nio/charset/CoderResult/malformedForLength(I)Ljava/nio/charset/CoderResult;
areturn
L15:
aload 0
invokevirtual java/nio/ByteBuffer/get()B
invokestatic com/alibaba/fastjson/util/UTF8Decoder/isNotContinuation(I)Z
ifeq L16
iconst_2
invokestatic java/nio/charset/CoderResult/malformedForLength(I)Ljava/nio/charset/CoderResult;
areturn
L16:
iconst_3
invokestatic java/nio/charset/CoderResult/malformedForLength(I)Ljava/nio/charset/CoderResult;
areturn
.limit locals 4
.limit stack 2
.end method

.method static final updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V
aload 0
iload 1
invokevirtual java/nio/Buffer/position(I)Ljava/nio/Buffer;
pop
aload 2
iload 3
invokevirtual java/nio/Buffer/position(I)Ljava/nio/Buffer;
pop
return
.limit locals 4
.limit stack 2
.end method

.method private static xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
aload 0
iload 1
aload 3
iload 4
invokestatic com/alibaba/fastjson/util/UTF8Decoder/updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V
iload 5
ifeq L0
iload 2
iload 1
isub
iload 5
if_icmpge L1
L0:
getstatic java/nio/charset/CoderResult/UNDERFLOW Ljava/nio/charset/CoderResult;
areturn
L1:
getstatic java/nio/charset/CoderResult/OVERFLOW Ljava/nio/charset/CoderResult;
areturn
.limit locals 6
.limit stack 4
.end method

.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
aload 0
aload 1
aload 2
invokespecial com/alibaba/fastjson/util/UTF8Decoder/decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
areturn
.limit locals 3
.limit stack 3
.end method
