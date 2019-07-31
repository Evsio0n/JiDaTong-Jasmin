.bytecode 50.0
.class public synchronized com/flurry/android/CrcMessageDigest
.super java/security/MessageDigest

.field private 'a' Ljava/util/zip/CRC32;

.method public <init>()V
aload 0
ldc "CRC"
invokespecial java/security/MessageDigest/<init>(Ljava/lang/String;)V
aload 0
new java/util/zip/CRC32
dup
invokespecial java/util/zip/CRC32/<init>()V
putfield com/flurry/android/CrcMessageDigest/a Ljava/util/zip/CRC32;
return
.limit locals 1
.limit stack 3
.end method

.method protected engineDigest()[B
aload 0
getfield com/flurry/android/CrcMessageDigest/a Ljava/util/zip/CRC32;
invokevirtual java/util/zip/CRC32/getValue()J
lstore 1
iconst_4
newarray byte
dup
iconst_0
ldc2_w -16777216L
lload 1
land
bipush 24
lshr
l2i
i2b
bastore
dup
iconst_1
ldc2_w 16711680L
lload 1
land
bipush 16
lshr
l2i
i2b
bastore
dup
iconst_2
ldc2_w 65280L
lload 1
land
bipush 8
lshr
l2i
i2b
bastore
dup
iconst_3
lload 1
ldc2_w 255L
land
l2i
i2b
bastore
areturn
.limit locals 3
.limit stack 7
.end method

.method protected engineReset()V
aload 0
getfield com/flurry/android/CrcMessageDigest/a Ljava/util/zip/CRC32;
invokevirtual java/util/zip/CRC32/reset()V
return
.limit locals 1
.limit stack 1
.end method

.method protected engineUpdate(B)V
aload 0
getfield com/flurry/android/CrcMessageDigest/a Ljava/util/zip/CRC32;
iload 1
invokevirtual java/util/zip/CRC32/update(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected engineUpdate([BII)V
aload 0
getfield com/flurry/android/CrcMessageDigest/a Ljava/util/zip/CRC32;
aload 1
iload 2
iload 3
invokevirtual java/util/zip/CRC32/update([BII)V
return
.limit locals 4
.limit stack 4
.end method

.method public getChecksum()I
aload 0
invokevirtual com/flurry/android/CrcMessageDigest/engineDigest()[B
invokestatic java/nio/ByteBuffer/wrap([B)Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/getInt()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDigest()[B
aload 0
invokevirtual com/flurry/android/CrcMessageDigest/engineDigest()[B
areturn
.limit locals 1
.limit stack 1
.end method
