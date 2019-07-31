.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/assist/ContentLengthInputStream
.super java/io/InputStream

.field private final 'length' I

.field private final 'stream' Ljava/io/InputStream;

.method public <init>(Ljava/io/InputStream;I)V
aload 0
invokespecial java/io/InputStream/<init>()V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/assist/ContentLengthInputStream/stream Ljava/io/InputStream;
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/assist/ContentLengthInputStream/length I
return
.limit locals 3
.limit stack 2
.end method

.method public available()I
aload 0
getfield com/nostra13/universalimageloader/core/assist/ContentLengthInputStream/length I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public close()V
.throws java/io/IOException
aload 0
getfield com/nostra13/universalimageloader/core/assist/ContentLengthInputStream/stream Ljava/io/InputStream;
invokevirtual java/io/InputStream/close()V
return
.limit locals 1
.limit stack 1
.end method

.method public mark(I)V
aload 0
getfield com/nostra13/universalimageloader/core/assist/ContentLengthInputStream/stream Ljava/io/InputStream;
iload 1
invokevirtual java/io/InputStream/mark(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public markSupported()Z
aload 0
getfield com/nostra13/universalimageloader/core/assist/ContentLengthInputStream/stream Ljava/io/InputStream;
invokevirtual java/io/InputStream/markSupported()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public read()I
.throws java/io/IOException
aload 0
getfield com/nostra13/universalimageloader/core/assist/ContentLengthInputStream/stream Ljava/io/InputStream;
invokevirtual java/io/InputStream/read()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public read([B)I
.throws java/io/IOException
aload 0
getfield com/nostra13/universalimageloader/core/assist/ContentLengthInputStream/stream Ljava/io/InputStream;
aload 1
invokevirtual java/io/InputStream/read([B)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public read([BII)I
.throws java/io/IOException
aload 0
getfield com/nostra13/universalimageloader/core/assist/ContentLengthInputStream/stream Ljava/io/InputStream;
aload 1
iload 2
iload 3
invokevirtual java/io/InputStream/read([BII)I
ireturn
.limit locals 4
.limit stack 4
.end method

.method public reset()V
.throws java/io/IOException
aload 0
getfield com/nostra13/universalimageloader/core/assist/ContentLengthInputStream/stream Ljava/io/InputStream;
invokevirtual java/io/InputStream/reset()V
return
.limit locals 1
.limit stack 1
.end method

.method public skip(J)J
.throws java/io/IOException
aload 0
getfield com/nostra13/universalimageloader/core/assist/ContentLengthInputStream/stream Ljava/io/InputStream;
lload 1
invokevirtual java/io/InputStream/skip(J)J
lreturn
.limit locals 3
.limit stack 3
.end method
