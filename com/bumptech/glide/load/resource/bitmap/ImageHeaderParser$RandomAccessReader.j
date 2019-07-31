.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader
.super java/lang/Object
.inner class private static RandomAccessReader inner com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader outer com/bumptech/glide/load/resource/bitmap/ImageHeaderParser

.field private final 'data' Ljava/nio/ByteBuffer;

.method public <init>([B)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokestatic java/nio/ByteBuffer/wrap([B)Ljava/nio/ByteBuffer;
putfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/data Ljava/nio/ByteBuffer;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/data Ljava/nio/ByteBuffer;
getstatic java/nio/ByteOrder/BIG_ENDIAN Ljava/nio/ByteOrder;
invokevirtual java/nio/ByteBuffer/order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
pop
return
.limit locals 2
.limit stack 2
.end method

.method public getInt16(I)S
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/data Ljava/nio/ByteBuffer;
iload 1
invokevirtual java/nio/ByteBuffer/getShort(I)S
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getInt32(I)I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/data Ljava/nio/ByteBuffer;
iload 1
invokevirtual java/nio/ByteBuffer/getInt(I)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public length()I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/data Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/array()[B
arraylength
ireturn
.limit locals 1
.limit stack 1
.end method

.method public order(Ljava/nio/ByteOrder;)V
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/data Ljava/nio/ByteBuffer;
aload 1
invokevirtual java/nio/ByteBuffer/order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
pop
return
.limit locals 2
.limit stack 2
.end method
