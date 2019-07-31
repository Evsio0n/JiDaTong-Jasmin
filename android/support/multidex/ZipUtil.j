.bytecode 50.0
.class final synchronized android/support/multidex/ZipUtil
.super java/lang/Object
.inner class static CentralDirectory inner android/support/multidex/ZipUtil$CentralDirectory outer android/support/multidex/ZipUtil

.field private static final 'BUFFER_SIZE' I = 16384


.field private static final 'ENDHDR' I = 22


.field private static final 'ENDSIG' I = 101010256


.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Landroid/support/multidex/ZipUtil$CentralDirectory;)J
.throws java/io/IOException
new java/util/zip/CRC32
dup
invokespecial java/util/zip/CRC32/<init>()V
astore 5
aload 1
getfield android/support/multidex/ZipUtil$CentralDirectory/size J
lstore 3
aload 0
aload 1
getfield android/support/multidex/ZipUtil$CentralDirectory/offset J
invokevirtual java/io/RandomAccessFile/seek(J)V
ldc2_w 16384L
lload 3
invokestatic java/lang/Math/min(JJ)J
l2i
istore 2
sipush 16384
newarray byte
astore 1
aload 0
aload 1
iconst_0
iload 2
invokevirtual java/io/RandomAccessFile/read([BII)I
istore 2
L0:
iload 2
iconst_m1
if_icmpeq L1
aload 5
aload 1
iconst_0
iload 2
invokevirtual java/util/zip/CRC32/update([BII)V
lload 3
iload 2
i2l
lsub
lstore 3
lload 3
lconst_0
lcmp
ifne L2
L1:
aload 5
invokevirtual java/util/zip/CRC32/getValue()J
lreturn
L2:
aload 0
aload 1
iconst_0
ldc2_w 16384L
lload 3
invokestatic java/lang/Math/min(JJ)J
l2i
invokevirtual java/io/RandomAccessFile/read([BII)I
istore 2
goto L0
.limit locals 6
.limit stack 7
.end method

.method static findCentralDirectory(Ljava/io/RandomAccessFile;)Landroid/support/multidex/ZipUtil$CentralDirectory;
.throws java/io/IOException
.throws java/util/zip/ZipException
aload 0
invokevirtual java/io/RandomAccessFile/length()J
ldc2_w 22L
lsub
lstore 4
lload 4
lconst_0
lcmp
ifge L0
new java/util/zip/ZipException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "File too short to be a zip file: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/RandomAccessFile/length()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/util/zip/ZipException/<init>(Ljava/lang/String;)V
athrow
L0:
lload 4
ldc2_w 65536L
lsub
lstore 6
lload 6
lstore 2
lload 6
lconst_0
lcmp
ifge L1
lconst_0
lstore 2
L1:
ldc_w 101010256
invokestatic java/lang/Integer/reverseBytes(I)I
istore 1
L2:
aload 0
lload 4
invokevirtual java/io/RandomAccessFile/seek(J)V
aload 0
invokevirtual java/io/RandomAccessFile/readInt()I
iload 1
if_icmpne L3
aload 0
iconst_2
invokevirtual java/io/RandomAccessFile/skipBytes(I)I
pop
aload 0
iconst_2
invokevirtual java/io/RandomAccessFile/skipBytes(I)I
pop
aload 0
iconst_2
invokevirtual java/io/RandomAccessFile/skipBytes(I)I
pop
aload 0
iconst_2
invokevirtual java/io/RandomAccessFile/skipBytes(I)I
pop
new android/support/multidex/ZipUtil$CentralDirectory
dup
invokespecial android/support/multidex/ZipUtil$CentralDirectory/<init>()V
astore 8
aload 8
aload 0
invokevirtual java/io/RandomAccessFile/readInt()I
invokestatic java/lang/Integer/reverseBytes(I)I
i2l
ldc2_w 4294967295L
land
putfield android/support/multidex/ZipUtil$CentralDirectory/size J
aload 8
aload 0
invokevirtual java/io/RandomAccessFile/readInt()I
invokestatic java/lang/Integer/reverseBytes(I)I
i2l
ldc2_w 4294967295L
land
putfield android/support/multidex/ZipUtil$CentralDirectory/offset J
aload 8
areturn
L3:
lload 4
lconst_1
lsub
lstore 6
lload 6
lstore 4
lload 6
lload 2
lcmp
ifge L2
new java/util/zip/ZipException
dup
ldc "End Of Central Directory signature not found"
invokespecial java/util/zip/ZipException/<init>(Ljava/lang/String;)V
athrow
.limit locals 9
.limit stack 5
.end method

.method static getZipCrc(Ljava/io/File;)J
.throws java/io/IOException
.catch all from L0 to L1 using L2
new java/io/RandomAccessFile
dup
aload 0
ldc "r"
invokespecial java/io/RandomAccessFile/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 0
L0:
aload 0
aload 0
invokestatic android/support/multidex/ZipUtil/findCentralDirectory(Ljava/io/RandomAccessFile;)Landroid/support/multidex/ZipUtil$CentralDirectory;
invokestatic android/support/multidex/ZipUtil/computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Landroid/support/multidex/ZipUtil$CentralDirectory;)J
lstore 1
L1:
aload 0
invokevirtual java/io/RandomAccessFile/close()V
lload 1
lreturn
L2:
astore 3
aload 0
invokevirtual java/io/RandomAccessFile/close()V
aload 3
athrow
.limit locals 4
.limit stack 4
.end method
