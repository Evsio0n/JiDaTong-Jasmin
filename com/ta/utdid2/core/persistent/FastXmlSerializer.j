.bytecode 50.0
.class synchronized com/ta/utdid2/core/persistent/FastXmlSerializer
.super java/lang/Object
.implements org/xmlpull/v1/XmlSerializer

.field private static final 'ESCAPE_TABLE' [Ljava/lang/String;

.field private 'mBytes' Ljava/nio/ByteBuffer;

.field private 'mCharset' Ljava/nio/charset/CharsetEncoder;

.field private 'mInTag' Z

.field private 'mOutputStream' Ljava/io/OutputStream;

.field private 'mPos' I

.field private final 'mText' [C

.field private 'mWriter' Ljava/io/Writer;

.method static <clinit>()V
bipush 64
anewarray java/lang/String
dup
iconst_0
aconst_null
aastore
dup
iconst_1
aconst_null
aastore
dup
iconst_2
aconst_null
aastore
dup
iconst_3
aconst_null
aastore
dup
iconst_4
aconst_null
aastore
dup
iconst_5
aconst_null
aastore
dup
bipush 6
aconst_null
aastore
dup
bipush 7
aconst_null
aastore
dup
bipush 8
aconst_null
aastore
dup
bipush 9
aconst_null
aastore
dup
bipush 10
aconst_null
aastore
dup
bipush 11
aconst_null
aastore
dup
bipush 12
aconst_null
aastore
dup
bipush 13
aconst_null
aastore
dup
bipush 14
aconst_null
aastore
dup
bipush 15
aconst_null
aastore
dup
bipush 16
aconst_null
aastore
dup
bipush 17
aconst_null
aastore
dup
bipush 18
aconst_null
aastore
dup
bipush 19
aconst_null
aastore
dup
bipush 20
aconst_null
aastore
dup
bipush 21
aconst_null
aastore
dup
bipush 22
aconst_null
aastore
dup
bipush 23
aconst_null
aastore
dup
bipush 24
aconst_null
aastore
dup
bipush 25
aconst_null
aastore
dup
bipush 26
aconst_null
aastore
dup
bipush 27
aconst_null
aastore
dup
bipush 28
aconst_null
aastore
dup
bipush 29
aconst_null
aastore
dup
bipush 30
aconst_null
aastore
dup
bipush 31
aconst_null
aastore
dup
bipush 32
aconst_null
aastore
dup
bipush 33
aconst_null
aastore
dup
bipush 34
ldc "&quot;"
aastore
dup
bipush 35
aconst_null
aastore
dup
bipush 36
aconst_null
aastore
dup
bipush 37
aconst_null
aastore
dup
bipush 38
ldc "&amp;"
aastore
dup
bipush 39
aconst_null
aastore
dup
bipush 40
aconst_null
aastore
dup
bipush 41
aconst_null
aastore
dup
bipush 42
aconst_null
aastore
dup
bipush 43
aconst_null
aastore
dup
bipush 44
aconst_null
aastore
dup
bipush 45
aconst_null
aastore
dup
bipush 46
aconst_null
aastore
dup
bipush 47
aconst_null
aastore
dup
bipush 48
aconst_null
aastore
dup
bipush 49
aconst_null
aastore
dup
bipush 50
aconst_null
aastore
dup
bipush 51
aconst_null
aastore
dup
bipush 52
aconst_null
aastore
dup
bipush 53
aconst_null
aastore
dup
bipush 54
aconst_null
aastore
dup
bipush 55
aconst_null
aastore
dup
bipush 56
aconst_null
aastore
dup
bipush 57
aconst_null
aastore
dup
bipush 58
aconst_null
aastore
dup
bipush 59
aconst_null
aastore
dup
bipush 60
ldc "&lt;"
aastore
dup
bipush 61
aconst_null
aastore
dup
bipush 62
ldc "&gt;"
aastore
dup
bipush 63
aconst_null
aastore
putstatic com/ta/utdid2/core/persistent/FastXmlSerializer/ESCAPE_TABLE [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
sipush 8192
newarray char
putfield com/ta/utdid2/core/persistent/FastXmlSerializer/mText [C
aload 0
sipush 8192
invokestatic java/nio/ByteBuffer/allocate(I)Ljava/nio/ByteBuffer;
putfield com/ta/utdid2/core/persistent/FastXmlSerializer/mBytes Ljava/nio/ByteBuffer;
return
.limit locals 1
.limit stack 2
.end method

.method private append(C)V
.throws java/io/IOException
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mPos I
istore 3
iload 3
istore 2
iload 3
sipush 8191
if_icmplt L0
aload 0
invokevirtual com/ta/utdid2/core/persistent/FastXmlSerializer/flush()V
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mPos I
istore 2
L0:
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mText [C
iload 2
iload 1
castore
aload 0
iload 2
iconst_1
iadd
putfield com/ta/utdid2/core/persistent/FastXmlSerializer/mPos I
return
.limit locals 4
.limit stack 3
.end method

.method private append(Ljava/lang/String;)V
.throws java/io/IOException
aload 0
aload 1
iconst_0
aload 1
invokevirtual java/lang/String/length()I
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;II)V
return
.limit locals 2
.limit stack 4
.end method

.method private append(Ljava/lang/String;II)V
.throws java/io/IOException
iload 3
sipush 8192
if_icmple L0
iload 2
iload 3
iadd
istore 5
L1:
iload 2
iload 5
if_icmpge L2
iload 2
sipush 8192
iadd
istore 4
iload 4
iload 5
if_icmpge L3
sipush 8192
istore 3
L4:
aload 0
aload 1
iload 2
iload 3
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;II)V
iload 4
istore 2
goto L1
L3:
iload 5
iload 2
isub
istore 3
goto L4
L0:
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mPos I
istore 5
iload 5
istore 4
iload 5
iload 3
iadd
sipush 8192
if_icmple L5
aload 0
invokevirtual com/ta/utdid2/core/persistent/FastXmlSerializer/flush()V
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mPos I
istore 4
L5:
aload 1
iload 2
iload 2
iload 3
iadd
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mText [C
iload 4
invokevirtual java/lang/String/getChars(II[CI)V
aload 0
iload 4
iload 3
iadd
putfield com/ta/utdid2/core/persistent/FastXmlSerializer/mPos I
L2:
return
.limit locals 6
.limit stack 5
.end method

.method private append([CII)V
.throws java/io/IOException
iload 3
sipush 8192
if_icmple L0
iload 2
iload 3
iadd
istore 5
L1:
iload 2
iload 5
if_icmpge L2
iload 2
sipush 8192
iadd
istore 4
iload 4
iload 5
if_icmpge L3
sipush 8192
istore 3
L4:
aload 0
aload 1
iload 2
iload 3
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append([CII)V
iload 4
istore 2
goto L1
L3:
iload 5
iload 2
isub
istore 3
goto L4
L0:
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mPos I
istore 5
iload 5
istore 4
iload 5
iload 3
iadd
sipush 8192
if_icmple L5
aload 0
invokevirtual com/ta/utdid2/core/persistent/FastXmlSerializer/flush()V
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mPos I
istore 4
L5:
aload 1
iload 2
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mText [C
iload 4
iload 3
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
iload 4
iload 3
iadd
putfield com/ta/utdid2/core/persistent/FastXmlSerializer/mPos I
L2:
return
.limit locals 6
.limit stack 5
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
.throws java/io/IOException
iconst_0
istore 3
aload 1
invokevirtual java/lang/String/length()I
istore 5
getstatic com/ta/utdid2/core/persistent/FastXmlSerializer/ESCAPE_TABLE [Ljava/lang/String;
arraylength
i2c
istore 6
getstatic com/ta/utdid2/core/persistent/FastXmlSerializer/ESCAPE_TABLE [Ljava/lang/String;
astore 8
iconst_0
istore 2
L0:
iload 2
iload 5
if_icmpge L1
aload 1
iload 2
invokevirtual java/lang/String/charAt(I)C
istore 7
iload 3
istore 4
iload 7
iload 6
if_icmpge L2
aload 8
iload 7
aaload
astore 9
iload 3
istore 4
aload 9
ifnull L2
iload 3
iload 2
if_icmpge L3
aload 0
aload 1
iload 3
iload 2
iload 3
isub
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;II)V
L3:
iload 2
iconst_1
iadd
istore 4
aload 0
aload 9
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
L2:
iload 2
iconst_1
iadd
istore 2
iload 4
istore 3
goto L0
L1:
iload 3
iload 2
if_icmpge L4
aload 0
aload 1
iload 3
iload 2
iload 3
isub
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;II)V
L4:
return
.limit locals 10
.limit stack 5
.end method

.method private escapeAndAppendString([CII)V
.throws java/io/IOException
getstatic com/ta/utdid2/core/persistent/FastXmlSerializer/ESCAPE_TABLE [Ljava/lang/String;
arraylength
i2c
istore 7
getstatic com/ta/utdid2/core/persistent/FastXmlSerializer/ESCAPE_TABLE [Ljava/lang/String;
astore 9
iload 2
istore 5
iload 2
istore 4
L0:
iload 4
istore 6
iload 6
iload 2
iload 3
iadd
if_icmpge L1
aload 1
iload 6
caload
istore 8
iload 5
istore 4
iload 8
iload 7
if_icmpge L2
aload 9
iload 8
aaload
astore 10
iload 5
istore 4
aload 10
ifnull L2
iload 5
iload 6
if_icmpge L3
aload 0
aload 1
iload 5
iload 6
iload 5
isub
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append([CII)V
L3:
iload 6
iconst_1
iadd
istore 4
aload 0
aload 10
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
L2:
iload 6
iconst_1
iadd
istore 6
iload 4
istore 5
iload 6
istore 4
goto L0
L1:
iload 5
iload 6
if_icmpge L4
aload 0
aload 1
iload 5
iload 6
iload 5
isub
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append([CII)V
L4:
return
.limit locals 11
.limit stack 5
.end method

.method private flushBytes()V
.throws java/io/IOException
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mBytes Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/position()I
istore 1
iload 1
ifle L0
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mBytes Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/flip()Ljava/nio/Buffer;
pop
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mOutputStream Ljava/io/OutputStream;
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mBytes Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/array()[B
iconst_0
iload 1
invokevirtual java/io/OutputStream/write([BII)V
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mBytes Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/clear()Ljava/nio/Buffer;
pop
L0:
return
.limit locals 2
.limit stack 4
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
aload 0
bipush 32
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(C)V
aload 1
ifnull L0
aload 0
aload 1
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
aload 0
bipush 58
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(C)V
L0:
aload 0
aload 2
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
aload 0
ldc "=\""
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
aload 0
aload 3
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/escapeAndAppendString(Ljava/lang/String;)V
aload 0
bipush 34
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(C)V
aload 0
areturn
.limit locals 4
.limit stack 2
.end method

.method public cdsect(Ljava/lang/String;)V
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public comment(Ljava/lang/String;)V
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public docdecl(Ljava/lang/String;)V
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public endDocument()V
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
aload 0
invokevirtual com/ta/utdid2/core/persistent/FastXmlSerializer/flush()V
return
.limit locals 1
.limit stack 1
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mInTag Z
ifeq L0
aload 0
ldc " />\n"
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
L1:
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/FastXmlSerializer/mInTag Z
aload 0
areturn
L0:
aload 0
ldc "</"
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
aload 1
ifnull L2
aload 0
aload 1
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
aload 0
bipush 58
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(C)V
L2:
aload 0
aload 2
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
aload 0
ldc ">\n"
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
goto L1
.limit locals 3
.limit stack 2
.end method

.method public entityRef(Ljava/lang/String;)V
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public flush()V
.throws java/io/IOException
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mPos I
ifle L0
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mOutputStream Ljava/io/OutputStream;
ifnull L1
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mText [C
iconst_0
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mPos I
invokestatic java/nio/CharBuffer/wrap([CII)Ljava/nio/CharBuffer;
astore 2
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mCharset Ljava/nio/charset/CharsetEncoder;
aload 2
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mBytes Ljava/nio/ByteBuffer;
iconst_1
invokevirtual java/nio/charset/CharsetEncoder/encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
astore 1
L2:
aload 1
invokevirtual java/nio/charset/CoderResult/isError()Z
ifeq L3
new java/io/IOException
dup
aload 1
invokevirtual java/nio/charset/CoderResult/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 1
invokevirtual java/nio/charset/CoderResult/isOverflow()Z
ifeq L4
aload 0
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/flushBytes()V
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mCharset Ljava/nio/charset/CharsetEncoder;
aload 2
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mBytes Ljava/nio/ByteBuffer;
iconst_1
invokevirtual java/nio/charset/CharsetEncoder/encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
astore 1
goto L2
L4:
aload 0
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/flushBytes()V
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mOutputStream Ljava/io/OutputStream;
invokevirtual java/io/OutputStream/flush()V
L5:
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/FastXmlSerializer/mPos I
L0:
return
L1:
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mWriter Ljava/io/Writer;
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mText [C
iconst_0
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mPos I
invokevirtual java/io/Writer/write([CII)V
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mWriter Ljava/io/Writer;
invokevirtual java/io/Writer/flush()V
goto L5
.limit locals 3
.limit stack 4
.end method

.method public getDepth()I
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getFeature(Ljava/lang/String;)Z
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public getName()Ljava/lang/String;
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getNamespace()Ljava/lang/String;
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 1
.limit stack 2
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
.throws java/lang/IllegalArgumentException
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 3
.limit stack 2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public processingInstruction(Ljava/lang/String;)V
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 2
.limit stack 2
.end method

.method public setFeature(Ljava/lang/String;Z)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
aload 1
ldc "http://xmlpull.org/v1/doc/features.html#indent-output"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
return
L0:
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 3
.limit stack 2
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
.catch java/nio/charset/IllegalCharsetNameException from L0 to L1 using L2
.catch java/nio/charset/UnsupportedCharsetException from L0 to L1 using L3
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
invokespecial java/lang/IllegalArgumentException/<init>()V
athrow
L0:
aload 0
aload 2
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
invokevirtual java/nio/charset/Charset/newEncoder()Ljava/nio/charset/CharsetEncoder;
putfield com/ta/utdid2/core/persistent/FastXmlSerializer/mCharset Ljava/nio/charset/CharsetEncoder;
L1:
aload 0
aload 1
putfield com/ta/utdid2/core/persistent/FastXmlSerializer/mOutputStream Ljava/io/OutputStream;
return
L2:
astore 1
new java/io/UnsupportedEncodingException
dup
aload 2
invokespecial java/io/UnsupportedEncodingException/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/io/UnsupportedEncodingException/initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
checkcast java/io/UnsupportedEncodingException
athrow
L3:
astore 1
new java/io/UnsupportedEncodingException
dup
aload 2
invokespecial java/io/UnsupportedEncodingException/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/io/UnsupportedEncodingException/initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
checkcast java/io/UnsupportedEncodingException
athrow
.limit locals 3
.limit stack 3
.end method

.method public setOutput(Ljava/io/Writer;)V
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
aload 0
aload 1
putfield com/ta/utdid2/core/persistent/FastXmlSerializer/mWriter Ljava/io/Writer;
return
.limit locals 2
.limit stack 2
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 3
.limit stack 2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
new java/lang/UnsupportedOperationException
dup
invokespecial java/lang/UnsupportedOperationException/<init>()V
athrow
.limit locals 3
.limit stack 2
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
new java/lang/StringBuilder
dup
ldc "<?xml version='1.0' encoding='utf-8' standalone='"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 3
aload 2
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
ldc "yes"
astore 1
L1:
aload 0
aload 3
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "' ?>\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
return
L0:
ldc "no"
astore 1
goto L1
.limit locals 4
.limit stack 3
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mInTag Z
ifeq L0
aload 0
ldc ">\n"
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
L0:
aload 0
bipush 60
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(C)V
aload 1
ifnull L1
aload 0
aload 1
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
aload 0
bipush 58
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(C)V
L1:
aload 0
aload 2
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
aload 0
iconst_1
putfield com/ta/utdid2/core/persistent/FastXmlSerializer/mInTag Z
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mInTag Z
ifeq L0
aload 0
ldc ">"
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/FastXmlSerializer/mInTag Z
L0:
aload 0
aload 1
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/escapeAndAppendString(Ljava/lang/String;)V
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
.throws java/io/IOException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalStateException
aload 0
getfield com/ta/utdid2/core/persistent/FastXmlSerializer/mInTag Z
ifeq L0
aload 0
ldc ">"
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/append(Ljava/lang/String;)V
aload 0
iconst_0
putfield com/ta/utdid2/core/persistent/FastXmlSerializer/mInTag Z
L0:
aload 0
aload 1
iload 2
iload 3
invokespecial com/ta/utdid2/core/persistent/FastXmlSerializer/escapeAndAppendString([CII)V
aload 0
areturn
.limit locals 4
.limit stack 4
.end method
