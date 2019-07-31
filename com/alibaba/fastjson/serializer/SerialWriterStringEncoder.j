.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/SerialWriterStringEncoder
.super java/lang/Object

.field private final 'encoder' Ljava/nio/charset/CharsetEncoder;

.method public <init>(Ljava/nio/charset/Charset;)V
aload 0
aload 1
invokevirtual java/nio/charset/Charset/newEncoder()Ljava/nio/charset/CharsetEncoder;
getstatic java/nio/charset/CodingErrorAction/REPLACE Ljava/nio/charset/CodingErrorAction;
invokevirtual java/nio/charset/CharsetEncoder/onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
getstatic java/nio/charset/CodingErrorAction/REPLACE Ljava/nio/charset/CodingErrorAction;
invokevirtual java/nio/charset/CharsetEncoder/onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
invokespecial com/alibaba/fastjson/serializer/SerialWriterStringEncoder/<init>(Ljava/nio/charset/CharsetEncoder;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/nio/charset/CharsetEncoder;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/SerialWriterStringEncoder/encoder Ljava/nio/charset/CharsetEncoder;
return
.limit locals 2
.limit stack 2
.end method

.method private static scale(IF)I
iload 0
i2d
fload 1
f2d
dmul
d2i
ireturn
.limit locals 2
.limit stack 4
.end method

.method public encode([CII)[B
iload 3
ifne L0
iconst_0
newarray byte
areturn
L0:
aload 0
getfield com/alibaba/fastjson/serializer/SerialWriterStringEncoder/encoder Ljava/nio/charset/CharsetEncoder;
invokevirtual java/nio/charset/CharsetEncoder/reset()Ljava/nio/charset/CharsetEncoder;
pop
aload 0
aload 1
iload 2
iload 3
iload 3
aload 0
getfield com/alibaba/fastjson/serializer/SerialWriterStringEncoder/encoder Ljava/nio/charset/CharsetEncoder;
invokevirtual java/nio/charset/CharsetEncoder/maxBytesPerChar()F
invokestatic com/alibaba/fastjson/serializer/SerialWriterStringEncoder/scale(IF)I
invokestatic com/alibaba/fastjson/util/ThreadLocalCache/getBytes(I)[B
invokevirtual com/alibaba/fastjson/serializer/SerialWriterStringEncoder/encode([CII[B)[B
areturn
.limit locals 4
.limit stack 6
.end method

.method public encode([CII[B)[B
.catch java/nio/charset/CharacterCodingException from L0 to L1 using L2
.catch java/nio/charset/CharacterCodingException from L1 to L3 using L2
aload 4
invokestatic java/nio/ByteBuffer/wrap([B)Ljava/nio/ByteBuffer;
astore 5
aload 1
iload 2
iload 3
invokestatic java/nio/CharBuffer/wrap([CII)Ljava/nio/CharBuffer;
astore 1
L0:
aload 0
getfield com/alibaba/fastjson/serializer/SerialWriterStringEncoder/encoder Ljava/nio/charset/CharsetEncoder;
aload 1
aload 5
iconst_1
invokevirtual java/nio/charset/CharsetEncoder/encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
astore 1
aload 1
invokevirtual java/nio/charset/CoderResult/isUnderflow()Z
ifne L1
aload 1
invokevirtual java/nio/charset/CoderResult/throwException()V
L1:
aload 0
getfield com/alibaba/fastjson/serializer/SerialWriterStringEncoder/encoder Ljava/nio/charset/CharsetEncoder;
aload 5
invokevirtual java/nio/charset/CharsetEncoder/flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
astore 1
aload 1
invokevirtual java/nio/charset/CoderResult/isUnderflow()Z
ifne L3
aload 1
invokevirtual java/nio/charset/CoderResult/throwException()V
L3:
aload 5
invokevirtual java/nio/ByteBuffer/position()I
istore 2
iload 2
newarray byte
astore 1
aload 4
iconst_0
aload 1
iconst_0
iload 2
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 1
areturn
L2:
astore 1
new com/alibaba/fastjson/JSONException
dup
aload 1
invokevirtual java/nio/charset/CharacterCodingException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
.limit locals 6
.limit stack 5
.end method

.method public getEncoder()Ljava/nio/charset/CharsetEncoder;
aload 0
getfield com/alibaba/fastjson/serializer/SerialWriterStringEncoder/encoder Ljava/nio/charset/CharsetEncoder;
areturn
.limit locals 1
.limit stack 1
.end method
