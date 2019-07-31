.bytecode 50.0
.class public final synchronized com/bumptech/glide/util/ContentLengthInputStream
.super java/io/FilterInputStream

.field private static final 'TAG' Ljava/lang/String; = "ContentLengthStream"

.field private static final 'UNKNOWN' I = -1


.field private final 'contentLength' J

.field private 'readSoFar' I

.method <init>(Ljava/io/InputStream;J)V
aload 0
aload 1
invokespecial java/io/FilterInputStream/<init>(Ljava/io/InputStream;)V
aload 0
lload 2
putfield com/bumptech/glide/util/ContentLengthInputStream/contentLength J
return
.limit locals 4
.limit stack 3
.end method

.method private checkReadSoFarOrThrow(I)I
.throws java/io/IOException
iload 1
iflt L0
aload 0
aload 0
getfield com/bumptech/glide/util/ContentLengthInputStream/readSoFar I
iload 1
iadd
putfield com/bumptech/glide/util/ContentLengthInputStream/readSoFar I
L1:
iload 1
ireturn
L0:
aload 0
getfield com/bumptech/glide/util/ContentLengthInputStream/contentLength J
aload 0
getfield com/bumptech/glide/util/ContentLengthInputStream/readSoFar I
i2l
lsub
lconst_0
lcmp
ifle L1
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to read all expected data, expected: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/util/ContentLengthInputStream/contentLength J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ", but read: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/util/ContentLengthInputStream/readSoFar I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 5
.end method

.method public static obtain(Ljava/io/InputStream;J)Ljava/io/InputStream;
new com/bumptech/glide/util/ContentLengthInputStream
dup
aload 0
lload 1
invokespecial com/bumptech/glide/util/ContentLengthInputStream/<init>(Ljava/io/InputStream;J)V
areturn
.limit locals 3
.limit stack 5
.end method

.method public static obtain(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
aload 0
aload 1
invokestatic com/bumptech/glide/util/ContentLengthInputStream/parseContentLength(Ljava/lang/String;)I
i2l
invokestatic com/bumptech/glide/util/ContentLengthInputStream/obtain(Ljava/io/InputStream;J)Ljava/io/InputStream;
areturn
.limit locals 2
.limit stack 3
.end method

.method private static parseContentLength(Ljava/lang/String;)I
.catch java/lang/NumberFormatException from L0 to L1 using L2
iconst_m1
istore 2
iload 2
istore 1
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
L0:
aload 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
L1:
iload 1
ireturn
L2:
astore 3
iload 2
istore 1
ldc "ContentLengthStream"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "ContentLengthStream"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "failed to parse content length header: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
iconst_m1
ireturn
.limit locals 4
.limit stack 3
.end method

.method public available()I
.throws java/io/IOException
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/util/ContentLengthInputStream/contentLength J
aload 0
getfield com/bumptech/glide/util/ContentLengthInputStream/readSoFar I
i2l
lsub
aload 0
getfield com/bumptech/glide/util/ContentLengthInputStream/in Ljava/io/InputStream;
invokevirtual java/io/InputStream/available()I
i2l
invokestatic java/lang/Math/max(JJ)J
lstore 2
L1:
lload 2
l2i
istore 1
aload 0
monitorexit
iload 1
ireturn
L2:
astore 4
aload 0
monitorexit
aload 4
athrow
.limit locals 5
.limit stack 4
.end method

.method public read()I
.throws java/io/IOException
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
aload 0
invokespecial java/io/FilterInputStream/read()I
invokespecial com/bumptech/glide/util/ContentLengthInputStream/checkReadSoFarOrThrow(I)I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 2
.end method

.method public read([B)I
.throws java/io/IOException
aload 0
aload 1
iconst_0
aload 1
arraylength
invokevirtual com/bumptech/glide/util/ContentLengthInputStream/read([BII)I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public read([BII)I
.throws java/io/IOException
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
aload 0
aload 1
iload 2
iload 3
invokespecial java/io/FilterInputStream/read([BII)I
invokespecial com/bumptech/glide/util/ContentLengthInputStream/checkReadSoFarOrThrow(I)I
istore 2
L1:
aload 0
monitorexit
iload 2
ireturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 4
.limit stack 5
.end method
