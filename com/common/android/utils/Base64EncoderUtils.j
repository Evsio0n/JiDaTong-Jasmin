.bytecode 50.0
.class public synchronized com/common/android/utils/Base64EncoderUtils
.super java/io/FilterOutputStream

.field private static final 'chars' [C

.field private 'carryOver' I

.field private 'charCount' I

.method static <clinit>()V
bipush 64
newarray char
dup
iconst_0
ldc_w 65
castore
dup
iconst_1
ldc_w 66
castore
dup
iconst_2
ldc_w 67
castore
dup
iconst_3
ldc_w 68
castore
dup
iconst_4
ldc_w 69
castore
dup
iconst_5
ldc_w 70
castore
dup
bipush 6
ldc_w 71
castore
dup
bipush 7
ldc_w 72
castore
dup
bipush 8
ldc_w 73
castore
dup
bipush 9
ldc_w 74
castore
dup
bipush 10
ldc_w 75
castore
dup
bipush 11
ldc_w 76
castore
dup
bipush 12
ldc_w 77
castore
dup
bipush 13
ldc_w 78
castore
dup
bipush 14
ldc_w 79
castore
dup
bipush 15
ldc_w 80
castore
dup
bipush 16
ldc_w 81
castore
dup
bipush 17
ldc_w 82
castore
dup
bipush 18
ldc_w 83
castore
dup
bipush 19
ldc_w 84
castore
dup
bipush 20
ldc_w 85
castore
dup
bipush 21
ldc_w 86
castore
dup
bipush 22
ldc_w 87
castore
dup
bipush 23
ldc_w 88
castore
dup
bipush 24
ldc_w 89
castore
dup
bipush 25
ldc_w 90
castore
dup
bipush 26
ldc_w 97
castore
dup
bipush 27
ldc_w 98
castore
dup
bipush 28
ldc_w 99
castore
dup
bipush 29
ldc_w 100
castore
dup
bipush 30
ldc_w 101
castore
dup
bipush 31
ldc_w 102
castore
dup
bipush 32
ldc_w 103
castore
dup
bipush 33
ldc_w 104
castore
dup
bipush 34
ldc_w 105
castore
dup
bipush 35
ldc_w 106
castore
dup
bipush 36
ldc_w 107
castore
dup
bipush 37
ldc_w 108
castore
dup
bipush 38
ldc_w 109
castore
dup
bipush 39
ldc_w 110
castore
dup
bipush 40
ldc_w 111
castore
dup
bipush 41
ldc_w 112
castore
dup
bipush 42
ldc_w 113
castore
dup
bipush 43
ldc_w 114
castore
dup
bipush 44
ldc_w 115
castore
dup
bipush 45
ldc_w 116
castore
dup
bipush 46
ldc_w 117
castore
dup
bipush 47
ldc_w 118
castore
dup
bipush 48
ldc_w 119
castore
dup
bipush 49
ldc_w 120
castore
dup
bipush 50
ldc_w 121
castore
dup
bipush 51
ldc_w 122
castore
dup
bipush 52
ldc_w 48
castore
dup
bipush 53
ldc_w 49
castore
dup
bipush 54
ldc_w 50
castore
dup
bipush 55
ldc_w 51
castore
dup
bipush 56
ldc_w 52
castore
dup
bipush 57
ldc_w 53
castore
dup
bipush 58
ldc_w 54
castore
dup
bipush 59
ldc_w 55
castore
dup
bipush 60
ldc_w 56
castore
dup
bipush 61
ldc_w 57
castore
dup
bipush 62
ldc_w 43
castore
dup
bipush 63
ldc_w 47
castore
putstatic com/common/android/utils/Base64EncoderUtils/chars [C
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(Ljava/io/OutputStream;)V
aload 0
aload 1
invokespecial java/io/FilterOutputStream/<init>(Ljava/io/OutputStream;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static encode(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
aload 0
aload 1
bipush 100
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
invokestatic com/common/android/utils/Base64EncoderUtils/encode([B)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
L0:
aload 0
ldc "utf-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
astore 0
L1:
aload 0
invokestatic com/common/android/utils/Base64EncoderUtils/encode([B)Ljava/lang/String;
areturn
L2:
astore 0
aload 0
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
ldc ""
areturn
.limit locals 1
.limit stack 2
.end method

.method public static encode([B)Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
new java/io/ByteArrayOutputStream
dup
aload 0
arraylength
i2d
ldc2_w 1.37D
dmul
d2i
invokespecial java/io/ByteArrayOutputStream/<init>(I)V
astore 1
new com/common/android/utils/Base64EncoderUtils
dup
aload 1
invokespecial com/common/android/utils/Base64EncoderUtils/<init>(Ljava/io/OutputStream;)V
astore 2
L0:
aload 2
aload 0
invokevirtual com/common/android/utils/Base64EncoderUtils/write([B)V
aload 2
invokevirtual com/common/android/utils/Base64EncoderUtils/close()V
aload 1
ldc "utf-8"
invokevirtual java/io/ByteArrayOutputStream/toString(Ljava/lang/String;)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 3
.limit stack 6
.end method

.method public static encodeToJPG(Landroid/graphics/Bitmap;)Ljava/lang/String;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
invokestatic com/common/android/utils/Base64EncoderUtils/encode(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static encodeToPNG(Landroid/graphics/Bitmap;)Ljava/lang/String;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getstatic android/graphics/Bitmap$CompressFormat/PNG Landroid/graphics/Bitmap$CompressFormat;
invokestatic com/common/android/utils/Base64EncoderUtils/encode(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static main([Ljava/lang/String;)V
.throws java/lang/Exception
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L3 to L5 using L6
.catch all from L5 to L7 using L6
.catch all from L8 to L9 using L6
aload 0
arraylength
iconst_1
if_icmpeq L10
getstatic java/lang/System/err Ljava/io/PrintStream;
ldc "Usage: java com.oreilly.servlet.Base64Encoder fileToEncode"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
L11:
return
L10:
aconst_null
astore 4
aconst_null
astore 3
L0:
new com/common/android/utils/Base64EncoderUtils
dup
getstatic java/lang/System/out Ljava/io/PrintStream;
invokespecial com/common/android/utils/Base64EncoderUtils/<init>(Ljava/io/OutputStream;)V
astore 2
L1:
new java/io/BufferedInputStream
dup
new java/io/FileInputStream
dup
aload 0
iconst_0
aaload
invokespecial java/io/FileInputStream/<init>(Ljava/lang/String;)V
invokespecial java/io/BufferedInputStream/<init>(Ljava/io/InputStream;)V
astore 0
L3:
sipush 4096
newarray byte
astore 3
L5:
aload 0
aload 3
invokevirtual java/io/BufferedInputStream/read([B)I
istore 1
L7:
iload 1
iconst_m1
if_icmpeq L12
L8:
aload 2
aload 3
iconst_0
iload 1
invokevirtual com/common/android/utils/Base64EncoderUtils/write([BII)V
L9:
goto L5
L6:
astore 4
aload 0
astore 3
aload 2
astore 0
aload 4
astore 2
L13:
aload 3
ifnull L14
aload 3
invokevirtual java/io/BufferedInputStream/close()V
L14:
aload 0
ifnull L15
aload 0
invokevirtual com/common/android/utils/Base64EncoderUtils/close()V
L15:
aload 2
athrow
L12:
aload 0
ifnull L16
aload 0
invokevirtual java/io/BufferedInputStream/close()V
L16:
aload 2
ifnull L11
aload 2
invokevirtual com/common/android/utils/Base64EncoderUtils/close()V
return
L2:
astore 2
aload 4
astore 0
goto L13
L4:
astore 4
aload 2
astore 0
aload 4
astore 2
goto L13
.limit locals 5
.limit stack 6
.end method

.method public close()V
.throws java/io/IOException
aload 0
getfield com/common/android/utils/Base64EncoderUtils/charCount I
iconst_3
irem
iconst_1
if_icmpne L0
aload 0
getfield com/common/android/utils/Base64EncoderUtils/carryOver I
istore 1
aload 0
getfield com/common/android/utils/Base64EncoderUtils/out Ljava/io/OutputStream;
getstatic com/common/android/utils/Base64EncoderUtils/chars [C
iload 1
iconst_4
ishl
bipush 63
iand
caload
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/common/android/utils/Base64EncoderUtils/out Ljava/io/OutputStream;
bipush 61
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/common/android/utils/Base64EncoderUtils/out Ljava/io/OutputStream;
bipush 61
invokevirtual java/io/OutputStream/write(I)V
L1:
aload 0
invokespecial java/io/FilterOutputStream/close()V
return
L0:
aload 0
getfield com/common/android/utils/Base64EncoderUtils/charCount I
iconst_3
irem
iconst_2
if_icmpne L1
aload 0
getfield com/common/android/utils/Base64EncoderUtils/carryOver I
istore 1
aload 0
getfield com/common/android/utils/Base64EncoderUtils/out Ljava/io/OutputStream;
getstatic com/common/android/utils/Base64EncoderUtils/chars [C
iload 1
iconst_2
ishl
bipush 63
iand
caload
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/common/android/utils/Base64EncoderUtils/out Ljava/io/OutputStream;
bipush 61
invokevirtual java/io/OutputStream/write(I)V
goto L1
.limit locals 2
.limit stack 4
.end method

.method public write(I)V
.throws java/io/IOException
iload 1
istore 2
iload 1
ifge L0
iload 1
sipush 256
iadd
istore 2
L0:
aload 0
getfield com/common/android/utils/Base64EncoderUtils/charCount I
iconst_3
irem
ifne L1
aload 0
iload 2
iconst_3
iand
putfield com/common/android/utils/Base64EncoderUtils/carryOver I
aload 0
getfield com/common/android/utils/Base64EncoderUtils/out Ljava/io/OutputStream;
getstatic com/common/android/utils/Base64EncoderUtils/chars [C
iload 2
iconst_2
ishr
caload
invokevirtual java/io/OutputStream/write(I)V
L2:
aload 0
aload 0
getfield com/common/android/utils/Base64EncoderUtils/charCount I
iconst_1
iadd
putfield com/common/android/utils/Base64EncoderUtils/charCount I
aload 0
getfield com/common/android/utils/Base64EncoderUtils/charCount I
bipush 57
irem
ifne L3
aload 0
getfield com/common/android/utils/Base64EncoderUtils/out Ljava/io/OutputStream;
bipush 10
invokevirtual java/io/OutputStream/write(I)V
L3:
return
L1:
aload 0
getfield com/common/android/utils/Base64EncoderUtils/charCount I
iconst_3
irem
iconst_1
if_icmpne L4
aload 0
getfield com/common/android/utils/Base64EncoderUtils/carryOver I
istore 1
aload 0
iload 2
bipush 15
iand
putfield com/common/android/utils/Base64EncoderUtils/carryOver I
aload 0
getfield com/common/android/utils/Base64EncoderUtils/out Ljava/io/OutputStream;
getstatic com/common/android/utils/Base64EncoderUtils/chars [C
iload 1
iconst_4
ishl
iload 2
iconst_4
ishr
iadd
bipush 63
iand
caload
invokevirtual java/io/OutputStream/write(I)V
goto L2
L4:
aload 0
getfield com/common/android/utils/Base64EncoderUtils/charCount I
iconst_3
irem
iconst_2
if_icmpne L2
aload 0
getfield com/common/android/utils/Base64EncoderUtils/carryOver I
istore 1
aload 0
getfield com/common/android/utils/Base64EncoderUtils/out Ljava/io/OutputStream;
getstatic com/common/android/utils/Base64EncoderUtils/chars [C
iload 1
iconst_2
ishl
iload 2
bipush 6
ishr
iadd
bipush 63
iand
caload
invokevirtual java/io/OutputStream/write(I)V
aload 0
getfield com/common/android/utils/Base64EncoderUtils/out Ljava/io/OutputStream;
getstatic com/common/android/utils/Base64EncoderUtils/chars [C
iload 2
bipush 63
iand
caload
invokevirtual java/io/OutputStream/write(I)V
aload 0
iconst_0
putfield com/common/android/utils/Base64EncoderUtils/carryOver I
goto L2
.limit locals 3
.limit stack 5
.end method

.method public write([BII)V
.throws java/io/IOException
iconst_0
istore 4
L0:
iload 4
iload 3
if_icmpge L1
aload 0
aload 1
iload 2
iload 4
iadd
baload
invokevirtual com/common/android/utils/Base64EncoderUtils/write(I)V
iload 4
iconst_1
iadd
istore 4
goto L0
L1:
return
.limit locals 5
.limit stack 4
.end method
