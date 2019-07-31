.bytecode 50.0
.class public synchronized com/github/kevinsawicki/http/HttpRequest$RequestOutputStream
.super java/io/BufferedOutputStream
.inner class public static RequestOutputStream inner com/github/kevinsawicki/http/HttpRequest$RequestOutputStream outer com/github/kevinsawicki/http/HttpRequest

.field private final 'encoder' Ljava/nio/charset/CharsetEncoder;

.method public <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
aload 0
aload 1
iload 3
invokespecial java/io/BufferedOutputStream/<init>(Ljava/io/OutputStream;I)V
aload 0
aload 2
invokestatic com/github/kevinsawicki/http/HttpRequest/access$0(Ljava/lang/String;)Ljava/lang/String;
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
invokevirtual java/nio/charset/Charset/newEncoder()Ljava/nio/charset/CharsetEncoder;
putfield com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/encoder Ljava/nio/charset/CharsetEncoder;
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$0(Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/encoder Ljava/nio/charset/CharsetEncoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public write(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest$RequestOutputStream;
.throws java/io/IOException
aload 0
getfield com/github/kevinsawicki/http/HttpRequest$RequestOutputStream/encoder Ljava/nio/charset/CharsetEncoder;
aload 1
invokestatic java/nio/CharBuffer/wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
invokevirtual java/nio/charset/CharsetEncoder/encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
astore 1
aload 0
aload 1
invokevirtual java/nio/ByteBuffer/array()[B
iconst_0
aload 1
invokevirtual java/nio/ByteBuffer/limit()I
invokespecial java/io/BufferedOutputStream/write([BII)V
aload 0
areturn
.limit locals 2
.limit stack 4
.end method
