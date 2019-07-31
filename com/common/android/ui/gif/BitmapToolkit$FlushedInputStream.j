.bytecode 50.0
.class public synchronized com/common/android/ui/gif/BitmapToolkit$FlushedInputStream
.super java/io/FilterInputStream
.inner class public static FlushedInputStream inner com/common/android/ui/gif/BitmapToolkit$FlushedInputStream outer com/common/android/ui/gif/BitmapToolkit

.method public <init>(Ljava/io/InputStream;)V
aload 0
aload 1
invokespecial java/io/FilterInputStream/<init>(Ljava/io/InputStream;)V
return
.limit locals 2
.limit stack 2
.end method

.method public skip(J)J
.throws java/io/IOException
lconst_0
lstore 3
L0:
lload 3
lload 1
lcmp
ifge L1
aload 0
getfield com/common/android/ui/gif/BitmapToolkit$FlushedInputStream/in Ljava/io/InputStream;
lload 1
lload 3
lsub
invokevirtual java/io/InputStream/skip(J)J
lstore 7
lload 7
lstore 5
lload 7
lconst_0
lcmp
ifne L2
aload 0
invokevirtual com/common/android/ui/gif/BitmapToolkit$FlushedInputStream/read()I
ifge L3
L1:
lload 3
lreturn
L3:
lconst_1
lstore 5
L2:
lload 3
lload 5
ladd
lstore 3
goto L0
.limit locals 9
.limit stack 5
.end method
