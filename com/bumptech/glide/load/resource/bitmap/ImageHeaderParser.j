.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/ImageHeaderParser
.super java/lang/Object
.inner class public static final enum ImageType inner com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType outer com/bumptech/glide/load/resource/bitmap/ImageHeaderParser
.inner class private static RandomAccessReader inner com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader outer com/bumptech/glide/load/resource/bitmap/ImageHeaderParser
.inner class private static StreamReader inner com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader outer com/bumptech/glide/load/resource/bitmap/ImageHeaderParser

.field private static final 'BYTES_PER_FORMAT' [I

.field private static final 'EXIF_MAGIC_NUMBER' I = 65496


.field private static final 'EXIF_SEGMENT_TYPE' I = 225


.field private static final 'GIF_HEADER' I = 4671814


.field private static final 'INTEL_TIFF_MAGIC_NUMBER' I = 18761


.field private static final 'JPEG_EXIF_SEGMENT_PREAMBLE' Ljava/lang/String; = "Exif\u0000\u0000"

.field private static final 'JPEG_EXIF_SEGMENT_PREAMBLE_BYTES' [B

.field private static final 'MARKER_EOI' I = 217


.field private static final 'MOTOROLA_TIFF_MAGIC_NUMBER' I = 19789


.field private static final 'ORIENTATION_TAG_TYPE' I = 274


.field private static final 'PNG_HEADER' I = -1991225785


.field private static final 'SEGMENT_SOS' I = 218


.field private static final 'SEGMENT_START_ID' I = 255


.field private static final 'TAG' Ljava/lang/String; = "ImageHeaderParser"

.field private final 'streamReader' Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

.method static <clinit>()V
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
bipush 13
newarray int
dup
iconst_0
iconst_0
iastore
dup
iconst_1
iconst_1
iastore
dup
iconst_2
iconst_1
iastore
dup
iconst_3
iconst_2
iastore
dup
iconst_4
iconst_4
iastore
dup
iconst_5
bipush 8
iastore
dup
bipush 6
iconst_1
iastore
dup
bipush 7
iconst_1
iastore
dup
bipush 8
iconst_2
iastore
dup
bipush 9
iconst_4
iastore
dup
bipush 10
bipush 8
iastore
dup
bipush 11
iconst_4
iastore
dup
bipush 12
bipush 8
iastore
putstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/BYTES_PER_FORMAT [I
iconst_0
newarray byte
astore 0
L0:
ldc "Exif\u0000\u0000"
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
astore 1
L1:
aload 1
astore 0
L3:
aload 0
putstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/JPEG_EXIF_SEGMENT_PREAMBLE_BYTES [B
return
L2:
astore 1
goto L3
.limit locals 2
.limit stack 4
.end method

.method public <init>(Ljava/io/InputStream;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader
dup
aload 1
invokespecial com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/<init>(Ljava/io/InputStream;)V
putfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/streamReader Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
return
.limit locals 2
.limit stack 4
.end method

.method private static calcTagOffset(II)I
iload 0
iconst_2
iadd
iload 1
bipush 12
imul
iadd
ireturn
.limit locals 2
.limit stack 3
.end method

.method private getExifSegment()[B
.throws java/io/IOException
L0:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/streamReader Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/getUInt8()S
istore 1
iload 1
sipush 255
if_icmpeq L1
ldc "ImageHeaderParser"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L2
ldc "ImageHeaderParser"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unknown segmentId="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L2:
aconst_null
astore 6
L3:
aload 6
areturn
L1:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/streamReader Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/getUInt8()S
istore 1
iload 1
sipush 218
if_icmpne L4
aconst_null
areturn
L4:
iload 1
sipush 217
if_icmpne L5
ldc "ImageHeaderParser"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L6
ldc "ImageHeaderParser"
ldc "Found MARKER_EOI in exif segment"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L6:
aconst_null
areturn
L5:
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/streamReader Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/getUInt16()I
iconst_2
isub
istore 2
iload 1
sipush 225
if_icmpeq L7
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/streamReader Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
iload 2
i2l
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/skip(J)J
lstore 4
lload 4
iload 2
i2l
lcmp
ifeq L0
ldc "ImageHeaderParser"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L8
ldc "ImageHeaderParser"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unable to skip enough data, type: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", wanted to skip: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", but actually skipped: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L8:
aconst_null
areturn
L7:
iload 2
newarray byte
astore 6
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/streamReader Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
aload 6
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/read([B)I
istore 3
iload 3
iload 2
if_icmpeq L3
ldc "ImageHeaderParser"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L9
ldc "ImageHeaderParser"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unable to read segment data, type: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", length: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", actually read: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L9:
aconst_null
areturn
.limit locals 7
.limit stack 4
.end method

.method private static handles(I)Z
iload 0
ldc_w 65496
iand
ldc_w 65496
if_icmpeq L0
iload 0
sipush 19789
if_icmpeq L0
iload 0
sipush 18761
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

.method private static parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I
ldc "Exif\u0000\u0000"
invokevirtual java/lang/String/length()I
istore 1
aload 0
iload 1
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/getInt16(I)S
istore 2
iload 2
sipush 19789
if_icmpne L0
getstatic java/nio/ByteOrder/BIG_ENDIAN Ljava/nio/ByteOrder;
astore 8
L1:
aload 0
aload 8
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/order(Ljava/nio/ByteOrder;)V
aload 0
iload 1
iconst_4
iadd
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/getInt32(I)I
iload 1
iadd
istore 2
aload 0
iload 2
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/getInt16(I)S
istore 3
iconst_0
istore 1
L2:
iload 1
iload 3
if_icmpge L3
iload 2
iload 1
invokestatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/calcTagOffset(II)I
istore 5
aload 0
iload 5
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/getInt16(I)S
istore 4
iload 4
sipush 274
if_icmpeq L4
L5:
iload 1
iconst_1
iadd
istore 1
goto L2
L0:
iload 2
sipush 18761
if_icmpne L6
getstatic java/nio/ByteOrder/LITTLE_ENDIAN Ljava/nio/ByteOrder;
astore 8
goto L1
L6:
ldc "ImageHeaderParser"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L7
ldc "ImageHeaderParser"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unknown endianness = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
getstatic java/nio/ByteOrder/BIG_ENDIAN Ljava/nio/ByteOrder;
astore 8
goto L1
L4:
aload 0
iload 5
iconst_2
iadd
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/getInt16(I)S
istore 6
iload 6
iconst_1
if_icmplt L8
iload 6
bipush 12
if_icmple L9
L8:
ldc "ImageHeaderParser"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L5
ldc "ImageHeaderParser"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Got invalid format code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L5
L9:
aload 0
iload 5
iconst_4
iadd
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/getInt32(I)I
istore 7
iload 7
ifge L10
ldc "ImageHeaderParser"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L5
ldc "ImageHeaderParser"
ldc "Negative tiff component count"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L5
L10:
ldc "ImageHeaderParser"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L11
ldc "ImageHeaderParser"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Got tagIndex="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " tagType="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " formatCode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " componentCount="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L11:
iload 7
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/BYTES_PER_FORMAT [I
iload 6
iaload
iadd
istore 7
iload 7
iconst_4
if_icmple L12
ldc "ImageHeaderParser"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L5
ldc "ImageHeaderParser"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Got byte count > 4, not orientation, continuing, formatCode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L5
L12:
iload 5
bipush 8
iadd
istore 5
iload 5
iflt L13
iload 5
aload 0
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/length()I
if_icmple L14
L13:
ldc "ImageHeaderParser"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L5
ldc "ImageHeaderParser"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Illegal tagValueOffset="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " tagType="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L5
L14:
iload 7
iflt L15
iload 5
iload 7
iadd
aload 0
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/length()I
if_icmple L16
L15:
ldc "ImageHeaderParser"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L5
ldc "ImageHeaderParser"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Illegal number of bytes for TI tag data tagType="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L5
L16:
aload 0
iload 5
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/getInt16(I)S
ireturn
L3:
iconst_m1
ireturn
.limit locals 9
.limit stack 3
.end method

.method public getOrientation()I
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/streamReader Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/getUInt16()I
invokestatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/handles(I)Z
ifne L0
L1:
iconst_m1
ireturn
L0:
aload 0
invokespecial com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/getExifSegment()[B
astore 4
aload 4
ifnull L2
aload 4
arraylength
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/JPEG_EXIF_SEGMENT_PREAMBLE_BYTES [B
arraylength
if_icmple L2
iconst_1
istore 1
L3:
iload 1
istore 3
iload 1
ifeq L4
iconst_0
istore 2
L5:
iload 1
istore 3
iload 2
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/JPEG_EXIF_SEGMENT_PREAMBLE_BYTES [B
arraylength
if_icmpge L4
aload 4
iload 2
baload
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/JPEG_EXIF_SEGMENT_PREAMBLE_BYTES [B
iload 2
baload
if_icmpeq L6
iconst_0
istore 3
L4:
iload 3
ifeq L1
new com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader
dup
aload 4
invokespecial com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader/<init>([B)V
invokestatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I
ireturn
L2:
iconst_0
istore 1
goto L3
L6:
iload 2
iconst_1
iadd
istore 2
goto L5
.limit locals 5
.limit stack 3
.end method

.method public getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/streamReader Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/getUInt16()I
istore 1
iload 1
ldc_w 65496
if_icmpne L0
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/JPEG Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
areturn
L0:
iload 1
bipush 16
ishl
ldc_w -65536
iand
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/streamReader Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/getUInt16()I
ldc_w 65535
iand
ior
istore 1
iload 1
ldc_w -1991225785
if_icmpne L1
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/streamReader Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
ldc2_w 21L
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/skip(J)J
pop2
aload 0
getfield com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/streamReader Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader/getByte()I
iconst_3
if_icmplt L2
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/PNG_A Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
areturn
L2:
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/PNG Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
areturn
L1:
iload 1
bipush 8
ishr
ldc_w 4671814
if_icmpne L3
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/GIF Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
areturn
L3:
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/UNKNOWN Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
areturn
.limit locals 2
.limit stack 3
.end method

.method public hasAlpha()Z
.throws java/io/IOException
aload 0
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/hasAlpha()Z
ireturn
.limit locals 1
.limit stack 1
.end method
