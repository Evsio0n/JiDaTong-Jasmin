.bytecode 50.0
.class public synchronized com/google/gson/stream/JsonReader
.super java/lang/Object
.implements java/io/Closeable
.inner class static final inner com/google/gson/stream/JsonReader$1

.field private static final 'MIN_INCOMPLETE_INTEGER' J = -922337203685477580L


.field private static final 'NON_EXECUTE_PREFIX' [C

.field private static final 'NUMBER_CHAR_DECIMAL' I = 3


.field private static final 'NUMBER_CHAR_DIGIT' I = 2


.field private static final 'NUMBER_CHAR_EXP_DIGIT' I = 7


.field private static final 'NUMBER_CHAR_EXP_E' I = 5


.field private static final 'NUMBER_CHAR_EXP_SIGN' I = 6


.field private static final 'NUMBER_CHAR_FRACTION_DIGIT' I = 4


.field private static final 'NUMBER_CHAR_NONE' I = 0


.field private static final 'NUMBER_CHAR_SIGN' I = 1


.field private static final 'PEEKED_BEGIN_ARRAY' I = 3


.field private static final 'PEEKED_BEGIN_OBJECT' I = 1


.field private static final 'PEEKED_BUFFERED' I = 11


.field private static final 'PEEKED_DOUBLE_QUOTED' I = 9


.field private static final 'PEEKED_DOUBLE_QUOTED_NAME' I = 13


.field private static final 'PEEKED_END_ARRAY' I = 4


.field private static final 'PEEKED_END_OBJECT' I = 2


.field private static final 'PEEKED_EOF' I = 17


.field private static final 'PEEKED_FALSE' I = 6


.field private static final 'PEEKED_LONG' I = 15


.field private static final 'PEEKED_NONE' I = 0


.field private static final 'PEEKED_NULL' I = 7


.field private static final 'PEEKED_NUMBER' I = 16


.field private static final 'PEEKED_SINGLE_QUOTED' I = 8


.field private static final 'PEEKED_SINGLE_QUOTED_NAME' I = 12


.field private static final 'PEEKED_TRUE' I = 5


.field private static final 'PEEKED_UNQUOTED' I = 10


.field private static final 'PEEKED_UNQUOTED_NAME' I = 14


.field private final 'buffer' [C

.field private final 'in' Ljava/io/Reader;

.field private 'lenient' Z

.field private 'limit' I

.field private 'lineNumber' I

.field private 'lineStart' I

.field private 'peeked' I

.field private 'peekedLong' J

.field private 'peekedNumberLength' I

.field private 'peekedString' Ljava/lang/String;

.field private 'pos' I

.field private 'stack' [I

.field private 'stackSize' I

.method static <clinit>()V
ldc ")]}'\n"
invokevirtual java/lang/String/toCharArray()[C
putstatic com/google/gson/stream/JsonReader/NON_EXECUTE_PREFIX [C
new com/google/gson/stream/JsonReader$1
dup
invokespecial com/google/gson/stream/JsonReader$1/<init>()V
putstatic com/google/gson/internal/JsonReaderInternalAccess/INSTANCE Lcom/google/gson/internal/JsonReaderInternalAccess;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Ljava/io/Reader;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/lenient Z
aload 0
sipush 1024
newarray char
putfield com/google/gson/stream/JsonReader/buffer [C
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/pos I
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/limit I
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/lineNumber I
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/lineStart I
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
aload 0
bipush 32
newarray int
putfield com/google/gson/stream/JsonReader/stack [I
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/stackSize I
aload 0
getfield com/google/gson/stream/JsonReader/stack [I
astore 3
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
istore 2
aload 0
iload 2
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/stackSize I
aload 3
iload 2
bipush 6
iastore
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "in == null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/google/gson/stream/JsonReader/in Ljava/io/Reader;
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$000(Lcom/google/gson/stream/JsonReader;)I
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/google/gson/stream/JsonReader;I)I
aload 0
iload 1
putfield com/google/gson/stream/JsonReader/peeked I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/google/gson/stream/JsonReader;)I
.throws java/io/IOException
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/google/gson/stream/JsonReader;)I
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/google/gson/stream/JsonReader;)I
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private checkLenient()V
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/lenient Z
ifne L0
aload 0
ldc "Use JsonReader.setLenient(true) to accept malformed JSON"
invokespecial com/google/gson/stream/JsonReader/syntaxError(Ljava/lang/String;)Ljava/io/IOException;
athrow
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private consumeNonExecutePrefix()V
.throws java/io/IOException
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/nextNonWhitespace(Z)I
pop
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_1
isub
putfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/pos I
getstatic com/google/gson/stream/JsonReader/NON_EXECUTE_PREFIX [C
arraylength
iadd
aload 0
getfield com/google/gson/stream/JsonReader/limit I
if_icmple L0
aload 0
getstatic com/google/gson/stream/JsonReader/NON_EXECUTE_PREFIX [C
arraylength
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifne L0
L1:
return
L0:
iconst_0
istore 1
L2:
iload 1
getstatic com/google/gson/stream/JsonReader/NON_EXECUTE_PREFIX [C
arraylength
if_icmpge L3
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 1
iadd
caload
getstatic com/google/gson/stream/JsonReader/NON_EXECUTE_PREFIX [C
iload 1
caload
if_icmpne L1
iload 1
iconst_1
iadd
istore 1
goto L2
L3:
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
getstatic com/google/gson/stream/JsonReader/NON_EXECUTE_PREFIX [C
arraylength
iadd
putfield com/google/gson/stream/JsonReader/pos I
return
.limit locals 2
.limit stack 3
.end method

.method private doPeek()I
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/stack [I
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
iconst_1
isub
iaload
istore 1
iload 1
iconst_1
if_icmpne L0
aload 0
getfield com/google/gson/stream/JsonReader/stack [I
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
iconst_1
isub
iconst_2
iastore
L1:
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/nextNonWhitespace(Z)I
lookupswitch
34 : L2
39 : L3
44 : L4
59 : L4
91 : L5
93 : L6
123 : L7
default : L8
L8:
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_1
isub
putfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
iconst_1
if_icmpne L9
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
L9:
aload 0
invokespecial com/google/gson/stream/JsonReader/peekKeyword()I
istore 1
iload 1
ifeq L10
L11:
iload 1
ireturn
L0:
iload 1
iconst_2
if_icmpne L12
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/nextNonWhitespace(Z)I
lookupswitch
44 : L1
59 : L13
93 : L14
default : L15
L15:
aload 0
ldc "Unterminated array"
invokespecial com/google/gson/stream/JsonReader/syntaxError(Ljava/lang/String;)Ljava/io/IOException;
athrow
L14:
aload 0
iconst_4
putfield com/google/gson/stream/JsonReader/peeked I
iconst_4
ireturn
L13:
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
goto L1
L12:
iload 1
iconst_3
if_icmpeq L16
iload 1
iconst_5
if_icmpne L17
L16:
aload 0
getfield com/google/gson/stream/JsonReader/stack [I
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
iconst_1
isub
iconst_4
iastore
iload 1
iconst_5
if_icmpne L18
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/nextNonWhitespace(Z)I
lookupswitch
44 : L18
59 : L19
125 : L20
default : L21
L21:
aload 0
ldc "Unterminated object"
invokespecial com/google/gson/stream/JsonReader/syntaxError(Ljava/lang/String;)Ljava/io/IOException;
athrow
L20:
aload 0
iconst_2
putfield com/google/gson/stream/JsonReader/peeked I
iconst_2
ireturn
L19:
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
L18:
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/nextNonWhitespace(Z)I
istore 2
iload 2
lookupswitch
34 : L22
39 : L23
125 : L24
default : L25
L25:
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_1
isub
putfield com/google/gson/stream/JsonReader/pos I
aload 0
iload 2
i2c
invokespecial com/google/gson/stream/JsonReader/isLiteral(C)Z
ifeq L26
aload 0
bipush 14
putfield com/google/gson/stream/JsonReader/peeked I
bipush 14
ireturn
L22:
aload 0
bipush 13
putfield com/google/gson/stream/JsonReader/peeked I
bipush 13
ireturn
L23:
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
aload 0
bipush 12
putfield com/google/gson/stream/JsonReader/peeked I
bipush 12
ireturn
L24:
iload 1
iconst_5
if_icmpeq L27
aload 0
iconst_2
putfield com/google/gson/stream/JsonReader/peeked I
iconst_2
ireturn
L27:
aload 0
ldc "Expected name"
invokespecial com/google/gson/stream/JsonReader/syntaxError(Ljava/lang/String;)Ljava/io/IOException;
athrow
L26:
aload 0
ldc "Expected name"
invokespecial com/google/gson/stream/JsonReader/syntaxError(Ljava/lang/String;)Ljava/io/IOException;
athrow
L17:
iload 1
iconst_4
if_icmpne L28
aload 0
getfield com/google/gson/stream/JsonReader/stack [I
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
iconst_1
isub
iconst_5
iastore
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/nextNonWhitespace(Z)I
tableswitch 58
L1
L29
L29
L30
default : L29
L29:
aload 0
ldc "Expected ':'"
invokespecial com/google/gson/stream/JsonReader/syntaxError(Ljava/lang/String;)Ljava/io/IOException;
athrow
L30:
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/limit I
if_icmplt L31
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifeq L1
L31:
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
caload
bipush 62
if_icmpne L1
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/pos I
goto L1
L28:
iload 1
bipush 6
if_icmpne L32
aload 0
getfield com/google/gson/stream/JsonReader/lenient Z
ifeq L33
aload 0
invokespecial com/google/gson/stream/JsonReader/consumeNonExecutePrefix()V
L33:
aload 0
getfield com/google/gson/stream/JsonReader/stack [I
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
iconst_1
isub
bipush 7
iastore
goto L1
L32:
iload 1
bipush 7
if_icmpne L34
aload 0
iconst_0
invokespecial com/google/gson/stream/JsonReader/nextNonWhitespace(Z)I
iconst_m1
if_icmpne L35
aload 0
bipush 17
putfield com/google/gson/stream/JsonReader/peeked I
bipush 17
ireturn
L35:
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_1
isub
putfield com/google/gson/stream/JsonReader/pos I
goto L1
L34:
iload 1
bipush 8
if_icmpne L1
new java/lang/IllegalStateException
dup
ldc "JsonReader is closed"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L6:
iload 1
iconst_1
if_icmpne L4
aload 0
iconst_4
putfield com/google/gson/stream/JsonReader/peeked I
iconst_4
ireturn
L4:
iload 1
iconst_1
if_icmpeq L36
iload 1
iconst_2
if_icmpne L37
L36:
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_1
isub
putfield com/google/gson/stream/JsonReader/pos I
aload 0
bipush 7
putfield com/google/gson/stream/JsonReader/peeked I
bipush 7
ireturn
L37:
aload 0
ldc "Unexpected value"
invokespecial com/google/gson/stream/JsonReader/syntaxError(Ljava/lang/String;)Ljava/io/IOException;
athrow
L3:
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
aload 0
bipush 8
putfield com/google/gson/stream/JsonReader/peeked I
bipush 8
ireturn
L2:
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
iconst_1
if_icmpne L38
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
L38:
aload 0
bipush 9
putfield com/google/gson/stream/JsonReader/peeked I
bipush 9
ireturn
L5:
aload 0
iconst_3
putfield com/google/gson/stream/JsonReader/peeked I
iconst_3
ireturn
L7:
aload 0
iconst_1
putfield com/google/gson/stream/JsonReader/peeked I
iconst_1
ireturn
L10:
aload 0
invokespecial com/google/gson/stream/JsonReader/peekNumber()I
istore 2
iload 2
istore 1
iload 2
ifne L11
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
caload
invokespecial com/google/gson/stream/JsonReader/isLiteral(C)Z
ifne L39
aload 0
ldc "Expected value"
invokespecial com/google/gson/stream/JsonReader/syntaxError(Ljava/lang/String;)Ljava/io/IOException;
athrow
L39:
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
aload 0
bipush 10
putfield com/google/gson/stream/JsonReader/peeked I
bipush 10
ireturn
.limit locals 3
.limit stack 3
.end method

.method private fillBuffer(I)Z
.throws java/io/IOException
iconst_0
istore 4
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
astore 5
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/lineStart I
aload 0
getfield com/google/gson/stream/JsonReader/pos I
isub
putfield com/google/gson/stream/JsonReader/lineStart I
aload 0
getfield com/google/gson/stream/JsonReader/limit I
aload 0
getfield com/google/gson/stream/JsonReader/pos I
if_icmpeq L0
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/limit I
aload 0
getfield com/google/gson/stream/JsonReader/pos I
isub
putfield com/google/gson/stream/JsonReader/limit I
aload 5
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 5
iconst_0
aload 0
getfield com/google/gson/stream/JsonReader/limit I
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
L1:
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/pos I
L2:
aload 0
getfield com/google/gson/stream/JsonReader/in Ljava/io/Reader;
aload 5
aload 0
getfield com/google/gson/stream/JsonReader/limit I
aload 5
arraylength
aload 0
getfield com/google/gson/stream/JsonReader/limit I
isub
invokevirtual java/io/Reader/read([CII)I
istore 2
iload 4
istore 3
iload 2
iconst_m1
if_icmpeq L3
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/limit I
iload 2
iadd
putfield com/google/gson/stream/JsonReader/limit I
iload 1
istore 2
aload 0
getfield com/google/gson/stream/JsonReader/lineNumber I
ifne L4
iload 1
istore 2
aload 0
getfield com/google/gson/stream/JsonReader/lineStart I
ifne L4
iload 1
istore 2
aload 0
getfield com/google/gson/stream/JsonReader/limit I
ifle L4
iload 1
istore 2
aload 5
iconst_0
caload
ldc_w 65279
if_icmpne L4
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/pos I
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/lineStart I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/lineStart I
iload 1
iconst_1
iadd
istore 2
L4:
iload 2
istore 1
aload 0
getfield com/google/gson/stream/JsonReader/limit I
iload 2
if_icmplt L2
iconst_1
istore 3
L3:
iload 3
ireturn
L0:
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/limit I
goto L1
.limit locals 6
.limit stack 5
.end method

.method private getColumnNumber()I
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/lineStart I
isub
iconst_1
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method private getLineNumber()I
aload 0
getfield com/google/gson/stream/JsonReader/lineNumber I
iconst_1
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method private isLiteral(C)Z
.throws java/io/IOException
iload 1
lookupswitch
9 : L0
10 : L0
12 : L0
13 : L0
32 : L0
35 : L1
44 : L0
47 : L1
58 : L0
59 : L1
61 : L1
91 : L0
92 : L1
93 : L0
123 : L0
125 : L0
default : L2
L2:
iconst_1
ireturn
L1:
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method private nextNonWhitespace(Z)I
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
astore 7
aload 0
getfield com/google/gson/stream/JsonReader/pos I
istore 2
aload 0
getfield com/google/gson/stream/JsonReader/limit I
istore 3
L0:
iload 3
istore 4
iload 2
istore 5
iload 2
iload 3
if_icmpne L1
aload 0
iload 2
putfield com/google/gson/stream/JsonReader/pos I
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifne L2
iload 1
ifeq L3
new java/io/EOFException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "End of input at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/EOFException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
getfield com/google/gson/stream/JsonReader/pos I
istore 5
aload 0
getfield com/google/gson/stream/JsonReader/limit I
istore 4
L1:
iload 5
iconst_1
iadd
istore 2
aload 7
iload 5
caload
istore 3
iload 3
bipush 10
if_icmpne L4
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/lineNumber I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/lineNumber I
aload 0
iload 2
putfield com/google/gson/stream/JsonReader/lineStart I
iload 4
istore 3
goto L0
L4:
iload 3
bipush 32
if_icmpeq L5
iload 3
bipush 13
if_icmpeq L5
iload 3
bipush 9
if_icmpne L6
iload 4
istore 3
goto L0
L6:
iload 3
bipush 47
if_icmpne L7
aload 0
iload 2
putfield com/google/gson/stream/JsonReader/pos I
iload 2
iload 4
if_icmpne L8
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_1
isub
putfield com/google/gson/stream/JsonReader/pos I
aload 0
iconst_2
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
istore 6
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/pos I
iload 6
ifne L8
iload 3
ireturn
L8:
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
aload 7
aload 0
getfield com/google/gson/stream/JsonReader/pos I
caload
lookupswitch
42 : L9
47 : L10
default : L11
L11:
iload 3
ireturn
L9:
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/pos I
aload 0
ldc "*/"
invokespecial com/google/gson/stream/JsonReader/skipTo(Ljava/lang/String;)Z
ifne L12
aload 0
ldc "Unterminated comment"
invokespecial com/google/gson/stream/JsonReader/syntaxError(Ljava/lang/String;)Ljava/io/IOException;
athrow
L12:
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_2
iadd
istore 2
aload 0
getfield com/google/gson/stream/JsonReader/limit I
istore 3
goto L0
L10:
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/pos I
aload 0
invokespecial com/google/gson/stream/JsonReader/skipToEndOfLine()V
aload 0
getfield com/google/gson/stream/JsonReader/pos I
istore 2
aload 0
getfield com/google/gson/stream/JsonReader/limit I
istore 3
goto L0
L7:
iload 3
bipush 35
if_icmpne L13
aload 0
iload 2
putfield com/google/gson/stream/JsonReader/pos I
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
aload 0
invokespecial com/google/gson/stream/JsonReader/skipToEndOfLine()V
aload 0
getfield com/google/gson/stream/JsonReader/pos I
istore 2
aload 0
getfield com/google/gson/stream/JsonReader/limit I
istore 3
goto L0
L13:
aload 0
iload 2
putfield com/google/gson/stream/JsonReader/pos I
iload 3
ireturn
L3:
iconst_m1
ireturn
L5:
iload 4
istore 3
goto L0
.limit locals 8
.limit stack 4
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
astore 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 10
L0:
aload 0
getfield com/google/gson/stream/JsonReader/pos I
istore 2
aload 0
getfield com/google/gson/stream/JsonReader/limit I
istore 5
iload 2
istore 4
L1:
iload 2
iload 5
if_icmpge L2
iload 2
iconst_1
iadd
istore 7
aload 9
iload 2
caload
istore 8
iload 8
iload 1
if_icmpne L3
aload 0
iload 7
putfield com/google/gson/stream/JsonReader/pos I
aload 10
aload 9
iload 4
iload 7
iload 4
isub
iconst_1
isub
invokevirtual java/lang/StringBuilder/append([CII)Ljava/lang/StringBuilder;
pop
aload 10
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L3:
iload 8
bipush 92
if_icmpne L4
aload 0
iload 7
putfield com/google/gson/stream/JsonReader/pos I
aload 10
aload 9
iload 4
iload 7
iload 4
isub
iconst_1
isub
invokevirtual java/lang/StringBuilder/append([CII)Ljava/lang/StringBuilder;
pop
aload 10
aload 0
invokespecial com/google/gson/stream/JsonReader/readEscapeCharacter()C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/google/gson/stream/JsonReader/pos I
istore 2
aload 0
getfield com/google/gson/stream/JsonReader/limit I
istore 6
iload 2
istore 3
L5:
iload 6
istore 5
iload 3
istore 4
goto L1
L4:
iload 5
istore 6
iload 7
istore 2
iload 4
istore 3
iload 8
bipush 10
if_icmpne L5
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/lineNumber I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/lineNumber I
aload 0
iload 7
putfield com/google/gson/stream/JsonReader/lineStart I
iload 5
istore 6
iload 7
istore 2
iload 4
istore 3
goto L5
L2:
aload 10
aload 9
iload 4
iload 2
iload 4
isub
invokevirtual java/lang/StringBuilder/append([CII)Ljava/lang/StringBuilder;
pop
aload 0
iload 2
putfield com/google/gson/stream/JsonReader/pos I
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifne L0
aload 0
ldc "Unterminated string"
invokespecial com/google/gson/stream/JsonReader/syntaxError(Ljava/lang/String;)Ljava/io/IOException;
athrow
.limit locals 11
.limit stack 5
.end method

.method private nextUnquotedValue()Ljava/lang/String;
.throws java/io/IOException
aconst_null
astore 3
iconst_0
istore 1
L0:
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 1
iadd
aload 0
getfield com/google/gson/stream/JsonReader/limit I
if_icmpge L1
aload 3
astore 4
iload 1
istore 2
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 1
iadd
caload
lookupswitch
9 : L2
10 : L2
12 : L2
13 : L2
32 : L2
35 : L3
44 : L2
47 : L3
58 : L2
59 : L3
61 : L3
91 : L2
92 : L3
93 : L2
123 : L2
125 : L2
default : L4
L4:
iload 1
iconst_1
iadd
istore 1
goto L0
L3:
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
iload 1
istore 2
aload 3
astore 4
L2:
aload 4
ifnonnull L5
new java/lang/String
dup
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 2
invokespecial java/lang/String/<init>([CII)V
astore 3
L6:
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 2
iadd
putfield com/google/gson/stream/JsonReader/pos I
aload 3
areturn
L1:
iload 1
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
arraylength
if_icmpge L7
aload 3
astore 4
iload 1
istore 2
aload 0
iload 1
iconst_1
iadd
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifeq L2
goto L0
L7:
aload 3
astore 4
aload 3
ifnonnull L8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
L8:
aload 4
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 1
invokevirtual java/lang/StringBuilder/append([CII)Ljava/lang/StringBuilder;
pop
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 1
iadd
putfield com/google/gson/stream/JsonReader/pos I
iconst_0
istore 2
iconst_0
istore 1
aload 4
astore 3
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifne L0
goto L2
L5:
aload 4
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 2
invokevirtual java/lang/StringBuilder/append([CII)Ljava/lang/StringBuilder;
pop
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
goto L6
.limit locals 5
.limit stack 5
.end method

.method private peekKeyword()I
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
caload
istore 1
iload 1
bipush 116
if_icmpeq L0
iload 1
bipush 84
if_icmpne L1
L0:
ldc "true"
astore 5
ldc "TRUE"
astore 6
iconst_5
istore 1
L2:
aload 5
invokevirtual java/lang/String/length()I
istore 3
iconst_1
istore 2
L3:
iload 2
iload 3
if_icmpge L4
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 2
iadd
aload 0
getfield com/google/gson/stream/JsonReader/limit I
if_icmplt L5
aload 0
iload 2
iconst_1
iadd
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifne L5
iconst_0
ireturn
L1:
iload 1
bipush 102
if_icmpeq L6
iload 1
bipush 70
if_icmpne L7
L6:
ldc "false"
astore 5
ldc "FALSE"
astore 6
bipush 6
istore 1
goto L2
L7:
iload 1
bipush 110
if_icmpeq L8
iload 1
bipush 78
if_icmpne L9
L8:
ldc "null"
astore 5
ldc "NULL"
astore 6
bipush 7
istore 1
goto L2
L9:
iconst_0
ireturn
L5:
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 2
iadd
caload
istore 4
iload 4
aload 5
iload 2
invokevirtual java/lang/String/charAt(I)C
if_icmpeq L10
iload 4
aload 6
iload 2
invokevirtual java/lang/String/charAt(I)C
if_icmpeq L10
iconst_0
ireturn
L10:
iload 2
iconst_1
iadd
istore 2
goto L3
L4:
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 3
iadd
aload 0
getfield com/google/gson/stream/JsonReader/limit I
if_icmplt L11
aload 0
iload 3
iconst_1
iadd
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifeq L12
L11:
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 3
iadd
caload
invokespecial com/google/gson/stream/JsonReader/isLiteral(C)Z
ifeq L12
iconst_0
ireturn
L12:
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 3
iadd
putfield com/google/gson/stream/JsonReader/pos I
aload 0
iload 1
putfield com/google/gson/stream/JsonReader/peeked I
iload 1
ireturn
.limit locals 7
.limit stack 4
.end method

.method private peekNumber()I
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
astore 15
aload 0
getfield com/google/gson/stream/JsonReader/pos I
istore 2
aload 0
getfield com/google/gson/stream/JsonReader/limit I
istore 9
lconst_0
lstore 11
iconst_0
istore 3
iconst_1
istore 5
iconst_0
istore 8
iconst_0
istore 4
L0:
iload 9
istore 7
iload 2
istore 6
iload 2
iload 4
iadd
iload 9
if_icmpne L1
iload 4
aload 15
arraylength
if_icmpne L2
iconst_0
ireturn
L2:
aload 0
iload 4
iconst_1
iadd
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifne L3
L4:
iload 8
iconst_2
if_icmpne L5
iload 5
ifeq L5
lload 11
ldc2_w -9223372036854775808L
lcmp
ifne L6
iload 3
ifeq L5
L6:
iload 3
ifeq L7
L8:
aload 0
lload 11
putfield com/google/gson/stream/JsonReader/peekedLong J
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 4
iadd
putfield com/google/gson/stream/JsonReader/pos I
aload 0
bipush 15
putfield com/google/gson/stream/JsonReader/peeked I
bipush 15
ireturn
L3:
aload 0
getfield com/google/gson/stream/JsonReader/pos I
istore 6
aload 0
getfield com/google/gson/stream/JsonReader/limit I
istore 7
L1:
aload 15
iload 6
iload 4
iadd
caload
istore 1
iload 1
lookupswitch
43 : L9
45 : L10
46 : L11
69 : L12
101 : L12
default : L13
L13:
iload 1
bipush 48
if_icmplt L14
iload 1
bipush 57
if_icmple L15
L14:
aload 0
iload 1
invokespecial com/google/gson/stream/JsonReader/isLiteral(C)Z
ifeq L4
iconst_0
ireturn
L10:
iload 8
ifne L16
iconst_1
istore 10
iconst_1
istore 2
lload 11
lstore 13
iload 5
istore 9
L17:
iload 4
iconst_1
iadd
istore 4
iload 9
istore 5
iload 7
istore 9
iload 2
istore 8
iload 10
istore 3
iload 6
istore 2
lload 13
lstore 11
goto L0
L16:
iload 8
iconst_5
if_icmpne L18
bipush 6
istore 2
iload 5
istore 9
iload 3
istore 10
lload 11
lstore 13
goto L17
L18:
iconst_0
ireturn
L9:
iload 8
iconst_5
if_icmpne L19
bipush 6
istore 2
iload 5
istore 9
iload 3
istore 10
lload 11
lstore 13
goto L17
L19:
iconst_0
ireturn
L12:
iload 8
iconst_2
if_icmpeq L20
iload 8
iconst_4
if_icmpne L21
L20:
iconst_5
istore 2
iload 5
istore 9
iload 3
istore 10
lload 11
lstore 13
goto L17
L21:
iconst_0
ireturn
L11:
iload 8
iconst_2
if_icmpne L22
iconst_3
istore 2
iload 5
istore 9
iload 3
istore 10
lload 11
lstore 13
goto L17
L22:
iconst_0
ireturn
L15:
iload 8
iconst_1
if_icmpeq L23
iload 8
ifne L24
L23:
iload 1
bipush 48
isub
ineg
i2l
lstore 13
iconst_2
istore 2
iload 5
istore 9
iload 3
istore 10
goto L17
L24:
iload 8
iconst_2
if_icmpne L25
lload 11
lconst_0
lcmp
ifne L26
iconst_0
ireturn
L26:
ldc2_w 10L
lload 11
lmul
iload 1
bipush 48
isub
i2l
lsub
lstore 13
lload 11
ldc2_w -922337203685477580L
lcmp
ifgt L27
lload 11
ldc2_w -922337203685477580L
lcmp
ifne L28
lload 13
lload 11
lcmp
ifge L28
L27:
iconst_1
istore 2
L29:
iload 5
iload 2
iand
istore 9
iload 8
istore 2
iload 3
istore 10
goto L17
L28:
iconst_0
istore 2
goto L29
L25:
iload 8
iconst_3
if_icmpne L30
iconst_4
istore 2
iload 5
istore 9
iload 3
istore 10
lload 11
lstore 13
goto L17
L30:
iload 8
iconst_5
if_icmpeq L31
iload 5
istore 9
iload 8
istore 2
iload 3
istore 10
lload 11
lstore 13
iload 8
bipush 6
if_icmpne L17
L31:
bipush 7
istore 2
iload 5
istore 9
iload 3
istore 10
lload 11
lstore 13
goto L17
L7:
lload 11
lneg
lstore 11
goto L8
L5:
iload 8
iconst_2
if_icmpeq L32
iload 8
iconst_4
if_icmpeq L32
iload 8
bipush 7
if_icmpne L33
L32:
aload 0
iload 4
putfield com/google/gson/stream/JsonReader/peekedNumberLength I
aload 0
bipush 16
putfield com/google/gson/stream/JsonReader/peeked I
bipush 16
ireturn
L33:
iconst_0
ireturn
.limit locals 16
.limit stack 4
.end method

.method private push(I)V
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
aload 0
getfield com/google/gson/stream/JsonReader/stack [I
arraylength
if_icmpne L0
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
iconst_2
imul
newarray int
astore 3
aload 0
getfield com/google/gson/stream/JsonReader/stack [I
iconst_0
aload 3
iconst_0
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 3
putfield com/google/gson/stream/JsonReader/stack [I
L0:
aload 0
getfield com/google/gson/stream/JsonReader/stack [I
astore 3
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
istore 2
aload 0
iload 2
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/stackSize I
aload 3
iload 2
iload 1
iastore
return
.limit locals 4
.limit stack 5
.end method

.method private readEscapeCharacter()C
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/limit I
if_icmpne L0
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifne L0
aload 0
ldc "Unterminated escape sequence"
invokespecial com/google/gson/stream/JsonReader/syntaxError(Ljava/lang/String;)Ljava/io/IOException;
athrow
L0:
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
astore 6
aload 0
getfield com/google/gson/stream/JsonReader/pos I
istore 2
aload 0
iload 2
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/pos I
aload 6
iload 2
caload
istore 1
iload 1
lookupswitch
10 : L1
98 : L2
102 : L3
110 : L4
114 : L5
116 : L6
117 : L7
default : L8
L8:
iload 1
ireturn
L7:
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_4
iadd
aload 0
getfield com/google/gson/stream/JsonReader/limit I
if_icmple L9
aload 0
iconst_4
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifne L9
aload 0
ldc "Unterminated escape sequence"
invokespecial com/google/gson/stream/JsonReader/syntaxError(Ljava/lang/String;)Ljava/io/IOException;
athrow
L9:
iconst_0
istore 1
aload 0
getfield com/google/gson/stream/JsonReader/pos I
istore 3
iload 3
istore 2
L10:
iload 2
iload 3
iconst_4
iadd
if_icmpge L11
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
iload 2
caload
istore 4
iload 1
iconst_4
ishl
i2c
istore 5
iload 4
bipush 48
if_icmplt L12
iload 4
bipush 57
if_icmpgt L12
iload 4
bipush 48
isub
iload 5
iadd
i2c
istore 1
L13:
iload 2
iconst_1
iadd
istore 2
goto L10
L12:
iload 4
bipush 97
if_icmplt L14
iload 4
bipush 102
if_icmpgt L14
iload 4
bipush 97
isub
bipush 10
iadd
iload 5
iadd
i2c
istore 1
goto L13
L14:
iload 4
bipush 65
if_icmplt L15
iload 4
bipush 70
if_icmpgt L15
iload 4
bipush 65
isub
bipush 10
iadd
iload 5
iadd
i2c
istore 1
goto L13
L15:
new java/lang/NumberFormatException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\\u"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new java/lang/String
dup
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_4
invokespecial java/lang/String/<init>([CII)V
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/NumberFormatException/<init>(Ljava/lang/String;)V
athrow
L11:
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_4
iadd
putfield com/google/gson/stream/JsonReader/pos I
iload 1
ireturn
L6:
bipush 9
ireturn
L2:
bipush 8
ireturn
L4:
bipush 10
ireturn
L5:
bipush 13
ireturn
L3:
bipush 12
ireturn
L1:
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/lineNumber I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/lineNumber I
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
putfield com/google/gson/stream/JsonReader/lineStart I
goto L8
.limit locals 7
.limit stack 8
.end method

.method private skipQuotedValue(C)V
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
astore 7
L0:
aload 0
getfield com/google/gson/stream/JsonReader/pos I
istore 2
aload 0
getfield com/google/gson/stream/JsonReader/limit I
istore 3
L1:
iload 2
iload 3
if_icmpge L2
iload 2
iconst_1
iadd
istore 5
aload 7
iload 2
caload
istore 6
iload 6
iload 1
if_icmpne L3
aload 0
iload 5
putfield com/google/gson/stream/JsonReader/pos I
return
L3:
iload 6
bipush 92
if_icmpne L4
aload 0
iload 5
putfield com/google/gson/stream/JsonReader/pos I
aload 0
invokespecial com/google/gson/stream/JsonReader/readEscapeCharacter()C
pop
aload 0
getfield com/google/gson/stream/JsonReader/pos I
istore 2
aload 0
getfield com/google/gson/stream/JsonReader/limit I
istore 4
L5:
iload 4
istore 3
goto L1
L4:
iload 3
istore 4
iload 5
istore 2
iload 6
bipush 10
if_icmpne L5
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/lineNumber I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/lineNumber I
aload 0
iload 5
putfield com/google/gson/stream/JsonReader/lineStart I
iload 3
istore 4
iload 5
istore 2
goto L5
L2:
aload 0
iload 2
putfield com/google/gson/stream/JsonReader/pos I
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifne L0
aload 0
ldc "Unterminated string"
invokespecial com/google/gson/stream/JsonReader/syntaxError(Ljava/lang/String;)Ljava/io/IOException;
athrow
.limit locals 8
.limit stack 3
.end method

.method private skipTo(Ljava/lang/String;)Z
.throws java/io/IOException
L0:
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 1
invokevirtual java/lang/String/length()I
iadd
aload 0
getfield com/google/gson/stream/JsonReader/limit I
if_icmple L1
aload 0
aload 1
invokevirtual java/lang/String/length()I
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifeq L2
L1:
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
caload
bipush 10
if_icmpne L3
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/lineNumber I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/lineNumber I
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/lineStart I
L4:
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/pos I
goto L0
L3:
iconst_0
istore 2
L5:
iload 2
aload 1
invokevirtual java/lang/String/length()I
if_icmpge L6
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 2
iadd
caload
aload 1
iload 2
invokevirtual java/lang/String/charAt(I)C
if_icmpne L4
iload 2
iconst_1
iadd
istore 2
goto L5
L6:
iconst_1
ireturn
L2:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method private skipToEndOfLine()V
.throws java/io/IOException
L0:
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/limit I
if_icmplt L1
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifeq L2
L1:
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
astore 2
aload 0
getfield com/google/gson/stream/JsonReader/pos I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/pos I
aload 2
iload 1
caload
istore 1
iload 1
bipush 10
if_icmpne L3
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/lineNumber I
iconst_1
iadd
putfield com/google/gson/stream/JsonReader/lineNumber I
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
putfield com/google/gson/stream/JsonReader/lineStart I
L2:
return
L3:
iload 1
bipush 13
if_icmpne L0
return
.limit locals 3
.limit stack 3
.end method

.method private skipUnquotedValue()V
.throws java/io/IOException
L0:
iconst_0
istore 1
L1:
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 1
iadd
aload 0
getfield com/google/gson/stream/JsonReader/limit I
if_icmpge L2
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 1
iadd
caload
lookupswitch
9 : L3
10 : L3
12 : L3
13 : L3
32 : L3
35 : L4
44 : L3
47 : L4
58 : L3
59 : L4
61 : L4
91 : L3
92 : L4
93 : L3
123 : L3
125 : L3
default : L5
L5:
iload 1
iconst_1
iadd
istore 1
goto L1
L4:
aload 0
invokespecial com/google/gson/stream/JsonReader/checkLenient()V
L3:
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 1
iadd
putfield com/google/gson/stream/JsonReader/pos I
return
L2:
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
iload 1
iadd
putfield com/google/gson/stream/JsonReader/pos I
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/fillBuffer(I)Z
ifne L0
return
.limit locals 2
.limit stack 3
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
.throws java/io/IOException
new com/google/gson/stream/MalformedJsonException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/google/gson/stream/MalformedJsonException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method public beginArray()V
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 2
iload 2
istore 1
iload 2
ifne L0
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 1
L0:
iload 1
iconst_3
if_icmpne L1
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/push(I)V
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
return
L1:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected BEGIN_ARRAY but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public beginObject()V
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 2
iload 2
istore 1
iload 2
ifne L0
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 1
L0:
iload 1
iconst_1
if_icmpne L1
aload 0
iconst_3
invokespecial com/google/gson/stream/JsonReader/push(I)V
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
return
L1:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected BEGIN_OBJECT but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public close()V
.throws java/io/IOException
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
aload 0
getfield com/google/gson/stream/JsonReader/stack [I
iconst_0
bipush 8
iastore
aload 0
iconst_1
putfield com/google/gson/stream/JsonReader/stackSize I
aload 0
getfield com/google/gson/stream/JsonReader/in Ljava/io/Reader;
invokevirtual java/io/Reader/close()V
return
.limit locals 1
.limit stack 3
.end method

.method public endArray()V
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 2
iload 2
istore 1
iload 2
ifne L0
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 1
L0:
iload 1
iconst_4
if_icmpne L1
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
iconst_1
isub
putfield com/google/gson/stream/JsonReader/stackSize I
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
return
L1:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected END_ARRAY but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public endObject()V
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 2
iload 2
istore 1
iload 2
ifne L0
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 1
L0:
iload 1
iconst_2
if_icmpne L1
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
iconst_1
isub
putfield com/google/gson/stream/JsonReader/stackSize I
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
return
L1:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected END_OBJECT but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public hasNext()Z
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 2
iload 2
istore 1
iload 2
ifne L0
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 1
L0:
iload 1
iconst_2
if_icmpeq L1
iload 1
iconst_4
if_icmpeq L1
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public final isLenient()Z
aload 0
getfield com/google/gson/stream/JsonReader/lenient Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public nextBoolean()Z
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 2
iload 2
istore 1
iload 2
ifne L0
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 1
L0:
iload 1
iconst_5
if_icmpne L1
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
iconst_1
ireturn
L1:
iload 1
bipush 6
if_icmpne L2
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
iconst_0
ireturn
L2:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected a boolean but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public nextDouble()D
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 5
iload 5
istore 4
iload 5
ifne L0
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 4
L0:
iload 4
bipush 15
if_icmpne L1
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
aload 0
getfield com/google/gson/stream/JsonReader/peekedLong J
l2d
dreturn
L1:
iload 4
bipush 16
if_icmpne L2
aload 0
new java/lang/String
dup
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/peekedNumberLength I
invokespecial java/lang/String/<init>([CII)V
putfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/peekedNumberLength I
iadd
putfield com/google/gson/stream/JsonReader/pos I
L3:
aload 0
bipush 11
putfield com/google/gson/stream/JsonReader/peeked I
aload 0
getfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dstore 2
aload 0
getfield com/google/gson/stream/JsonReader/lenient Z
ifne L4
dload 2
invokestatic java/lang/Double/isNaN(D)Z
ifne L5
dload 2
invokestatic java/lang/Double/isInfinite(D)Z
ifeq L4
L5:
new com/google/gson/stream/MalformedJsonException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "JSON forbids NaN and infinities: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
dload 2
invokevirtual java/lang/StringBuilder/append(D)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/google/gson/stream/MalformedJsonException/<init>(Ljava/lang/String;)V
athrow
L2:
iload 4
bipush 8
if_icmpeq L6
iload 4
bipush 9
if_icmpne L7
L6:
iload 4
bipush 8
if_icmpne L8
bipush 39
istore 1
L9:
aload 0
aload 0
iload 1
invokespecial com/google/gson/stream/JsonReader/nextQuotedValue(C)Ljava/lang/String;
putfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
goto L3
L8:
bipush 34
istore 1
goto L9
L7:
iload 4
bipush 10
if_icmpne L10
aload 0
aload 0
invokespecial com/google/gson/stream/JsonReader/nextUnquotedValue()Ljava/lang/String;
putfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
goto L3
L10:
iload 4
bipush 11
if_icmpeq L3
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected a double but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 0
aconst_null
putfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
dload 2
dreturn
.limit locals 6
.limit stack 6
.end method

.method public nextInt()I
.throws java/io/IOException
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 5
iload 5
istore 4
iload 5
ifne L3
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 4
L3:
iload 4
bipush 15
if_icmpne L4
aload 0
getfield com/google/gson/stream/JsonReader/peekedLong J
l2i
istore 4
aload 0
getfield com/google/gson/stream/JsonReader/peekedLong J
iload 4
i2l
lcmp
ifeq L5
new java/lang/NumberFormatException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected an int but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/stream/JsonReader/peekedLong J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/NumberFormatException/<init>(Ljava/lang/String;)V
athrow
L5:
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
iload 4
ireturn
L4:
iload 4
bipush 16
if_icmpne L6
aload 0
new java/lang/String
dup
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/peekedNumberLength I
invokespecial java/lang/String/<init>([CII)V
putfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/peekedNumberLength I
iadd
putfield com/google/gson/stream/JsonReader/pos I
L7:
aload 0
bipush 11
putfield com/google/gson/stream/JsonReader/peeked I
aload 0
getfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dstore 2
dload 2
d2i
istore 4
iload 4
i2d
dload 2
dcmpl
ifeq L8
new java/lang/NumberFormatException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected an int but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/NumberFormatException/<init>(Ljava/lang/String;)V
athrow
L6:
iload 4
bipush 8
if_icmpeq L9
iload 4
bipush 9
if_icmpne L10
L9:
iload 4
bipush 8
if_icmpne L11
bipush 39
istore 1
L12:
aload 0
aload 0
iload 1
invokespecial com/google/gson/stream/JsonReader/nextQuotedValue(C)Ljava/lang/String;
putfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
L0:
aload 0
getfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 4
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
L1:
iload 4
ireturn
L11:
bipush 34
istore 1
goto L12
L10:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected an int but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L8:
aload 0
aconst_null
putfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
iload 4
ireturn
L2:
astore 6
goto L7
.limit locals 7
.limit stack 6
.end method

.method public nextLong()J
.throws java/io/IOException
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 5
iload 5
istore 4
iload 5
ifne L3
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 4
L3:
iload 4
bipush 15
if_icmpne L4
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
aload 0
getfield com/google/gson/stream/JsonReader/peekedLong J
lreturn
L4:
iload 4
bipush 16
if_icmpne L5
aload 0
new java/lang/String
dup
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/peekedNumberLength I
invokespecial java/lang/String/<init>([CII)V
putfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/peekedNumberLength I
iadd
putfield com/google/gson/stream/JsonReader/pos I
L6:
aload 0
bipush 11
putfield com/google/gson/stream/JsonReader/peeked I
aload 0
getfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
dstore 2
dload 2
d2l
lstore 6
lload 6
l2d
dload 2
dcmpl
ifeq L7
new java/lang/NumberFormatException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected a long but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/NumberFormatException/<init>(Ljava/lang/String;)V
athrow
L5:
iload 4
bipush 8
if_icmpeq L8
iload 4
bipush 9
if_icmpne L9
L8:
iload 4
bipush 8
if_icmpne L10
bipush 39
istore 1
L11:
aload 0
aload 0
iload 1
invokespecial com/google/gson/stream/JsonReader/nextQuotedValue(C)Ljava/lang/String;
putfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
L0:
aload 0
getfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 6
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
L1:
lload 6
lreturn
L2:
astore 8
goto L6
L10:
bipush 34
istore 1
goto L11
L9:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected a long but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L7:
aload 0
aconst_null
putfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
lload 6
lreturn
.limit locals 9
.limit stack 6
.end method

.method public nextName()Ljava/lang/String;
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 2
iload 2
istore 1
iload 2
ifne L0
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 1
L0:
iload 1
bipush 14
if_icmpne L1
aload 0
invokespecial com/google/gson/stream/JsonReader/nextUnquotedValue()Ljava/lang/String;
astore 3
L2:
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
aload 3
areturn
L1:
iload 1
bipush 12
if_icmpne L3
aload 0
bipush 39
invokespecial com/google/gson/stream/JsonReader/nextQuotedValue(C)Ljava/lang/String;
astore 3
goto L2
L3:
iload 1
bipush 13
if_icmpne L4
aload 0
bipush 34
invokespecial com/google/gson/stream/JsonReader/nextQuotedValue(C)Ljava/lang/String;
astore 3
goto L2
L4:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected a name but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 4
.end method

.method public nextNull()V
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 2
iload 2
istore 1
iload 2
ifne L0
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 1
L0:
iload 1
bipush 7
if_icmpne L1
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
return
L1:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected null but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 4
.end method

.method public nextString()Ljava/lang/String;
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 2
iload 2
istore 1
iload 2
ifne L0
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 1
L0:
iload 1
bipush 10
if_icmpne L1
aload 0
invokespecial com/google/gson/stream/JsonReader/nextUnquotedValue()Ljava/lang/String;
astore 3
L2:
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
aload 3
areturn
L1:
iload 1
bipush 8
if_icmpne L3
aload 0
bipush 39
invokespecial com/google/gson/stream/JsonReader/nextQuotedValue(C)Ljava/lang/String;
astore 3
goto L2
L3:
iload 1
bipush 9
if_icmpne L4
aload 0
bipush 34
invokespecial com/google/gson/stream/JsonReader/nextQuotedValue(C)Ljava/lang/String;
astore 3
goto L2
L4:
iload 1
bipush 11
if_icmpne L5
aload 0
getfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
astore 3
aload 0
aconst_null
putfield com/google/gson/stream/JsonReader/peekedString Ljava/lang/String;
goto L2
L5:
iload 1
bipush 15
if_icmpne L6
aload 0
getfield com/google/gson/stream/JsonReader/peekedLong J
invokestatic java/lang/Long/toString(J)Ljava/lang/String;
astore 3
goto L2
L6:
iload 1
bipush 16
if_icmpne L7
new java/lang/String
dup
aload 0
getfield com/google/gson/stream/JsonReader/buffer [C
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/peekedNumberLength I
invokespecial java/lang/String/<init>([CII)V
astore 3
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/peekedNumberLength I
iadd
putfield com/google/gson/stream/JsonReader/pos I
goto L2
L7:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected a string but was "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual com/google/gson/stream/JsonReader/peek()Lcom/google/gson/stream/JsonToken;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 5
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
.throws java/io/IOException
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 2
iload 2
istore 1
iload 2
ifne L0
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 1
L0:
iload 1
tableswitch 1
L1
L2
L3
L4
L5
L5
L6
L7
L7
L7
L7
L8
L8
L8
L9
L9
L10
default : L11
L11:
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L1:
getstatic com/google/gson/stream/JsonToken/BEGIN_OBJECT Lcom/google/gson/stream/JsonToken;
areturn
L2:
getstatic com/google/gson/stream/JsonToken/END_OBJECT Lcom/google/gson/stream/JsonToken;
areturn
L3:
getstatic com/google/gson/stream/JsonToken/BEGIN_ARRAY Lcom/google/gson/stream/JsonToken;
areturn
L4:
getstatic com/google/gson/stream/JsonToken/END_ARRAY Lcom/google/gson/stream/JsonToken;
areturn
L8:
getstatic com/google/gson/stream/JsonToken/NAME Lcom/google/gson/stream/JsonToken;
areturn
L5:
getstatic com/google/gson/stream/JsonToken/BOOLEAN Lcom/google/gson/stream/JsonToken;
areturn
L6:
getstatic com/google/gson/stream/JsonToken/NULL Lcom/google/gson/stream/JsonToken;
areturn
L7:
getstatic com/google/gson/stream/JsonToken/STRING Lcom/google/gson/stream/JsonToken;
areturn
L9:
getstatic com/google/gson/stream/JsonToken/NUMBER Lcom/google/gson/stream/JsonToken;
areturn
L10:
getstatic com/google/gson/stream/JsonToken/END_DOCUMENT Lcom/google/gson/stream/JsonToken;
areturn
.limit locals 3
.limit stack 2
.end method

.method public final setLenient(Z)V
aload 0
iload 1
putfield com/google/gson/stream/JsonReader/lenient Z
return
.limit locals 2
.limit stack 2
.end method

.method public skipValue()V
.throws java/io/IOException
iconst_0
istore 2
L0:
aload 0
getfield com/google/gson/stream/JsonReader/peeked I
istore 1
iload 1
istore 3
iload 1
ifne L1
aload 0
invokespecial com/google/gson/stream/JsonReader/doPeek()I
istore 3
L1:
iload 3
iconst_3
if_icmpne L2
aload 0
iconst_1
invokespecial com/google/gson/stream/JsonReader/push(I)V
iload 2
iconst_1
iadd
istore 1
L3:
aload 0
iconst_0
putfield com/google/gson/stream/JsonReader/peeked I
iload 1
istore 2
iload 1
ifne L0
return
L2:
iload 3
iconst_1
if_icmpne L4
aload 0
iconst_3
invokespecial com/google/gson/stream/JsonReader/push(I)V
iload 2
iconst_1
iadd
istore 1
goto L3
L4:
iload 3
iconst_4
if_icmpne L5
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
iconst_1
isub
putfield com/google/gson/stream/JsonReader/stackSize I
iload 2
iconst_1
isub
istore 1
goto L3
L5:
iload 3
iconst_2
if_icmpne L6
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/stackSize I
iconst_1
isub
putfield com/google/gson/stream/JsonReader/stackSize I
iload 2
iconst_1
isub
istore 1
goto L3
L6:
iload 3
bipush 14
if_icmpeq L7
iload 3
bipush 10
if_icmpne L8
L7:
aload 0
invokespecial com/google/gson/stream/JsonReader/skipUnquotedValue()V
iload 2
istore 1
goto L3
L8:
iload 3
bipush 8
if_icmpeq L9
iload 3
bipush 12
if_icmpne L10
L9:
aload 0
bipush 39
invokespecial com/google/gson/stream/JsonReader/skipQuotedValue(C)V
iload 2
istore 1
goto L3
L10:
iload 3
bipush 9
if_icmpeq L11
iload 3
bipush 13
if_icmpne L12
L11:
aload 0
bipush 34
invokespecial com/google/gson/stream/JsonReader/skipQuotedValue(C)V
iload 2
istore 1
goto L3
L12:
iload 2
istore 1
iload 3
bipush 16
if_icmpne L3
aload 0
aload 0
getfield com/google/gson/stream/JsonReader/pos I
aload 0
getfield com/google/gson/stream/JsonReader/peekedNumberLength I
iadd
putfield com/google/gson/stream/JsonReader/pos I
iload 2
istore 1
goto L3
.limit locals 4
.limit stack 3
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " at line "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getLineNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " column "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokespecial com/google/gson/stream/JsonReader/getColumnNumber()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
