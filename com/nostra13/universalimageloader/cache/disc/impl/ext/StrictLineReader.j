.bytecode 50.0
.class synchronized com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader
.super java/lang/Object
.implements java/io/Closeable
.inner class inner com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader$1

.field private static final 'CR' B = 13


.field private static final 'LF' B = 10


.field private 'buf' [B

.field private final 'charset' Ljava/nio/charset/Charset;

.field private 'end' I

.field private final 'in' Ljava/io/InputStream;

.field private 'pos' I

.method public <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnull L0
aload 3
ifnonnull L1
L0:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L1:
iload 2
ifge L2
new java/lang/IllegalArgumentException
dup
ldc "capacity <= 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 3
getstatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/US_ASCII Ljava/nio/charset/Charset;
invokevirtual java/nio/charset/Charset/equals(Ljava/lang/Object;)Z
ifne L3
new java/lang/IllegalArgumentException
dup
ldc "Unsupported encoding"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/in Ljava/io/InputStream;
aload 0
aload 3
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/charset Ljava/nio/charset/Charset;
aload 0
iload 2
newarray byte
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/buf [B
return
.limit locals 4
.limit stack 3
.end method

.method public <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
aload 0
aload 1
sipush 8192
aload 2
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/<init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;)Ljava/nio/charset/Charset;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/charset Ljava/nio/charset/Charset;
areturn
.limit locals 1
.limit stack 1
.end method

.method private fillBuf()V
.throws java/io/IOException
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/in Ljava/io/InputStream;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/buf [B
iconst_0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/buf [B
arraylength
invokevirtual java/io/InputStream/read([BII)I
istore 1
iload 1
iconst_m1
if_icmpne L0
new java/io/EOFException
dup
invokespecial java/io/EOFException/<init>()V
athrow
L0:
aload 0
iconst_0
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
aload 0
iload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/end I
return
.limit locals 2
.limit stack 4
.end method

.method public close()V
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/in Ljava/io/InputStream;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/buf [B
ifnull L1
aload 0
aconst_null
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/buf [B
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/in Ljava/io/InputStream;
invokevirtual java/io/InputStream/close()V
L1:
aload 1
monitorexit
L3:
return
L2:
astore 2
L4:
aload 1
monitorexit
L5:
aload 2
athrow
.limit locals 3
.limit stack 2
.end method

.method public readLine()Ljava/lang/String;
.throws java/io/IOException
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L4 to L5 using L1
.catch all from L5 to L6 using L1
.catch all from L6 to L7 using L1
.catch all from L7 to L8 using L1
.catch all from L8 to L9 using L1
.catch all from L9 to L10 using L1
.catch all from L11 to L12 using L1
.catch all from L13 to L14 using L1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/in Ljava/io/InputStream;
astore 3
aload 3
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/buf [B
ifnonnull L4
new java/io/IOException
dup
ldc "LineReader is closed"
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 4
L2:
aload 3
monitorexit
L3:
aload 4
athrow
L4:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/end I
if_icmplt L5
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/fillBuf()V
L5:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
istore 1
L6:
iload 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/end I
if_icmpne L11
new com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader$1
dup
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/end I
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
isub
bipush 80
iadd
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader$1/<init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;I)V
astore 4
L7:
aload 4
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/buf [B
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/end I
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
isub
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
aload 0
iconst_m1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/end I
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/fillBuf()V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
istore 1
L8:
iload 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/end I
if_icmpeq L7
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/buf [B
iload 1
baload
bipush 10
if_icmpne L15
iload 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
if_icmpeq L9
aload 4
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/buf [B
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
iload 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
isub
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
L9:
aload 0
iload 1
iconst_1
iadd
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
aload 4
invokevirtual java/io/ByteArrayOutputStream/toString()Ljava/lang/String;
astore 4
aload 3
monitorexit
L10:
aload 4
areturn
L11:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/buf [B
iload 1
baload
bipush 10
if_icmpne L16
iload 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
if_icmpeq L17
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/buf [B
iload 1
iconst_1
isub
baload
bipush 13
if_icmpne L17
L12:
iload 1
iconst_1
isub
istore 2
L13:
new java/lang/String
dup
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/buf [B
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
iload 2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
isub
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/charset Ljava/nio/charset/Charset;
invokevirtual java/nio/charset/Charset/name()Ljava/lang/String;
invokespecial java/lang/String/<init>([BIILjava/lang/String;)V
astore 4
aload 0
iload 1
iconst_1
iadd
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader/pos I
aload 3
monitorexit
L14:
aload 4
areturn
L17:
iload 1
istore 2
goto L13
L16:
iload 1
iconst_1
iadd
istore 1
goto L6
L15:
iload 1
iconst_1
iadd
istore 1
goto L8
.limit locals 5
.limit stack 6
.end method
