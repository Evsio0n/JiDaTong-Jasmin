.bytecode 50.0
.class public final synchronized com/alipay/sdk/encrypt/c
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a([B)[B
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L3 to L5 using L6
.catch all from L5 to L7 using L8
.catch all from L7 to L9 using L8
.catch all from L10 to L11 using L8
.catch java/lang/Exception from L12 to L13 using L14
.catch java/lang/Exception from L15 to L16 using L17
.catch java/lang/Exception from L18 to L19 using L20
.catch all from L21 to L22 using L8
.catch java/lang/Exception from L22 to L23 using L24
.catch java/lang/Exception from L23 to L25 using L26
.catch java/lang/Exception from L25 to L27 using L28
aconst_null
astore 4
L0:
new java/io/ByteArrayInputStream
dup
aload 0
invokespecial java/io/ByteArrayInputStream/<init>([B)V
astore 0
L1:
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
L3:
new java/util/zip/GZIPOutputStream
dup
aload 2
invokespecial java/util/zip/GZIPOutputStream/<init>(Ljava/io/OutputStream;)V
astore 5
L5:
sipush 4096
newarray byte
astore 3
L7:
aload 0
aload 3
invokevirtual java/io/ByteArrayInputStream/read([B)I
istore 1
L9:
iload 1
iconst_m1
if_icmpeq L21
L10:
aload 5
aload 3
iconst_0
iload 1
invokevirtual java/util/zip/GZIPOutputStream/write([BII)V
L11:
goto L7
L8:
astore 6
aload 0
astore 3
aload 2
astore 4
aload 5
astore 2
aload 6
astore 0
L29:
aload 3
ifnull L13
L12:
aload 3
invokevirtual java/io/ByteArrayInputStream/close()V
L13:
aload 4
ifnull L16
L15:
aload 4
invokevirtual java/io/ByteArrayOutputStream/close()V
L16:
aload 2
ifnull L19
L18:
aload 2
invokevirtual java/util/zip/GZIPOutputStream/close()V
L19:
aload 0
athrow
L21:
aload 5
invokevirtual java/util/zip/GZIPOutputStream/flush()V
aload 5
invokevirtual java/util/zip/GZIPOutputStream/finish()V
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
astore 3
L22:
aload 0
invokevirtual java/io/ByteArrayInputStream/close()V
L23:
aload 2
invokevirtual java/io/ByteArrayOutputStream/close()V
L25:
aload 5
invokevirtual java/util/zip/GZIPOutputStream/close()V
L27:
aload 3
areturn
L24:
astore 0
goto L23
L26:
astore 0
goto L25
L28:
astore 0
aload 3
areturn
L14:
astore 3
goto L13
L17:
astore 3
goto L16
L20:
astore 2
goto L19
L2:
astore 0
aconst_null
astore 2
aconst_null
astore 3
goto L29
L4:
astore 5
aconst_null
astore 2
aload 0
astore 3
aload 5
astore 0
goto L29
L6:
astore 6
aconst_null
astore 5
aload 2
astore 4
aload 0
astore 3
aload 6
astore 0
aload 5
astore 2
goto L29
.limit locals 7
.limit stack 4
.end method

.method public static b([B)[B
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L3 to L5 using L6
.catch all from L5 to L7 using L8
.catch all from L9 to L10 using L8
.catch java/lang/Exception from L11 to L12 using L13
.catch java/lang/Exception from L12 to L14 using L15
.catch java/lang/Exception from L14 to L16 using L17
.catch all from L18 to L19 using L8
.catch java/lang/Exception from L19 to L20 using L21
.catch java/lang/Exception from L20 to L22 using L23
.catch java/lang/Exception from L22 to L24 using L25
aconst_null
astore 4
L0:
new java/io/ByteArrayInputStream
dup
aload 0
invokespecial java/io/ByteArrayInputStream/<init>([B)V
astore 0
L1:
new java/util/zip/GZIPInputStream
dup
aload 0
invokespecial java/util/zip/GZIPInputStream/<init>(Ljava/io/InputStream;)V
astore 3
L3:
sipush 4096
newarray byte
astore 5
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
L5:
aload 3
aload 5
iconst_0
aload 5
arraylength
invokevirtual java/util/zip/GZIPInputStream/read([BII)I
istore 1
L7:
iload 1
iconst_m1
if_icmpeq L18
L9:
aload 2
aload 5
iconst_0
iload 1
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
L10:
goto L5
L8:
astore 5
aload 2
astore 4
aload 0
astore 2
aload 5
astore 0
L11:
aload 4
invokevirtual java/io/ByteArrayOutputStream/close()V
L12:
aload 3
invokevirtual java/util/zip/GZIPInputStream/close()V
L14:
aload 2
invokevirtual java/io/ByteArrayInputStream/close()V
L16:
aload 0
athrow
L18:
aload 2
invokevirtual java/io/ByteArrayOutputStream/flush()V
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
astore 4
L19:
aload 2
invokevirtual java/io/ByteArrayOutputStream/close()V
L20:
aload 3
invokevirtual java/util/zip/GZIPInputStream/close()V
L22:
aload 0
invokevirtual java/io/ByteArrayInputStream/close()V
L24:
aload 4
areturn
L21:
astore 2
goto L20
L23:
astore 2
goto L22
L25:
astore 0
aload 4
areturn
L13:
astore 4
goto L12
L15:
astore 3
goto L14
L17:
astore 2
goto L16
L2:
astore 0
aconst_null
astore 3
aconst_null
astore 2
goto L11
L4:
astore 5
aconst_null
astore 3
aload 0
astore 2
aload 5
astore 0
goto L11
L6:
astore 5
aload 0
astore 2
aload 5
astore 0
goto L11
.limit locals 6
.limit stack 4
.end method
