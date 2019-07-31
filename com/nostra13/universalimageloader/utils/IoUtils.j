.bytecode 50.0
.class public final synchronized com/nostra13/universalimageloader/utils/IoUtils
.super java/lang/Object
.inner class public static abstract interface CopyListener inner com/nostra13/universalimageloader/utils/IoUtils$CopyListener outer com/nostra13/universalimageloader/utils/IoUtils

.field public static final 'CONTINUE_LOADING_PERCENTAGE' I = 75


.field public static final 'DEFAULT_BUFFER_SIZE' I = 32768


.field public static final 'DEFAULT_IMAGE_TOTAL_SIZE' I = 512000


.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ifnull L1
L0:
aload 0
invokeinterface java/io/Closeable/close()V 0
L1:
return
L2:
astore 0
return
.limit locals 1
.limit stack 1
.end method

.method public static copyStream(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;ILjava/lang/String;Ljava/io/File;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)Z
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L5 to L6 using L4
.catch all from L6 to L7 using L4
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L4
.catch all from L12 to L13 using L4
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L4
.catch all from L17 to L18 using L2
.catch all from L19 to L2 using L2
aload 5
aload 3
invokeinterface com/nostra13/universalimageloader/core/download/ImageDownloader/getTotalSize(Ljava/lang/String;)J 1
lstore 12
aload 5
aload 3
invokeinterface com/nostra13/universalimageloader/core/download/ImageDownloader/getDownloadSize(Ljava/lang/String;)J 1
lstore 10
L0:
aload 4
invokevirtual java/io/File/getParent()Ljava/lang/String;
astore 16
aload 4
invokevirtual java/io/File/getName()Ljava/lang/String;
astore 17
new java/io/File
dup
new java/lang/StringBuilder
dup
aload 16
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 17
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".tmp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 15
new java/io/File
dup
new java/lang/StringBuilder
dup
aload 16
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 17
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".info"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 17
new java/io/RandomAccessFile
dup
aload 15
ldc "rw"
invokespecial java/io/RandomAccessFile/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 16
L1:
aload 16
lload 10
invokevirtual java/io/RandomAccessFile/seek(J)V
iload 2
newarray byte
astore 18
L3:
lload 12
lstore 8
lload 12
lconst_0
lcmp
ifgt L6
L5:
aload 0
invokevirtual java/io/InputStream/available()I
i2l
lstore 8
L6:
aload 1
aload 6
lload 10
lload 8
invokestatic com/nostra13/universalimageloader/utils/IoUtils/shouldStopLoading(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;JJ)Z
istore 14
L7:
iload 14
ifeq L10
L8:
aload 16
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 5
aload 3
invokeinterface com/nostra13/universalimageloader/core/download/ImageDownloader/removeSizeMap(Ljava/lang/String;)V 1
L9:
aload 0
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
iconst_0
ireturn
L10:
aload 0
aload 18
iconst_0
iload 2
invokevirtual java/io/InputStream/read([BII)I
istore 7
L11:
iload 7
iconst_m1
if_icmpne L20
L12:
aload 4
invokevirtual java/io/File/delete()Z
pop
aload 15
aload 4
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
pop
aload 17
invokevirtual java/io/File/delete()Z
pop
L13:
aload 16
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 5
aload 3
invokeinterface com/nostra13/universalimageloader/core/download/ImageDownloader/removeSizeMap(Ljava/lang/String;)V 1
L14:
aload 0
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
iconst_1
ireturn
L20:
lload 10
iload 7
i2l
ladd
lstore 10
L15:
aload 16
aload 18
iconst_0
iload 7
invokevirtual java/io/RandomAccessFile/write([BII)V
aload 1
aload 6
lload 10
lload 8
invokestatic com/nostra13/universalimageloader/utils/IoUtils/shouldStopLoading(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;JJ)Z
istore 14
L16:
iload 14
ifeq L10
L17:
aload 16
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 5
aload 3
invokeinterface com/nostra13/universalimageloader/core/download/ImageDownloader/removeSizeMap(Ljava/lang/String;)V 1
L18:
aload 0
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
iconst_0
ireturn
L4:
astore 1
L19:
aload 16
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 5
aload 3
invokeinterface com/nostra13/universalimageloader/core/download/ImageDownloader/removeSizeMap(Ljava/lang/String;)V 1
aload 1
athrow
L2:
astore 1
aload 0
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 1
athrow
.limit locals 19
.limit stack 6
.end method

.method public static copyStream(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;Ljava/lang/String;Ljava/io/File;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)Z
.throws java/io/IOException
aload 0
aload 1
ldc_w 32768
aload 2
aload 3
aload 4
aload 5
invokestatic com/nostra13/universalimageloader/utils/IoUtils/copyStream(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;ILjava/lang/String;Ljava/io/File;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)Z
ireturn
.limit locals 6
.limit stack 7
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
.throws java/io/IOException
aload 0
aload 1
aload 2
ldc_w 32768
invokestatic com/nostra13/universalimageloader/utils/IoUtils/copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;I)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;I)Z
.throws java/io/IOException
iconst_0
istore 5
aload 0
invokevirtual java/io/InputStream/available()I
istore 6
iload 6
istore 4
iload 6
ifgt L0
ldc_w 512000
istore 4
L0:
iload 3
newarray byte
astore 7
aload 2
iconst_0
iload 4
invokestatic com/nostra13/universalimageloader/utils/IoUtils/shouldStopLoading(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;II)Z
ifeq L1
L2:
iconst_0
ireturn
L3:
aload 1
aload 7
iconst_0
iload 6
invokevirtual java/io/OutputStream/write([BII)V
iload 5
iload 6
iadd
istore 5
aload 2
iload 5
iload 4
invokestatic com/nostra13/universalimageloader/utils/IoUtils/shouldStopLoading(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;II)Z
ifne L2
L1:
aload 0
aload 7
iconst_0
iload 3
invokevirtual java/io/InputStream/read([BII)I
istore 6
iload 6
iconst_m1
if_icmpne L3
aload 1
invokevirtual java/io/OutputStream/flush()V
iconst_1
ireturn
.limit locals 8
.limit stack 4
.end method

.method public static readAndCloseStream(Ljava/io/InputStream;)V
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
ldc_w 32768
newarray byte
astore 2
L0:
aload 0
aload 2
iconst_0
ldc_w 32768
invokevirtual java/io/InputStream/read([BII)I
istore 1
L1:
iload 1
iconst_m1
if_icmpne L0
aload 0
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
return
L2:
astore 2
aload 0
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
return
L3:
astore 2
aload 0
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 2
athrow
.limit locals 3
.limit stack 4
.end method

.method private static shouldStopLoading(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;II)Z
aload 0
ifnull L0
aload 0
iload 1
iload 2
invokeinterface com/nostra13/universalimageloader/utils/IoUtils$CopyListener/onBytesCopied(II)Z 2
ifne L0
iload 1
bipush 100
imul
iload 2
idiv
bipush 75
if_icmpge L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method private static shouldStopLoading(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;JJ)Z
aload 1
lload 4
lload 2
invokeinterface com/nostra13/universalimageloader/core/listener/ImageLoadingListener/onLoadingProgress(JJ)V 4
aload 0
new java/lang/Long
dup
lload 2
invokespecial java/lang/Long/<init>(J)V
invokevirtual java/lang/Long/intValue()I
new java/lang/Long
dup
lload 4
invokespecial java/lang/Long/<init>(J)V
invokevirtual java/lang/Long/intValue()I
invokestatic com/nostra13/universalimageloader/utils/IoUtils/shouldStopLoading(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;II)Z
ireturn
.limit locals 6
.limit stack 6
.end method
